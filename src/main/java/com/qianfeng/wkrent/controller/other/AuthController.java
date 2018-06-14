package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.RentOrder;
import com.qianfeng.wkrent.service.impl.RentOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.annotation.WebServlet;
import java.util.List;
@Controller
@RequestMapping("auth")
public class AuthController {


    @RequestMapping("list")
    public String list(){
        //返回认证界面
        return "preAuth";
    }

    @RequestMapping("complete")
    public String complete(){
        //完成认证
        return "auth";
    }

    @RequestMapping("feedBack")
    public String feedBack(){
        //返回返回反馈页面
        return "feedback";
    }


}
