package com.qianfeng.wkrent.controller.manage;

import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.service.IUserService;
import com.qianfeng.wkrent.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/users")
public class UsersController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/lists/{page}")
    public String findall(@PathVariable int page,Model model){
        PageBean<User> allUserByPage = userService.findAllUserByPage(page);
        model.addAttribute("allUserByPage",allUserByPage);
        return "muserlist";
    }


}
