package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Brand;

public interface BrandMapper {
    int deleteByPrimaryKey(Short brandId);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(Short brandId);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKey(Brand record);
}