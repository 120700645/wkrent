package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.CarType;

public interface CarTypeMapper {
    int deleteByPrimaryKey(Integer typeId);

    int insert(CarType record);

    int insertSelective(CarType record);

    CarType selectByPrimaryKey(Integer typeId);

    int updateByPrimaryKeySelective(CarType record);

    int updateByPrimaryKey(CarType record);
}