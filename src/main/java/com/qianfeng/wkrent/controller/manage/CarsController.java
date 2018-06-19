package com.qianfeng.wkrent.controller.manage;

import com.qianfeng.wkrent.dto.Brand;
import com.qianfeng.wkrent.dto.Car;
import com.qianfeng.wkrent.dto.CarType;
import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.info.JsonResult;
import com.qianfeng.wkrent.service.IBrandService;
import com.qianfeng.wkrent.service.ICarService;
import com.qianfeng.wkrent.service.ICarTypeService;
import com.qianfeng.wkrent.utils.CodeGenerateUtil;
import com.qianfeng.wkrent.utils.Constants;
import com.qianfeng.wkrent.utils.ParamUtil;
import com.qianfeng.wkrent.utils.UploadConfig;
import jdk.internal.util.xml.impl.Input;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/car")
public class CarsController {

    @Autowired
    private ICarService carService;

    @Autowired
    private ICarTypeService carTypeService;

    @Autowired
    private IBrandService brandService;

    @Autowired

    private UploadConfig uploadConfig;
    /**
     * 预添加
     * @param model
     * @return
     */
    @RequestMapping(value="/add",method = RequestMethod.GET)
    public String preAdd(Model model){
        List<CarType> types = carTypeService.findAllCarType();
        model.addAttribute("types",types);

        List<Brand> brands = brandService.findAll();
        model.addAttribute("brands",brands);
        return "car_add";
    }

    /**
     * 添加车辆信息
     * @param car
     * @param file
     * @return
     */
    @RequestMapping(value = "/main",method = RequestMethod.POST)
    public String addCar(Car car,@RequestParam(value = "file") MultipartFile file) throws Exception{
        //上传照片
        String fileName = UUID.randomUUID().toString();
        File newFile = new File(uploadConfig.getFilePath()+fileName);
        try {

            file.transferTo(newFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String code = CodeGenerateUtil.getCode(3);
        int id = Integer.parseInt(code);
        car.setCarId(id);
        car.setCarImg(fileName);
        carService.saveSelective(car);
        return "redirect:/car/carList/1";
    }

    /**
     * 分页显示订单数据
     * @param page
     * @param model
     * @return
     */
    @RequestMapping("/carList/{page}")
    public String carList(@PathVariable int page, Model model){
        PageBean<Car> carList = carService.findAllCarByPage(page);
        model.addAttribute("carList",carList);
        model.addAttribute("page",page);
        return "mcarlist";
    }

    /**
     * 删除汽车
     * @param carId
     * @return
     */
    @RequestMapping("/deleteCar")
    @ResponseBody
    public JsonResult deleteCar(Integer carId){
        JsonResult jsonResult = new JsonResult();
        carService.deleteByPrimaryKey(carId);
        jsonResult.setCode(ParamUtil.SUCCESS_CODE);
        return jsonResult;
    }

}
