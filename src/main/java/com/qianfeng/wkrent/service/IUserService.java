package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.User;
import org.apache.shiro.authc.AuthenticationException;

public interface IUserService {
    User selectByTel(String tel);

    User selectById(Integer userId);

    void insertUser(User user);

    /**
     * 登陆
     * @param tel 用户在页面输入的电话号码
     * @throws AuthenticationException
     */
    void login(String tel,String code) throws AuthenticationException;
}
