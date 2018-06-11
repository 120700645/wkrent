package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.City;
import com.qianfeng.wkrent.service.ICityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

@Controller
@RequestMapping("/city")
public class CityController {

    @Autowired
    private ICityService cityService;

    @RequestMapping("/hotCityList")
    public String hotCity(Model model){
        List<City> hotCityList = cityService.findHotCity();
        model.addAttribute("hotCityList",hotCityList);
        //查询所有去重,排序后的首字母
        String[] strings = cityService.findfirstWordDesc();
        model.addAttribute("strings",strings);
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
                map.get(word).add(c);
            }
        }
        model.addAttribute("map",map);
        //产生映射项(里面有key和value)
        Set<Map.Entry<String, List<City>>> set = map.entrySet();
        model.addAttribute("set",set);

        return "site";
    }
    
    
}
