package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Tag;

public interface TagMapper {
    int deleteByPrimaryKey(Short tagId);

    int insert(Tag record);

    int insertSelective(Tag record);

    Tag selectByPrimaryKey(Short tagId);

    int updateByPrimaryKeySelective(Tag record);

    int updateByPrimaryKey(Tag record);
}