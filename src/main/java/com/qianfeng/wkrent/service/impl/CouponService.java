package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.CouponMapper;
import com.qianfeng.wkrent.dto.Coupon;
import com.qianfeng.wkrent.service.ICouponService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CouponService implements ICouponService {
    @Autowired
    private CouponMapper couponDAO;

    @Override
    public List<Coupon> selectAll() {
        return couponDAO.selectAll();
    }
}
