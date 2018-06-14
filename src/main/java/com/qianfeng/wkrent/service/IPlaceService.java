package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.Place;

import java.util.List;

public interface IPlaceService {
    Integer findIdByName(String placeName);

    List<Place> selectByAreaName(String areaName);
}
