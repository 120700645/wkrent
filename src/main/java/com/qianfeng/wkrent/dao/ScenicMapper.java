package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Scenic;

public interface ScenicMapper {
    int deleteByPrimaryKey(Short scenicId);

    int insert(Scenic record);

    int insertSelective(Scenic record);

    Scenic selectByPrimaryKey(Short scenicId);

    int updateByPrimaryKeySelective(Scenic record);

    int updateByPrimaryKey(Scenic record);
}