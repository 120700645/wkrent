package com.qianfeng.wkrent.shiro;

import org.apache.shiro.authc.UsernamePasswordToken;

public class TelephoneToken extends UsernamePasswordToken {
    /**
     * 实现序列化
     */
    private static final long serialVersionUID = 4812793519945855483L;

    /**
     * 电话号码
     */
    private String telephone;
    /**
     * 验证码
     */
    private String code;

    public TelephoneToken(String telephone,String code){
        this.telephone = telephone;
        this.code = code;
    }

    @Override
    public Object getPrincipal() {
        // 如果获取不到电话,返回用户名,否则返回电话号码
        if(telephone == null){
            return getUsername();
        }else {
            return getTelephone();
        }
    }

    @Override
    public Object getCredentials() {
        // 如果获取不到电话,返回密码,否则返回验证码
        if(telephone == null){
            return getCredentials();
        }else {
            return code;
        }
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
