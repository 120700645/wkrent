package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Car;

public interface CarMapper {
    int deleteByPrimaryKey(Short carId);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(Short carId);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);
}