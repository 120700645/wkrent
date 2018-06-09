package com.qianfeng.wkrent.utils;

import java.util.Random;

public class CodeGenerateUtil {
    /**
     * 生成指定长度的随机字符串
     * @param num 要生成的字符串的长度
     * @return
     */
    public static String getCode(Integer num){
        // 获取一个随机数对象
        Random random = new Random();
        // new一个StringBuilder用来操作字符串
        StringBuilder builder = new StringBuilder();
        // 循环生成长度为num的随机字符串
        for (int i = 0; i < num; i++) {
            // 将生成的0-9的随机数拼接到字符串中
            builder.append(random.nextInt(10));
        }
        // 返回生成的随机字符串
        return builder.toString();
    }
}
