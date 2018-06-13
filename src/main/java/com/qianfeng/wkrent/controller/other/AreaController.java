package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.Area;
import com.qianfeng.wkrent.service.IAreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@RequestMapping("/area")
@Controller
public class AreaController {
    @Autowired
    private IAreaService areaService;

    @RequestMapping("/findAll")
    @ResponseBody
    public List<Area> findAll(String cityName){
        return areaService.selectByCityName(cityName);
    }
}
