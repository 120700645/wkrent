package com.qianfeng.wkrent.controller.other;

import com.qianfeng.wkrent.utils.CommonUtil;
import com.qianfeng.wkrent.utils.ZiXingUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Random;

@Controller
@RequestMapping("/imageServlet")
public class ImageController {
    Random random= new Random();


    @RequestMapping("/image")
    public void image(HttpServletRequest req, HttpServletResponse resp){
        String price = "1";
//        String body = req.getParameter("body");
        String body = "body";
        if (req.getMethod().equalsIgnoreCase("get")) {
            try {
                body = new String(body.getBytes("ISO8859-1"), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        String orderId = random.nextInt(100000000) + "";
        try {
            String url = null;
            try {
                url = CommonUtil.weixin_pay(price, body, orderId);
            } catch (Exception e) {
                e.printStackTrace();
            }
            BufferedImage image = ZiXingUtil.createImage(url, 300, 300);//
            req.getSession().setAttribute("oid", orderId);

//        BufferedImage images = (BufferedImage)
//                req.getSession().getAttribute("image");
        if (image != null) {
            try {
                ImageIO.write(image, "JPEG", resp.getOutputStream());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }catch (Exception e) {
            e.printStackTrace();
        }

}
}
