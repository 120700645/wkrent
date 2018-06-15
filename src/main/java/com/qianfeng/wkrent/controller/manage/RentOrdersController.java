package com.qianfeng.wkrent.controller.manage;

import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.RentOrder;
import com.qianfeng.wkrent.service.IRentOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/rentOrder")
public class RentOrdersController {

    @Autowired
    private IRentOrderService rentOrderService;

    @RequestMapping("/status/{page}")
    public String order(@PathVariable int page, Model model){
        PageBean<RentOrder> pageByStatus = rentOrderService.findInPageByStatus(page, "0");
        model.addAttribute("pageByStatus",pageByStatus);
        return "notpayorder";
    }
    @RequestMapping("/check")
    public void checkOrder(String num,int orderId,Model model){
        if (num.equals("未确认")){
            RentOrder rentOrder = rentOrderService.findByPrimaryKey(orderId);
            rentOrder.setOrderStatus("1");
            rentOrderService.updateByPrimaryKeySelective(rentOrder);
        }
    }


}
