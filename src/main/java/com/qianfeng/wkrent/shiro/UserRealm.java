package com.qianfeng.wkrent.shiro;

import com.qianfeng.wkrent.cache.IRedisCache;
import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.service.IUserService;
import com.qianfeng.wkrent.utils.CodeGenerateUtil;
import com.qianfeng.wkrent.utils.MessageUtil;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRealm extends AuthorizingRealm {
    @Autowired
    private IUserService userService;
    @Autowired
    private IRedisCache redisCache;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
        return null;
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
        String code = redisCache.getValueByKey("code");
        // 从token中获取用户输入的验证码
        String vcode = token.getCredentials().toString();
        if(!code.equals(vcode)){
            throw new IncorrectCredentialsException("验证码错误");
        }
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(telephone, code, getName());
        return authenticationInfo;
    }
}