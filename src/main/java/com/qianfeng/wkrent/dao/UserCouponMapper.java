package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.UserCoupon;

public interface UserCouponMapper {
    int deleteByPrimaryKey(Integer ucId);

    int insert(UserCoupon record);

    int insertSelective(UserCoupon record);

    UserCoupon selectByPrimaryKey(Integer ucId);

    int updateByPrimaryKeySelective(UserCoupon record);

    int updateByPrimaryKey(UserCoupon record);
}