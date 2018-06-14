package com.qianfeng.wkrent.service.impl;


import com.qianfeng.wkrent.dao.CarMapper;
import com.qianfeng.wkrent.dto.Car;
import com.qianfeng.wkrent.service.ICarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CarService implements ICarService {


    @Autowired
    private CarMapper carDao;
    @Override
    public List<Car> findCarByTypeName(String typeName) {
        return null;
    }

    @Override
    public List<Car> selectByCityName(String cityName) {
        return carDao.selectByCityName(cityName);
    }


//    @Override
//    public List<Car> findCarByTypeId(int typeId) {
//        return carDao.selectCarByTypeId(typeId);
//    }

    @Override
    public Car findCarById(Integer carId) {
        return carDao.selectByPrimaryKey(carId);
    }

    @Override
    public int saveSelective(Car car) {
        return carDao.insertSelective(car);
    }
}
