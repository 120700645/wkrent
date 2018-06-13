package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.Car;
import com.qianfeng.wkrent.info.JsonResult;
import com.qianfeng.wkrent.service.ICarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/car")
public class CarController {

    @Autowired
    private ICarService carService;

//    @RequestMapping("/list/{typeId}")
//    public String carList(@PathVariable int typeId, Model model){
//        List<Car> carList = carService.findCarByTypeId(typeId);
//        model.addAttribute("cars",carList);
//        return "";
    }


//}
