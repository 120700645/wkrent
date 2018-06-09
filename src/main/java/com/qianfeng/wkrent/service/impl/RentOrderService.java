package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.RentOrderMapper;
import com.qianfeng.wkrent.dto.RentOrder;
import com.qianfeng.wkrent.service.IRentOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RentOrderService implements IRentOrderService {

    @Autowired
    private RentOrderMapper rentOrderDAO;
    @Override
    public List<RentOrder> selectAll() {
        return rentOrderDAO.selectAll();
    }
}
