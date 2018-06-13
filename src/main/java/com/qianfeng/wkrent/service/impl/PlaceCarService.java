package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.PlaceCarMapper;
import com.qianfeng.wkrent.dao.PlaceMapper;
import com.qianfeng.wkrent.dto.entity.PlaceCar;
import com.qianfeng.wkrent.service.IPlaceCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaceCarService implements IPlaceCarService{

    @Autowired
    private PlaceCarMapper placeCarMapper;

    @Autowired
    private PlaceService placeService;

    @Override
    public List<PlaceCar> findCarById(String placeName) {
        int placeId = placeService.findIdByName(placeName);
        return placeCarMapper.selectByPlaceId(placeId);
    }
}
