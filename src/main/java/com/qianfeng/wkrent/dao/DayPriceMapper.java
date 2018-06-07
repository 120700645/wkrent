package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.DayPrice;

public interface DayPriceMapper {
    int deleteByPrimaryKey(Integer dpId);

    int insert(DayPrice record);

    int insertSelective(DayPrice record);

    DayPrice selectByPrimaryKey(Integer dpId);

    int updateByPrimaryKeySelective(DayPrice record);

    int updateByPrimaryKey(DayPrice record);
}