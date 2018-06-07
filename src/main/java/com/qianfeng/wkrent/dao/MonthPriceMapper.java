package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.MonthPrice;

public interface MonthPriceMapper {
    int deleteByPrimaryKey(Integer mpId);

    int insert(MonthPrice record);

    int insertSelective(MonthPrice record);

    MonthPrice selectByPrimaryKey(Integer mpId);

    int updateByPrimaryKeySelective(MonthPrice record);

    int updateByPrimaryKey(MonthPrice record);
}