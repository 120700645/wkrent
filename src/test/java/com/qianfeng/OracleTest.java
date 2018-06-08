package com.qianfeng;

import com.qianfeng.wkrent.dao.RoleMapper;
import com.qianfeng.wkrent.dto.Role;
import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.service.IUserService;
import com.qianfeng.wkrent.utils.MessageUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Random;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class OracleTest {

    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private IUserService userService;

    @Test
    public void testCase(){
        Role role = roleMapper.selectByPrimaryKey(1);
        System.out.println(role.getRoleId()+role.getRoleName());
    }

    @Test
    public void testCase2(){
        Random random = new Random();
        StringBuilder str = new StringBuilder();
        for (int i = 0; i < 8; i++) {
             str.append(random.nextInt(10));
        }
        System.out.println(str);
        String code = str.toString();
        String phone = "18802770133";
        String skin = "612";
        MessageUtil.sendMessage(code,phone,skin);
    }

    @Test
    public void testCase3(){
        Random random = new Random();
        StringBuilder str = new StringBuilder();
        for (int i = 0; i < 4; i++) {
             str.append(random.nextInt(10));
        }
        System.out.println(str);
        String code = str.toString();
        String phone = "18802770133";
        String skin = "3";
        MessageUtil.sendMessage(code,phone,skin);
    }
}
