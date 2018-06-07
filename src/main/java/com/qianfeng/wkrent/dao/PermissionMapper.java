package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Permission;

public interface PermissionMapper {
    int deleteByPrimaryKey(Short permissionId);

    int insert(Permission record);

    int insertSelective(Permission record);

    Permission selectByPrimaryKey(Short permissionId);

    int updateByPrimaryKeySelective(Permission record);

    int updateByPrimaryKey(Permission record);
}