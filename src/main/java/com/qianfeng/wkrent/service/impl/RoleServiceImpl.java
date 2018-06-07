package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.RoleMapper;
import com.qianfeng.wkrent.dto.Role;
import com.qianfeng.wkrent.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements IRoleService{

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public Role findById(int id) {
        return roleMapper.selectById(id);
    }
}
