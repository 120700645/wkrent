package com.qianfeng.wkrent.controller.other;

import com.fasterxml.jackson.databind.annotation.JsonAppend;
import com.qianfeng.wkrent.dto.Brand;
import com.qianfeng.wkrent.dto.CarType;
import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.dto.entity.PlaceCar;
import com.qianfeng.wkrent.service.ICarTypeService;
import com.qianfeng.wkrent.service.impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String list(String cityName,String placeName,String startTime,String endTime, Model model){
        List<CarType> carTypeList = carTypeService.findAllCarType();
        model.addAttribute("carTypeList",carTypeList);
        List<Brand> brandList = brandService.findAll();
        model.addAttribute("brandList",brandList);
        List<PlaceCar> placeCars = placeCarService.findCarById(placeName);
        Place place = placeService.findByName(placeName);
        model.addAttribute("placeCars",placeCars);
        model.addAttribute("city",cityName);
        model.addAttribute("startTime",startTime);
        model.addAttribute("endTime",endTime);
        model.addAttribute("placeName",placeName);
        model.addAttribute("place",place);
        return "/renting";
    }

    @RequestMapping("/carList")
    public String selectCar(){
        return "";
    }
}
