package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.dto.Place;



public interface IPlaceService {
    PageBean<Place> findAll(int page);
    long count();
}

