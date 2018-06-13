package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.PlaceMapper;
import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.service.IPlaceService;
import com.qianfeng.wkrent.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaceService implements IPlaceService {



    @Autowired
    private PlaceMapper placeMapper;


    /**
     * 分页查询
     * @param page 页数
     * @return
     */
    @Override
    public PageBean<Place> findAll(int page) {
        Long count = placeMapper.selectCount();
        Long pageCount = count % Constants.PAGE_SIZE == 0? count/Constants.PAGE_SIZE:count/Constants.PAGE_SIZE + 1;
        List<Place> places = placeMapper.selectAll((page - 1)*Constants.PAGE_SIZE + 1,page * Constants.PAGE_SIZE);
        PageBean pageBean = new PageBean();
        pageBean.setCount(count);
        pageBean.setList(places);
        pageBean.setPages(pageCount);
        return pageBean;
    }

    /**
     * 查询数量
     * @return
     */
    @Override
    public long count() {
        return placeMapper.selectCount();
    }
}
