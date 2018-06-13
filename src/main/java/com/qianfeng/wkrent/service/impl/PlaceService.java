package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.PlaceMapper;
import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.service.IPlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PlaceService implements IPlaceService {

    @Autowired
    private PlaceMapper placeMapper;

    @Override
    public Integer findIdByName(String placeName) {
        return placeMapper.selectIdByName(placeName);
    }
}
