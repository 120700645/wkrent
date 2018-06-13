package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.RentOrderMapper;
import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.dto.RentOrder;
import com.qianfeng.wkrent.service.IRentOrderService;
import com.qianfeng.wkrent.utils.Constants;
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

    /**
     * 分页查询
     * @param page
     * @return
     */
    @Override
    public PageBean<RentOrder> findInPage(int page) {
        Long count = rentOrderDAO.selectCount();
        Long pageCount = count % Constants.PAGE_SIZE == 0? count/Constants.PAGE_SIZE:count/Constants.PAGE_SIZE + 1;
        List<RentOrder> rentOrders = rentOrderDAO.selectInPage((page - 1)*Constants.PAGE_SIZE + 1,page * Constants.PAGE_SIZE);
        PageBean pageBean = new PageBean();
        pageBean.setCount(count);
        pageBean.setList(rentOrders);
        pageBean.setPages(pageCount);
        return pageBean;
    }

    @Override
    public long count() {
        return rentOrderDAO.selectCount();
    }
}
