package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.ComplaintType;

public interface ComplaintTypeMapper {
    int deleteByPrimaryKey(Integer typeId);

    int insert(ComplaintType record);

    int insertSelective(ComplaintType record);

    ComplaintType selectByPrimaryKey(Integer typeId);

    int updateByPrimaryKeySelective(ComplaintType record);

    int updateByPrimaryKey(ComplaintType record);
}