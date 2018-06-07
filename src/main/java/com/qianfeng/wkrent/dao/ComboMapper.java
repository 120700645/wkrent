package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Combo;

public interface ComboMapper {
    int deleteByPrimaryKey(Short comboId);

    int insert(Combo record);

    int insertSelective(Combo record);

    Combo selectByPrimaryKey(Short comboId);

    int updateByPrimaryKeySelective(Combo record);

    int updateByPrimaryKeyWithBLOBs(Combo record);

    int updateByPrimaryKey(Combo record);
}