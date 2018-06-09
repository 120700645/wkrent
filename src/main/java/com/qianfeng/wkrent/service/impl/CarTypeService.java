package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.CarTypeMapper;
import com.qianfeng.wkrent.dto.CarType;
import com.qianfeng.wkrent.service.ICarTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarTypeService implements ICarTypeService{

    @Autowired
    private CarTypeMapper carTypeDao;
    @Override
    public List<CarType> findAllCarType() {
        return carTypeDao.selectAllCarType();
    }
}
