package com.qianfeng.wkrent.service;


import com.qianfeng.wkrent.dto.Car;
import com.qianfeng.wkrent.dto.PageBean;

import java.util.List;

public interface ICarService {

    List<Car> findCarByTypeName(String typeName);

    Car findCarById(Integer carId);

    int saveSelective(Car car);

    List<Car> selectByCityName(String cityName);

    PageBean<Car> findAllCarByPage(int page);

    long findCount();

    int deleteByPrimaryKey(int carId);
}
