package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.Combo;
import com.qianfeng.wkrent.service.IComboService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/combo")
public class ComboController {

    @Autowired
    private IComboService comboService;

    /**
     * 查询所有combo
     * @param model
     * @return
     */
    @RequestMapping("/comboList")
    public String comboList(Model model){
        List<Combo> comboList = comboService.findAllCombo();
        model.addAttribute("comboList",comboList);
        return "driving";
    }

    @RequestMapping("/home")
    public String list(Model model){
        List<Combo> comboList = comboService.findAllCombo();
        model.addAttribute("comboList",comboList);
        return "selfdriving";
    }

    /**
     * 通过comboId查询自驾游组合,将自驾游组合放入model中
     * @param comboId
     * @param model
     * @return
     */
    @RequestMapping("/self_driving/{comboId}")
    public String findbyId(@PathVariable("comboId") Integer comboId, Model model){
        Combo combo = comboService.findByComboId(comboId);
        model.addAttribute("combo",combo);
        return "detail";
    }
}
