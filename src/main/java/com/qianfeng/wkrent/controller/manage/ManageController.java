package com.qianfeng.wkrent.controller.manage;

import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.dto.RentOrder;
import com.qianfeng.wkrent.service.impl.PlaceService;
import com.qianfeng.wkrent.service.impl.RentOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/manage")
public class ManageController {

    @Autowired
    private PlaceService placeService;

    @Autowired
    private RentOrderService rentOrderService;

    @RequestMapping("/preIndex")
    public String preIndex(){
        return "indexManage";
    }

    @RequestMapping("/placeList/{page}")
    public String plaveList(@PathVariable int page, Model model){
        PageBean<Place> pageBean = placeService.findAll(page);
        model.addAttribute("pages",pageBean);
        return "product-list";
    }

    @RequestMapping("/orderList")
    @ResponseBody
    public List<RentOrder> orderList(){
        List<RentOrder> rentOrders = rentOrderService.selectAll();
        return rentOrders;
    }
}
