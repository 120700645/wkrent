package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.dto.RentOrder;

import java.util.List;

public interface IRentOrderService {
    /**
     * 查询所有订单
     * @return
     */
    List<RentOrder> selectAll();

    PageBean<RentOrder> findInPage(int page);

    long count();

    /**
     * 通过状态查询订单且分页
     * @param page
     * @param orderStatus
     * @return
     */
    PageBean<RentOrder> findInPageByStatus(int page,String orderStatus);

    RentOrder findByPrimaryKey(int orderId);

    int updateByPrimaryKeySelective(RentOrder rentOrder);


}
