package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Role;

public interface RoleMapper {
    int deleteByPrimaryKey(Short roleId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Short roleId);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}