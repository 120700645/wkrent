package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.RentOrder;
import com.qianfeng.wkrent.service.impl.RentOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/rentOrder")
public class RentOrderController {
    @Autowired
    private RentOrderService rentOrderService;

    @RequestMapping("/selectAll")
    public String selectAll(Model model){
        List<RentOrder> rentOrderList = rentOrderService.selectAll();
        model.addAttribute("rentOrderList",rentOrderList);
        return "myorder";
    }
}
