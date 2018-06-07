package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Trip;

public interface TripMapper {
    int deleteByPrimaryKey(Integer tripId);

    int insert(Trip record);

    int insertSelective(Trip record);

    Trip selectByPrimaryKey(Integer tripId);

    int updateByPrimaryKeySelective(Trip record);

    int updateByPrimaryKey(Trip record);
}