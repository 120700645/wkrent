package com.qianfeng;

import com.qianfeng.wkrent.cache.IRedisCache;
import com.qianfeng.wkrent.cache.impl.RedisCache;
import com.qianfeng.wkrent.dao.AreaMapper;
import com.qianfeng.wkrent.dao.CarMapper;
import com.qianfeng.wkrent.dao.PlaceMapper;
import com.qianfeng.wkrent.dao.RoleMapper;
import com.qianfeng.wkrent.dto.*;
import com.qianfeng.wkrent.service.IAreaService;
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

import java.util.List;
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
    @Autowired
    private IAreaService areaService;
    @Autowired
    private PlaceMapper placeMapper;
    @Autowired
    private AreaMapper areaMapper;
    @Autowired
    private CarMapper carMapper;

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

    @Test
    public void testCase7(){
        List<Area> areas = areaService.selectByCity(1);
        for (Area area : areas) {
            System.out.println(area.getAreaName());
        }
    }

    @Test
    public void testCase8(){
        List<Place> places = placeMapper.selectByArea("机场/火车站/汽车站");
        for (Place place : places) {
            System.out.println(place.getPlaceName());
        }
    }

    @Test
    public void testCase9(){
        List<Area> areas = areaMapper.selectByCityName("北京");
        for (Area area : areas) {
            System.out.println(area.getAreaName());
        }
    }

    @Test
    public void testCase10(){
        List<Area> areas = areaService.selectByCityName("北京");
        for (Area area : areas) {
            System.out.println(area.getAreaName());
        }
    }

    @Test
    public void testCase11(){
        List<Car> cars = carMapper.selectByCityName("北京");
        for (Car car : cars) {
            System.out.println(car.getCarName());
        }
    }

    @Test
    public void testCase12(){
        Car car = carMapper.selectByPrimaryKey(1);
        System.out.println(car.getCarName());
        String name = carMapper.selectCarNameById(1);
        System.out.println(name);
    }
}
