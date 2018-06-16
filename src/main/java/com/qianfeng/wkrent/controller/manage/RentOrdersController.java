package com.qianfeng.wkrent.controller.manage;

import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.RentOrder;
import com.qianfeng.wkrent.info.JsonResult;
import com.qianfeng.wkrent.service.IRentOrderService;
import com.qianfeng.wkrent.utils.ParamUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/rentOrder")
public class RentOrdersController {

    @Autowired
    private IRentOrderService rentOrderService;

    /**
     * 状态为
     * @param page
     * @param model
     * @return
     */
    @RequestMapping("/status/{page}")
    public String order(@PathVariable int page, Model model){
        PageBean<RentOrder> pageByStatus = rentOrderService.findInPageByStatus(page, "0");
        model.addAttribute("pageByStatus",pageByStatus);
        model.addAttribute("page",page);
        return "mnotpayorder";
    }

    @RequestMapping("/check")
    @ResponseBody
    public JsonResult checkOrder(String num,String orderId){
        JsonResult jsonResult = new JsonResult();
        if (num.equals("未确认")){
            RentOrder rentOrder = rentOrderService.findByPrimaryKey(Integer.parseInt(orderId));
            rentOrder.setOrderStatus("1");
            rentOrderService.updateByPrimaryKeySelective(rentOrder);

        }
        jsonResult.setCode(ParamUtil.SUCCESS_CODE);
        return jsonResult;
    }
}
