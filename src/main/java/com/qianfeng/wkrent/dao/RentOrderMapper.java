package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.RentOrder;

public interface RentOrderMapper {
    int deleteByPrimaryKey(Short orderId);

    int insert(RentOrder record);

    int insertSelective(RentOrder record);

    RentOrder selectByPrimaryKey(Short orderId);

    int updateByPrimaryKeySelective(RentOrder record);

    int updateByPrimaryKey(RentOrder record);
}