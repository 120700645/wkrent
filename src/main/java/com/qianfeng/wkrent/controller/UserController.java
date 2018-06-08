package com.qianfeng.wkrent.controller;

import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService userService;

    @RequestMapping("/login/{tel}")
    public String login(@PathVariable String tel, Model model){
        User user = userService.login(tel);
        model.addAttribute("currentUser",user);
        return "index";
    }
}
