package com.qianfeng.wkrent.dto;

public class UserCoupon {
    private Short ucId;

    private Short userId;

    private Short couponId;

    private Short ucStatus;

    public Short getUcId() {
        return ucId;
    }

    public void setUcId(Short ucId) {
        this.ucId = ucId;
    }

    public Short getUserId() {
        return userId;
    }

    public void setUserId(Short userId) {
        this.userId = userId;
    }

    public Short getCouponId() {
        return couponId;
    }

    public void setCouponId(Short couponId) {
        this.couponId = couponId;
    }

    public Short getUcStatus() {
        return ucStatus;
    }

    public void setUcStatus(Short ucStatus) {
        this.ucStatus = ucStatus;
    }
}