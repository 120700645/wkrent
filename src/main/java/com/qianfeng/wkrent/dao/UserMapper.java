package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

    /**
     * 查询角色信息
     * @param userTel
     * @return
     */
    List<String> selectRoles(String userTel);

    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    User selectByTel(String tel);


}