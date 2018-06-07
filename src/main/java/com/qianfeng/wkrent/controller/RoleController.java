package com.qianfeng.wkrent.controller;

import com.qianfeng.wkrent.dto.Role;
import com.qianfeng.wkrent.service.impl.RoleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleServiceImpl roleService;

    @RequestMapping("/{id}")
    public Role findById(@PathVariable int id){
        return roleService.findById(id);
    }
}
