package com.qianfeng.wkrent.shiro;

import com.qianfeng.wkrent.cache.IRedisCache;
import com.qianfeng.wkrent.dao.UserMapper;
import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.service.IUserService;
import com.qianfeng.wkrent.utils.CodeGenerateUtil;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;

public class UserRealm extends AuthorizingRealm {
    @Autowired
    private IUserService userService;
    @Autowired
    private IRedisCache redisCache;

    @Autowired
    private UserMapper userDao;

    /**
     * 获取授权信息（获取权限和角色信息）
     * @param principal
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
        //查询角色信息
        String pri = principal.getPrimaryPrincipal().toString();

        List<String> roleList = userDao.selectRoles(pri);
        HashSet<String> roles = new HashSet<>(roleList);
        //将查询到角色信息封装到SimpleAuthorizationInfo对象中
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(roles);
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String telephone = (String) token.getPrincipal();
        User user = userService.selectByTel(telephone);
        if(user == null){
            // 如果数据库没有这个用户,则向数据库中插入用户记录
            User user1 = new User();
            user1.setUserTel(telephone);
            // 随机生成id
            int id = Integer.parseInt(CodeGenerateUtil.getCode(8));
            // 循环确保user表中没有以该id为之间的记录
            while(userService.selectById(id)!=null){
                id = Integer.parseInt(CodeGenerateUtil.getCode(8));
            }
            user1.setUserId(id);
            userService.insertUser(user1);
        }
        // 从缓存中获取生成的短信验证码
        String code = redisCache.getValueByKey("code-" + telephone);
        // 从token中获取用户输入的验证码
        String vcode = token.getCredentials().toString();
        if(!code.equals(vcode)){
            throw new IncorrectCredentialsException("验证码错误");
        }
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(telephone, code, getName());
        return authenticationInfo;
    }
}
