package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.RentOrderMapper;
import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.dto.RentOrder;
import com.qianfeng.wkrent.service.IRentOrderService;
import com.qianfeng.wkrent.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

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
        //总记录数
        Long count = rentOrderDAO.selectCount();
        //总页数
        Long pageCount = count % Constants.PAGE_SIZE == 0? count/Constants.PAGE_SIZE : count/Constants.PAGE_SIZE + 1;
        //订单记录
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

    /**
     * 根据状态查询
     * @param page
     * @param orderStatus
     * @return
     */
    @Override
    public PageBean<RentOrder> findInPageByStatus(int page, String orderStatus) {
        //总记录数
        Long count = rentOrderDAO.selectCountByStatus(orderStatus);
        //共多少页
        Long pageCount = count % Constants.PAGE_SIZE == 0? count/Constants.PAGE_SIZE:count/Constants.PAGE_SIZE + 1;
        //当前页面显示的记录
        List<RentOrder> rentOrders = rentOrderDAO.selectInPageByStatus((page - 1)*Constants.PAGE_SIZE + 1,page * Constants.PAGE_SIZE,orderStatus);
        PageBean pageBean = new PageBean();
        pageBean.setCount(count);
        pageBean.setList(rentOrders);
        pageBean.setPages(pageCount);
        return pageBean;
    }

    @Override
    public RentOrder findByPrimaryKey(int orderId) {
        return rentOrderDAO.selectByPrimaryKey(orderId);
    }

    @Override
    public int updateByPrimaryKeySelective(RentOrder rentOrder) {
        return rentOrderDAO.updateByPrimaryKeySelective(rentOrder);
    }

}
