package com.qianfeng.wkrent.controller;

import com.mchange.v2.async.test.InterruptTaskThread;
import com.qianfeng.wkrent.cache.IRedisCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@Controller
@RequestMapping("/code")
public class CodeController {
    @Autowired
    private IRedisCache redisCache;

    private static final int WIDTH = 104    ;
    private static final int HEIGHT = 38;
    private static final String CODES = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz";
    private static final Color[] COLORS = {Color.RED,Color.GREEN,Color.PINK,Color.GRAY,Color.BLUE};
    private static final String[] FONT_FAMILY = {"宋体","仿宋","黑体","微软雅黑","华文行楷","楷体","草书","隶书","小篆"};
    private static final int[] FONTS = {Font.BOLD,Font.ITALIC,Font.PLAIN};

    /**
     * 绘制图片验证码
     * @param resp
     */
    @RequestMapping("/pcode")
    public void pcode(HttpServletResponse resp) throws IOException {
        // 创建BufferedImage对象,构造方法第一个参数矩形长度,第二个参数为矩形宽度
        BufferedImage image = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_ARGB);
        // 创建Graphics绘图对象
        Graphics graphics = image.getGraphics();
        // 设置验证码背景颜色为白色
        graphics.setColor(Color.WHITE);
        // 向矩形内填充颜色,前两个参数为起点坐标,后两个参数为宽高
        graphics.fillRect(0,0,WIDTH,HEIGHT);
        // 创建一个char数组用来保存验证码,长度为验证码个数
        char[] codes = new char[4];
        // 创建随机数对象,用来随机生成验证码
        Random random = new Random();
        // 循环绘制随机的字母和数字
        for (int i = 0; i < codes.length; i++) {
            // 设置验证码字体为黑体
            graphics.setFont(new Font("黑体",Font.BOLD,20));
            // 为每个字母设置随机的颜色
            graphics.setColor(COLORS[random.nextInt(COLORS.length)]);
            // 讲常量数组中的随机字母取出保存在字符数组中作为验证码
            codes[i] = CODES.charAt(random.nextInt(CODES.length()));
            // 画字符串,第一个参数为要画的字符串,第二个参数为横坐标,第三个参数为纵坐标
            graphics.drawString(codes[i]+ " ", 20+i*16, random.nextInt(15)+20);
        }
        // 生成随机数量的干扰线
        for (int i = 0; i < random.nextInt(10); i++) {
            // 设置干扰线颜色
            graphics.setColor(COLORS[random.nextInt(COLORS.length)]);
            // 绘制干扰线
            graphics.drawLine(random.nextInt(WIDTH), random.nextInt(HEIGHT), random.nextInt(WIDTH), random.nextInt(HEIGHT));
        }
        // 将验证码保存在redis中
        redisCache.setValueByKey("pcode",new String(codes),20*60);
//        graphics.dispose();
        // 将图片发送给浏览器,第一个参数为BufferedImage对象,第二个参数为图片格式,第三个参数为输出流
        ImageIO.write(image, "png", resp.getOutputStream());
//        resp.getOutputStream().flush();
    }
}
