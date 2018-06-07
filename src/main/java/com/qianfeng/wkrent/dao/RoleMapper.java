package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Role;
import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public interface RoleMapper {

    Role selectById(int id);
}
