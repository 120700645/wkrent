package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.PageBean;
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
    @RequestMapping("/selectAll")
    public String selectAll(Model model){
        List<RentOrder> rentOrderList = rentOrderService.selectAll();
        model.addAttribute("rentOrderList",rentOrderList);
//        List<RentOrder> rentOrderList1 = rentOrderService.selectCancle();
//        model.addAttribute("rentOrderList1",rentOrderList1);
        return "myorder";
    }

    @RequestMapping("/personal")
    public String personal(Model model){
        //查询两条记录返回个人中心页面
        PageBean<RentOrder> inPage = rentOrderService.findInPage(1);
        model.addAttribute("rentOrderList",inPage);
        return "personal";
    }

    @RequestMapping("/order")
    public String order(){
        //跳到订单页面
        return "order";
    }

    @RequestMapping("/submit")
    public String submit(){
        //提交订单页面
        return "/submit";
    }

    @RequestMapping("/pay")
    public String pay(){
        //跳转支付页面
        return "/pay";
    }
}
