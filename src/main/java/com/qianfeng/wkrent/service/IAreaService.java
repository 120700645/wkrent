package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.Area;

import java.util.List;

public interface IAreaService {
    List<Area> selectByCity(Integer cityId);

    List<Area> selectByCityName(String cityName);
}
