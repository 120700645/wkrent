package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.UserMapper;
import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.service.IUserService;
import com.qianfeng.wkrent.shiro.TelephoneToken;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Random;

@Service
public class UserService implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User selectByTel(String tel) {
        return userMapper.selectByTel(tel);
    }

    @Override
    public User selectById(Integer userId) {
        return userMapper.selectByPrimaryKey(userId);
    }

    @Override
    @Transactional
    public void insertUser(User user) {
        User user1 = userMapper.selectByTel(user.getUserTel());
        if(user1 == null){
            // 使用动态SQL插入数据
            userMapper.insertSelective(user);
        }
    }

    @Override
    public void login(String tel,String code) throws AuthenticationException {
        // 获取subject
        Subject subject = SecurityUtils.getSubject();
        // 构造TelephoneToken对象
        TelephoneToken token = new TelephoneToken(tel,code);
        // 设置记住用户
        token.setRememberMe(true);
        // 登陆
        subject.login(token);
    }

    @Override
    public PageBean<User> findAllUserByPage(int page) {


        return null;
    }
}
