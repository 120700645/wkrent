package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.Brand;
import com.qianfeng.wkrent.dto.CarType;
import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.dto.entity.PlaceCar;
import com.qianfeng.wkrent.info.JsonResult;
import com.qianfeng.wkrent.service.impl.*;
import com.qianfeng.wkrent.service.impl.BrandService;
import com.qianfeng.wkrent.service.impl.CarService;
import com.qianfeng.wkrent.service.impl.CarTypeService;
import com.qianfeng.wkrent.service.impl.PlaceCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/carType")
public class CarTypeController {

    @Autowired
    private CarTypeService carTypeService;

    @Autowired
    private BrandService brandService;

    @Autowired
    private CarService carService;

    @Autowired
    private PlaceCarService placeCarService;

    @Autowired
    private PlaceService placeService;

    @RequestMapping("/search")
    public String list(String cityName, String placeName, String startTime, String startStamp,
                       String startWeekday, String endWeekday, String endTime, String endStamp,
                       @RequestParam(value = "brandList", required = false)List<String> brandList,
                       @RequestParam(value = "carTypeList", required = false) List<String> carTypeList, Model model){
        List<CarType> types = carTypeService.findAllCarType();
        model.addAttribute("types",types);
        List<Brand> brands = brandService.findAll();
        model.addAttribute("brands",brands);
        List<PlaceCar> placeCars = placeCarService.findCarPlace(placeName,brandList,carTypeList,startStamp);
        Place place = placeService.findByName(placeName);
        model.addAttribute("placeCars",placeCars);
        model.addAttribute("city",cityName);
        model.addAttribute("startTime",startTime);
        model.addAttribute("startStamp",startStamp);
        model.addAttribute("endTime",endTime);
        model.addAttribute("endStamp",endStamp);
        model.addAttribute("placeName",placeName);
        model.addAttribute("place",place);
        model.addAttribute("startWeekday",startWeekday);
        model.addAttribute("endWeekday",endWeekday);
        return "/renting";
    }

    @RequestMapping("/searchAjax")
    @ResponseBody
    public JsonResult placeCars(String placeName,String startStamp,@RequestParam(value = "brandList", required = false)List<String> brandList,
                            @RequestParam(value = "carTypeList", required = false) List<String> carTypeList){
        List<PlaceCar> placeCars = placeCarService.findCarPlace(placeName, brandList, carTypeList,startStamp);
        JsonResult jsonResult = JsonResult.createSuccessJsonResult(placeCars);
        return jsonResult;
    }
}
