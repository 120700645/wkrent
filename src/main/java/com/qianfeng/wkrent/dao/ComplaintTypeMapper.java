package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.ComplaintType;

public interface ComplaintTypeMapper {
    int deleteByPrimaryKey(Short typeId);

    int insert(ComplaintType record);

    int insertSelective(ComplaintType record);

    ComplaintType selectByPrimaryKey(Short typeId);

    int updateByPrimaryKeySelective(ComplaintType record);

    int updateByPrimaryKey(ComplaintType record);
}