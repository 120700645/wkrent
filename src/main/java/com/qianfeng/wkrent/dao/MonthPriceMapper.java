package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.MonthPrice;

public interface MonthPriceMapper {
    int deleteByPrimaryKey(Short mpId);

    int insert(MonthPrice record);

    int insertSelective(MonthPrice record);

    MonthPrice selectByPrimaryKey(Short mpId);

    int updateByPrimaryKeySelective(MonthPrice record);

    int updateByPrimaryKey(MonthPrice record);
}