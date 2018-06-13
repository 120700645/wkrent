package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.service.IPlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PlaceService implements IPlaceService {
    @Autowired
    private IPlaceService placeService;

    @Override
    public List<Place> selectByAreaName(String areaName) {
        return placeService.selectByAreaName(areaName);
    }
}
