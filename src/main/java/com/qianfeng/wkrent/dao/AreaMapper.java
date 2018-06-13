package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Area;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface AreaMapper {
    int insert(Area record);

    int insertSelective(Area record);

    List<Area> selectByCity(Integer cityId);

    Area selectById(Integer areaId);

    List<Area> selectByCityName(String cityName);
}