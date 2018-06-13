package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.dto.RentOrder;

import java.util.List;

public interface IRentOrderService {
    List<RentOrder> selectAll();
    PageBean<RentOrder> findInPage(int page);
    long count();
}
