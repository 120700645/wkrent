package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.AreaMapper;
import com.qianfeng.wkrent.dto.Area;
import com.qianfeng.wkrent.service.IAreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AreaService implements IAreaService{

    @Autowired
    private AreaMapper areaMapper;

    @Override
    public List<Area> selectByCity(Integer cityId) {
        return areaMapper.selectByCity(cityId);
    }

    @Override
    public List<Area> selectByCityName(String cityName) {
        return areaMapper.selectByCityName(cityName);
    }
}
