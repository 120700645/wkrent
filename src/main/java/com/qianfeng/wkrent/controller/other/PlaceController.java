package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.service.IPlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/place")
public class PlaceController {
    @Autowired
    private IPlaceService placeService;

    @RequestMapping("/findAll")
    @ResponseBody
    public List<Place> findAll(String areaName){
        return placeService.selectByAreaName(areaName);
    }
}
