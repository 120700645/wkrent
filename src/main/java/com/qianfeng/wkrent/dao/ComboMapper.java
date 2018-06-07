package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Combo;

public interface ComboMapper {
    int deleteByPrimaryKey(Integer comboId);

    int insert(Combo record);

    int insertSelective(Combo record);

    Combo selectByPrimaryKey(Integer comboId);

    int updateByPrimaryKeySelective(Combo record);

    int updateByPrimaryKeyWithBLOBs(Combo record);

    int updateByPrimaryKey(Combo record);
}