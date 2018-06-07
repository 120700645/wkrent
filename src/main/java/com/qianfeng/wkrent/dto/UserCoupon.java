package com.qianfeng.wkrent.dto;

public class UserCoupon {
    private Integer ucId;

    private Integer userId;

    private Integer couponId;

    private Integer ucStatus;

    public Integer getUcId() {
        return ucId;
    }

    public void setUcId(Integer ucId) {
        this.ucId = ucId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCouponId() {
        return couponId;
    }

    public void setCouponId(Integer couponId) {
        this.couponId = couponId;
    }

    public Integer getUcStatus() {
        return ucStatus;
    }

    public void setUcStatus(Integer ucStatus) {
        this.ucStatus = ucStatus;
    }
}