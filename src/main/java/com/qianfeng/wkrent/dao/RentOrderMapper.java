package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.RentOrder;

public interface RentOrderMapper {
    int deleteByPrimaryKey(Integer orderId);

    int insert(RentOrder record);

    int insertSelective(RentOrder record);

    RentOrder selectByPrimaryKey(Integer orderId);

    int updateByPrimaryKeySelective(RentOrder record);

    int updateByPrimaryKey(RentOrder record);
}