package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.UserMapper;
import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Random;

@Service
public class UserService implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User login(String phone) {
        Random random = new Random();
        User user = userMapper.selectByTel(phone);
        if(user == null){
            User user1 = new User();
            user1.setUserId(random.nextInt(10000000));
            user1.setUserTel(phone);
            int i = userMapper.insertSelective(user1);
        }
        return userMapper.selectByTel(phone);
    }
}
