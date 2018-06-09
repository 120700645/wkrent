package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.Coupon;
import com.qianfeng.wkrent.service.impl.CouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/coupon")
public class CouponController {
    @Autowired
    private CouponService couponService;

    @RequestMapping("/selectByStatus/{couponId}")
    public String selectByStatus(@PathVariable("couponId") int couponId, Model model){
        List<Coupon> couponList = couponService.selectByStatus(couponId);
        model.addAttribute("couponList",couponList);
        return "mycoupon";
    }
}
