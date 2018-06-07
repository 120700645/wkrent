package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.CarType;

public interface CarTypeMapper {
    int deleteByPrimaryKey(Short typeId);

    int insert(CarType record);

    int insertSelective(CarType record);

    CarType selectByPrimaryKey(Short typeId);

    int updateByPrimaryKeySelective(CarType record);

    int updateByPrimaryKey(CarType record);
}