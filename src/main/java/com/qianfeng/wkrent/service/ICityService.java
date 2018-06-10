package com.qianfeng.wkrent.service;


import com.qianfeng.wkrent.dto.City;

import java.util.List;

public interface ICityService {

    List<City> findHotCity();

    String[] findfirstWordDesc();

    List<City> findAllCity();

    List<City> findAllCityByWord();
}
