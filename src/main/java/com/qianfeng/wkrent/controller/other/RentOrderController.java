package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.Coupon;
import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.RentOrder;
import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.info.JsonResult;
import com.qianfeng.wkrent.service.IUserService;
import com.qianfeng.wkrent.service.impl.CouponService;
import com.qianfeng.wkrent.service.impl.RentOrderService;
import com.qianfeng.wkrent.utils.ParamUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/rentOrder")
public class RentOrderController {
    @Autowired
    private RentOrderService rentOrderService;

    @Autowired
    private CouponService couponService;

    @Autowired
    private IUserService userService;
    /**
     * 查询所有租车订单
     * @param model
     * @return
     */
    @RequestMapping("/selectAll")
    public String selectAll(Model model){
        List<RentOrder> rentOrderList = rentOrderService.selectAll();
        model.addAttribute("rentOrderList",rentOrderList);
        PageBean<RentOrder> rentOrderList0 = rentOrderService.findInPageByStatus(1,"0");
        model.addAttribute("rentOrderList0",rentOrderList0);
        PageBean<RentOrder> rentOrderList1 = rentOrderService.findInPageByStatus(1,"1");
        model.addAttribute("rentOrderList1",rentOrderList1);
        PageBean<RentOrder> rentOrderList7 = rentOrderService.findInPageByStatus(1,"7");
        model.addAttribute("rentOrderList7",rentOrderList7);
        return "myorder";
    }

    /**
     * 个人中心取消订单操作
     * @param orderId
     * @return
     */
    @RequestMapping("/checks")
    @ResponseBody
    public JsonResult checks(int orderId){
            JsonResult jsonResult = new JsonResult();
            RentOrder order = rentOrderService.findByPrimaryKey(orderId);
            order.setOrderStatus("7");
            rentOrderService.updateByPrimaryKeySelective(order);
            jsonResult.setCode(ParamUtil.SUCCESS_CODE);
            return jsonResult;
    }

    /**
     * 个人中心分页
     * 查询当前用户的姓名、电话
     * @param model
     * @param session
     * @return
     */

    @RequestMapping("/personal")
    public String personal(Model model, HttpSession session){
        PageBean<RentOrder> inPage = rentOrderService.findInPage(1);
        model.addAttribute("rentOrderList",inPage);
        //通过当前用户电话查询数据库中用户
        User user = (User) session.getAttribute("user");
        String tel=user.getUserTel();
        User user1 = userService.selectByTel(tel);
        String username=user1.getUserName();
        String telphone=user1.getUserTel();
        model.addAttribute("username",username);
        model.addAttribute("telphone",telphone);
        return "personal";
    }

    /**
     * 查询所有优惠券
     * @param model
     * @return
     */
    @RequestMapping("/order")
    public String order(Model model){
        //添加优惠券
        List<Coupon> couponList = couponService.selectAll();
        model.addAttribute("couponList",couponList);
        //跳到订单页面
        return "/order";
    }

    /**
     * 跳转微信支付页面
     * @return
     */
    @RequestMapping("/submit")
    public String submit(){
        //提交订单页面
        return "/submit";
    }

    /**
     * 跳转扫码页面
     * @return
     */
    @RequestMapping("/pay")
    public String pay(){
        //跳转支付页面
        return "/pay";
    }

    /**
     * 购物车测试页面
     * @return
     */
    @RequestMapping("/cart")
    public String cart(){
        //购物车页面
        return "/shoppingCart";
    }
}
