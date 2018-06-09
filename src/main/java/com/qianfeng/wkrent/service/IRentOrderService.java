package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.RentOrder;

import java.util.List;

public interface IRentOrderService {
    List<RentOrder> selectAll();
}
