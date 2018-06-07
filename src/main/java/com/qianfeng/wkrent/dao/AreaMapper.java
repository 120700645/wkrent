package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Area;

public interface AreaMapper {
    int insert(Area record);

    int insertSelective(Area record);
}