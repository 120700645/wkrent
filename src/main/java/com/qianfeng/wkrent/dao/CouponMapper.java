package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Coupon;

public interface CouponMapper {
    int deleteByPrimaryKey(Short couponId);

    int insert(Coupon record);

    int insertSelective(Coupon record);

    Coupon selectByPrimaryKey(Short couponId);

    int updateByPrimaryKeySelective(Coupon record);

    int updateByPrimaryKey(Coupon record);
}