package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Area;

import java.util.List;

public interface AreaMapper {
    int insert(Area record);

    int insertSelective(Area record);

    List<Area> selectByCity(Integer cityId);

    Area selectById(Integer areaId);

    List<Area> selectByCityName(String cityName);
}