package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.dto.RentOrder;
import com.qianfeng.wkrent.dto.User;
import com.qianfeng.wkrent.service.IUserService;
import com.qianfeng.wkrent.service.impl.RentOrderService;
import com.qianfeng.wkrent.service.impl.UserService;
import net.sf.json.JSONObject;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
@Controller
@RequestMapping("auth")
public class AuthController {
    @Autowired
    private IUserService userService;

    /**
     * 微信支付代码
     * @param strUrl
     * @param param
     * @param appcode
     * @param Method
     * @return
     */
    public static String APISTORE(String strUrl, String param, String appcode, String Method) {

        String returnStr = null; // 返回结果定义
        URL url = null;
        HttpURLConnection httpURLConnection = null;
        try {
            url = new URL(strUrl + "?" + param);
            httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestProperty("Accept-Charset", "utf-8");
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("Authorization", "APPCODE " + appcode);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod(Method);
            httpURLConnection.setUseCaches(false); // 不用缓存
            httpURLConnection.connect();
            BufferedReader reader = new BufferedReader(
                    new InputStreamReader(httpURLConnection.getInputStream(), "utf-8"));
            StringBuffer buffer = new StringBuffer();
            String line = "";
            while ((line = reader.readLine()) != null) {
                buffer.append(line);
            }

            reader.close();
            returnStr = buffer.toString();
        } catch (Exception e) {
            e.printStackTrace();

            return null;
        } finally {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        }
        return returnStr;
    }

    /**
     * 查询数据库，判断用户名是否存在，若不存在认证，存在不认证
     * @param session
     * @return
     */
    @RequestMapping("/list")
    public String list(HttpSession session){
        User user1= (User) session.getAttribute("user");
        String tel=user1.getUserTel();
        //根据用户电话查询用户是否存在
        User user = userService.selectByTel(tel);
        //判断用户是否存在
        if(user!=null){
            //判断用户名是否存在
            if(user.getUserName()==null || user.getUserName().equals("")){
                return "preAuth";
            }else{
                //存在完成认证
                return "auth";
            }
        }
        //不存在要认证
        return "preAuth";

    }

    /**
     * 跳转认证界面
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/begin")
    public String begin(HttpServletRequest request, HttpServletResponse response,HttpSession session,String updateNumber){
        //appcode查看地址 https://market.console.aliyun.com/imageconsole/
        String appcode = "a45a32ba14ea46d18c3a5bd21d293c85";
        //请求地址
        String url="http://1.api.apistore.cn/idcard3";
        String username = request.getParameter("name");
        String number = request.getParameter("number");

        //请求参数
        String params = "realName="+username+"&"+"cardNo="+number;

        //发送请求
        String result = APISTORE(url, params, appcode,"POST");
        //输出结果
        System.out.println(result);
        //JSON
        JSONObject object = JSONObject.fromObject(result);
        //输出状态码
        System.out.println(object.getInt("error_code")) ;
        //输出返回结果
        System.out.println(object.get("reason")) ;

        //判断认证是否通过
        int codes=object.getInt("error_code");
//        System.out.println(codes);
//        //如果认证成功则更新数据库UserName和身份证号
//        if(codes==0){
//            //获取页面登录用户
//            User user = (User) session.getAttribute("user");
//            //设置用户姓名和身份证号
//            user.setUserName(username);
//            user.setUserCard(number);
//            //更新用户
//            userService.updateByPrimaryKeySelective(user);
//        }

        System.out.println("姓名+：：："+username);
        System.out.println("证件码：：："+number);
        //跳转认证list方法
        return "auth";
    }



    /**
     * 跳转反馈界面
     * @return
     */
    @RequestMapping("feedBack")
    public String feedBack(){
        //返回返回反馈页面
        return "feedback";
    }


}
