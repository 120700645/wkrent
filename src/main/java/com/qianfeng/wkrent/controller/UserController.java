package com.qianfeng.wkrent.controller;

import com.qianfeng.wkrent.cache.IRedisCache;
import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.info.JsonResult;
import com.qianfeng.wkrent.service.IUserService;
import com.qianfeng.wkrent.utils.CodeGenerateUtil;
import com.qianfeng.wkrent.utils.MessageUtil;
import com.qianfeng.wkrent.utils.ParamUtil;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.web.session.HttpServletSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@SessionAttributes("currentUser")
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService userService;
    @Autowired
    private IRedisCache redisCache;

    @RequestMapping("/login")
    @ResponseBody
    public JsonResult login(String tel, String code, Model model,HttpSession session){
        JsonResult jsonResult = new JsonResult();
        try {
            userService.login(tel,code);
            // 登录成功,将对应的user记录从数据库查询出来,保存在session中
            User user = userService.selectByTel(tel);
            session.setAttribute("user",user);
//            model.addAttribute("currentUser",user);
            jsonResult.setCode(ParamUtil.SUCCESS_CODE);
            jsonResult.setMsg(ParamUtil.SUCCESS_MSG);
        } catch (IncorrectCredentialsException e) {
            jsonResult.setCode(ParamUtil.FAIL_CODE);
            jsonResult.setMsg(ParamUtil.FAIL_MSG);
            e.printStackTrace();
        }
        return jsonResult;
    }

    /**
     * 发送短信
     * @param tel
     */
    @RequestMapping("/sendMessage")
    public void sendMseeage(String tel){
        // 生成四位数的随机验证码
        String code = CodeGenerateUtil.getCode(4);
        // 调用发送短信的方法
        MessageUtil.sendMessage(code,tel,"3");
        // 将手机号拼接到"code-"后面
        // 将生成的短信验证码保存到redis缓存中,并且设定时间为1200秒,即20分钟
        redisCache.setValueByKey("code-" + tel,code,1200);
    }

    /**
     * 验证图片验证码
     * @param pcode 输入的图片验证码
     * @return 返回验证是否成功
     * @throws IOException
     */
    @RequestMapping("/vcode")
    @ResponseBody
    public String vCode(String pcode) throws IOException{
        // 从redis缓存中获取保存的图片验证码
        String code = redisCache.getValueByKey("pcode");
        // 判断输入的图片验证码是否和生成的图片验证码一致
        if(code.equalsIgnoreCase(pcode)){
            return "true";
        }else {
            return "false";
        }
    }

    /**
     * 验证电话格式是否正确
     * @param tel 输入的电话号码
     * @return
     */
    @RequestMapping("/validation")
    @ResponseBody
    public String validateTel(String tel){
        // 判断用户输入的电话号码格式是否正确
        if(tel.matches(ParamUtil.TEL_FORMAT)){
            return "true";
        }else {
            return "false";
        }
    }

    /**
     * 跳转到登录界面
     * @return
     */
    @RequestMapping("/")
    public String preLogin(){
        return "/login";
    }

    @RequestMapping("/preIndex")
    public String preIndex(){
        return "/index";
    }
}
