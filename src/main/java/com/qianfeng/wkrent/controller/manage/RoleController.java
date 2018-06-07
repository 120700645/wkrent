package com.qianfeng.wkrent.controller.manage;

import com.qianfeng.wkrent.dto.Role;
import com.qianfeng.wkrent.service.impl.RoleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleServiceImpl roleService;

    @RequestMapping("/index")
    public String findById(Model model){
        Role role = new Role();
        role.setRoleName("zhangsan");
        role.setRoleId(1);
        model.addAttribute("role",role);
        return "/index";
    }
}
