package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Coupon;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CouponMapper {
    int deleteByPrimaryKey(Integer couponId);

    int insert(Coupon record);

    int insertSelective(Coupon record);

    Coupon selectByPrimaryKey(Integer couponId);

    int updateByPrimaryKeySelective(Coupon record);

    int updateByPrimaryKey(Coupon record);

    /**
     * 查询所有优惠券
     * @return
     */
    List<Coupon> selectAll();
}