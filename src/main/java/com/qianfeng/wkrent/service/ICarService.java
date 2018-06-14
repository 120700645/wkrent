package com.qianfeng.wkrent.service;


import com.qianfeng.wkrent.dto.Car;

import java.util.List;

public interface ICarService {

    List<Car> findCarByTypeName(String typeName);

    Car findCarById(Integer carId);

    int saveSelective(Car car);
}
