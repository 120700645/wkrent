package com.qianfeng;

import com.qianfeng.wkrent.cache.IRedisCache;
import com.qianfeng.wkrent.cache.impl.RedisCache;
import com.qianfeng.wkrent.dao.RoleMapper;
import com.qianfeng.wkrent.dto.Role;
import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.service.IUserService;
import com.qianfeng.wkrent.utils.MessageUtil;
import com.qianfeng.wkrent.utils.ParamUtil;
import org.apache.ibatis.annotations.Param;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import sun.java2d.pipe.SpanIterator;

import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class OracleTest {

    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private IUserService userService;
    @Autowired
    private StringRedisTemplate template;
    @Autowired
    private IRedisCache redisCache;

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

    @Test
    public void testCase4(){
        String name = template.boundValueOps("name").get();
        System.out.println(name);
    }

    @Test
    public void testCase5(){
//        Integer append = template.boundValueOps("name").append("zhangsan");
        /*Integer integer = new RedisCache().setValueByKey("name", "zhangsan");*/
//        template.boundValueOps("name").set("lisi");
//        System.out.println(append);
        redisCache.setValueByKey("name","zhangsan",5);
    }

    @Test
    public void testCase6(){
        Pattern pattern = Pattern.compile(ParamUtil.TEL_FORMAT);
        Matcher matcher = pattern.matcher("18162327456");
        System.out.println(matcher.matches());
        System.out.println("18162327456".matches(ParamUtil.TEL_FORMAT));
    }
}
