package com.qianfeng.wkrent.service.impl;


import com.qianfeng.wkrent.dao.CityMapper;
import com.qianfeng.wkrent.dto.City;
import com.qianfeng.wkrent.service.ICityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CityService implements ICityService{

    @Autowired
    private CityMapper cityDao;

    @Override
    public List<City> findHotCity() {
        return cityDao.selectHotCity();
    }

    @Override
    public String[] findfirstWordDesc() {
        return cityDao.selectfirstWordDesc();
    }

    @Override
    public List<City> findAllCity() {
        return cityDao.selectAllCity();
    }

    @Override
    public List<City> findAllCityByWord() {
        return cityDao.selectAllCityByWord();
    }
}
