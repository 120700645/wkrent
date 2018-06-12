package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Place;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PlaceMapper {
    int deleteByPrimaryKey(Integer placeId);

    int insert(Place record);

    int insertSelective(Place record);

    Place selectByPrimaryKey(Integer placeId);

    int updateByPrimaryKeySelective(Place record);

    int updateByPrimaryKey(Place record);

    List<Place> selectAll(@Param("start") int start,@Param("end") int end);

    long selectCount();
}