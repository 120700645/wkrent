package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.Place;

import java.util.List;

public interface IPlaceService {
    List<Place> selectByAreaName(String areaName);
}
