package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Trip;

public interface TripMapper {
    int deleteByPrimaryKey(Short tripId);

    int insert(Trip record);

    int insertSelective(Trip record);

    Trip selectByPrimaryKey(Short tripId);

    int updateByPrimaryKeySelective(Trip record);

    int updateByPrimaryKey(Trip record);
}