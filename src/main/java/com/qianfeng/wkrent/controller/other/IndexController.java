package com.qianfeng.wkrent.controller.other;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/")
@Controller
public class IndexController {
    @RequestMapping("/")
    public String preIndex(){
        return "/index";
    }
}
