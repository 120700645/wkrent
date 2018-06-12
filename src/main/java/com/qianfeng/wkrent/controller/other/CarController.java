package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.Car;
import com.qianfeng.wkrent.info.JsonResult;
import com.qianfeng.wkrent.service.ICarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@ Controller
@RequestMapping("/car")
public class CarController {

    @Autowired
    private ICarService carService;

    @RequestMapping("/list")
    private void carList(String carType,Model model){
        JsonResult jsonResult = null;
        List<Car> carList = carService.findCarByTypeName(carType);
        model.addAttribute("carList",carList);
    }


}
