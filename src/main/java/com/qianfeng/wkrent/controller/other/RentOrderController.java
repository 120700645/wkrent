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

    /**
     * 查询所有租车订单
     * @param model
     * @return
     */
//    @RequestMapping("/selectAll")
//    public String selectAll(Model model){
//        List<RentOrder> rentOrderList = rentOrderService.selectAll();
//        model.addAttribute("rentOrderList",rentOrderList);
//        List<RentOrder> rentOrderList1 = rentOrderService.selectCancle();
//        model.addAttribute("rentOrderList1",rentOrderList1);
//        return "myorder";
//    }

    @RequestMapping("/personal")
    public String personal(Model model){
        //返回返回个人中心页面
        List<RentOrder> rentOrderList = rentOrderService.selectAll();
        model.addAttribute("rentOrderList",rentOrderList);
        return "personal";
    }

    @RequestMapping("/order")
    public String order(){
        //跳到订单页面
        return "order";
    }

    @RequestMapping("/submit")
    public String submit(){
        return "/submit";
    }

    @RequestMapping("/pay")
    public String pay(){
        return "/pay";
    }
}
