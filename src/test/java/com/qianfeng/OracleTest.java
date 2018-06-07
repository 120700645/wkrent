package com.qianfeng;

import com.qianfeng.wkrent.dao.RoleMapper;
import com.qianfeng.wkrent.dto.Role;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class OracleTest {

    @Autowired
    private RoleMapper roleMapper;

    @Test
    public void testCase(){
        Role role = roleMapper.selectByPrimaryKey(1);
        System.out.println(role.getRoleId()+role.getRoleName());
    }
}
