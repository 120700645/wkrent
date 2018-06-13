package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Brand;
import org.springframework.stereotype.Repository;

@Repository
public interface BrandMapper {
    int deleteByPrimaryKey(Integer brandId);

    int insert(Brand record);

    int insertSelective(Brand record);

    Brand selectByPrimaryKey(Integer brandId);

    int updateByPrimaryKeySelective(Brand record);

    int updateByPrimaryKey(Brand record);
}