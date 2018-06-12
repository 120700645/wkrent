package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.CarType;
import com.qianfeng.wkrent.service.ICarTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@CrossOrigin
@Controller
@RequestMapping("/carType")
public class CarTypeController {

    @Autowired
    private ICarTypeService carTypeService;

    @RequestMapping("/list")
    public String list(Model model){
        List<CarType> carTypeList = carTypeService.findAllCarType();
        model.addAttribute("carTypeList",carTypeList);
        return "/renting";
    }

    @RequestMapping("/carList")
    public String selectCar(){
        return "";
    }
}
