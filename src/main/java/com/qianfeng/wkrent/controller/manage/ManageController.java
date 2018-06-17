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
        //查询订单状态,将状态存入session

        return "main";
    }

    /**
     * 分页查询网点
     * @param page
     * @param model
     * @return
     */
    /*@RequestMapping("/placeList/{page}")
    public String placeList(@PathVariable int page, Model model){
        PageBean<Place> pageBean = placeService.findAll(page);
        model.addAttribute("pages",pageBean);
        return "product-list";
    }*/

    /**
     * 查询所有订单
     * @return
     */
    @RequestMapping("/orderList")
    @ResponseBody
    public List<RentOrder> orderList(){
        List<RentOrder> rentOrders = rentOrderService.selectAll();
        return rentOrders;
    }

    /**
     * 分页查询订单
     * @param page
     * @return
     */
    @RequestMapping("/orderList/{page}")
    public String orderListInPage(@PathVariable int page,Model model){
        PageBean<RentOrder> pages = rentOrderService.findInPage(page);
        model.addAttribute("pages",pages);
        model.addAttribute("page",page);
        return "morderlist";
    }

}
