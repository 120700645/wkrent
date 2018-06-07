package com.qianfeng.wkrent.dto;

import java.util.Date;

public class Coupon {
    private Short couponId;

    private Short couponDiscount;

    private String couponRule;

    private Date couponStartTime;

    private Date couponEndTime;

    public Short getCouponId() {
        return couponId;
    }

    public void setCouponId(Short couponId) {
        this.couponId = couponId;
    }

    public Short getCouponDiscount() {
        return couponDiscount;
    }

    public void setCouponDiscount(Short couponDiscount) {
        this.couponDiscount = couponDiscount;
    }

    public String getCouponRule() {
        return couponRule;
    }

    public void setCouponRule(String couponRule) {
        this.couponRule = couponRule == null ? null : couponRule.trim();
    }

    public Date getCouponStartTime() {
        return couponStartTime;
    }

    public void setCouponStartTime(Date couponStartTime) {
        this.couponStartTime = couponStartTime;
    }

    public Date getCouponEndTime() {
        return couponEndTime;
    }

    public void setCouponEndTime(Date couponEndTime) {
        this.couponEndTime = couponEndTime;
    }
}