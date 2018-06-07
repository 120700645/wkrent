package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.City;

public interface CityMapper {
    int deleteByPrimaryKey(Short cityId);

    int insert(City record);

    int insertSelective(City record);

    City selectByPrimaryKey(Short cityId);

    int updateByPrimaryKeySelective(City record);

    int updateByPrimaryKey(City record);
}