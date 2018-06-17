package com.qianfeng;

import com.qianfeng.wkrent.dao.CarMapper;
import com.qianfeng.wkrent.dao.RentOrderMapper;
import com.qianfeng.wkrent.dto.*;
import com.qianfeng.wkrent.service.ICarService;
import com.qianfeng.wkrent.service.ICarTypeService;
import com.qianfeng.wkrent.service.ICityService;
import com.qianfeng.wkrent.service.IRentOrderService;
import com.qianfeng.wkrent.service.impl.CarService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class OtherTest {

    @Autowired
    private ICityService cityService;

    @Autowired
    private ICarTypeService carTypeService;

    @Autowired
    private CarMapper carDao;

    @Autowired
    private CarService carService;

    @Autowired
    private IRentOrderService rentOrderService;

    @Autowired
    private RentOrderMapper rentOrderDao;

    @Test
    public void list(){
        PageBean<RentOrder> inPageByStatus = rentOrderService.findInPageByStatus(1, "2");
        System.out.println(inPageByStatus.getCount());
    }

    @Test
    public void testcar(){
        int i = carDao.deleteByPrimaryKey(47638773);
        System.out.println(i);
    }

    @Test
    public void estCase8(){
        List<RentOrder> rentOrders = rentOrderDao.selectInPageByStatus(1, 10, "0");
        System.out.println(rentOrders.size());
    }


    @Test
    public void testCase5(){
        Car car = carDao.selectByPrimaryKey(1);
        System.out.println(car.getCarName());
    }

    @Test
    public void testCase6(){
        List<RentOrder> rentOrders = rentOrderDao.selectInPage(1,4);
        System.out.println(rentOrders.size());

    }
    @Test
    public void testCase7(){
        List<RentOrder> rentOrders = rentOrderDao.selectAll();
        for (RentOrder rentOrder : rentOrders) {
            System.out.println(rentOrder.getCar().getCarName());
        }
    }



    @Test
    public void testCase4(){
        PageBean<RentOrder> inPageByStatus = rentOrderService.findInPageByStatus(1, "1");
        System.out.println(inPageByStatus.getCount());
    }

    @Test
    public void testCase1(){
        List<CarType> carTypeList = carTypeService.findAllCarType();
        for (CarType carType : carTypeList) {
            System.out.println(carType.getTypeName());
        }
    }

    @Test
    public void testCase2(){
        String[] strings = cityService.findfirstWordDesc();
        for (String string : strings) {
            System.out.println(string);
        }
    }

    @Test
    public void testCase3(){

        List<City> hotCityList = cityService.findHotCity();
        //model.addAttribute("hotCityList",hotCityList);
        //查询所有去重,排序后的首字母
        String[] strings = cityService.findfirstWordDesc();
        //model.addAttribute("strings",strings);

        //获得所有城市，为了按A-Z的顺序存入map集合中，所以查询的时候按拼音排序
        List<City> cityList = cityService.findAllCityByWord();
        Map<String,List<City>> map = new TreeMap<>();//分组后的城市集合

        //创建不同key的map集合,Map("A",list1),Map("B",list2)
        for (int i=0;i < strings.length;i++){
            map.put(strings[i],new ArrayList<City>());
        }

        for (City c : cityList) {
            String word = c.getCityFirstWord();
            if (map.containsKey(word)){
                System.out.println(map.get(word).add(c));
            }
        }
        //model.addAttribute("map",map);

        //产生映射项(里面有key和value)
        Set<Map.Entry<String, List<City>>> set = map.entrySet();

        //model.addAttribute("set",set);



        for(Map.Entry<String, List<City>> m : set){
            if(m.getValue()!=null && m.getValue().size()>0){
                //key下面的集合不为空，才显示首字母以及下面的城市
                String key = m.getKey();
                for(City c:m.getValue()){
                    String cityName = c.getCityName();
                    System.out.println(cityName);
                }
            }
        }
        //return "site";
    }

//    @Test
//    public void findCar(){
//        List<Car> carList = carService.findCarByTypeName("经济型");
//        for (Car car : carList) {
//            System.out.println(car.getCarName());
//        }
//    }

}
