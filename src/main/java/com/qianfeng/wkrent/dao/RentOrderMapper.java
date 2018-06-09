package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.RentOrder;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RentOrderMapper {
    int deleteByPrimaryKey(Integer orderId);

    int insert(RentOrder record);

    int insertSelective(RentOrder record);

    RentOrder selectByPrimaryKey(Integer orderId);

    int updateByPrimaryKeySelective(RentOrder record);

    int updateByPrimaryKey(RentOrder record);

    /**
     * 查询所有订单
     * @return
     */
    List<RentOrder> selectAll();
}