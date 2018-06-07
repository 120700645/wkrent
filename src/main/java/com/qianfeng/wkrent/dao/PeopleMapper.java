package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.People;

public interface PeopleMapper {
    int deleteByPrimaryKey(Short peopleId);

    int insert(People record);

    int insertSelective(People record);

    People selectByPrimaryKey(Short peopleId);

    int updateByPrimaryKeySelective(People record);

    int updateByPrimaryKey(People record);
}