package com.qianfeng.wkrent.controller.manage;

import com.qianfeng.wkrent.dto.Car;
import com.qianfeng.wkrent.dto.CarType;
import com.qianfeng.wkrent.service.ICarService;
import com.qianfeng.wkrent.service.ICarTypeService;
import com.qianfeng.wkrent.utils.UploadConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/car")
public class CarController {

    @Autowired
    private ICarService carService;

    @Autowired
    private ICarTypeService carTypeService;

    @Autowired
    private UploadConfig uploadConfig;

    @RequestMapping(value="/add",method = RequestMethod.GET)
    public String preAdd(Model model){
        List<CarType> types = carTypeService.findAllCarType();
        model.addAttribute(types);

        return "car_add";
    }


    @RequestMapping(value = "/main",method = RequestMethod.POST)
    public String addCar(Car car, MultipartFile file){
        String fileName = UUID.randomUUID().toString();
        File newFile = new File(uploadConfig.getFilePath()+fileName);
        try {
            file.transferTo(newFile);
        } catch (IOException e) {
            e.printStackTrace();
        }

        car.setCarImg(fileName);
        carService.saveSelective(car);
        return "main";
    }

}
