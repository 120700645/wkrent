package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Coupon;

import java.util.List;

public interface CouponMapper {
    int deleteByPrimaryKey(Integer couponId);

    int insert(Coupon record);

    int insertSelective(Coupon record);

    Coupon selectByPrimaryKey(Integer couponId);

    int updateByPrimaryKeySelective(Coupon record);

    int updateByPrimaryKey(Coupon record);

    /**
     * 通过ucStatus查询优惠券
     * @param ucStatus
     * @return
     */
    List<Coupon> selectByStatus(int ucStatus);
}