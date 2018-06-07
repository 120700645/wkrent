package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Place;

public interface PlaceMapper {
    int deleteByPrimaryKey(Short placeId);

    int insert(Place record);

    int insertSelective(Place record);

    Place selectByPrimaryKey(Short placeId);

    int updateByPrimaryKeySelective(Place record);

    int updateByPrimaryKey(Place record);
}