package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.User;
import org.apache.ibatis.annotations.Param;
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

    /**
     * 更新用户信息
     * @param record
     * @return
     */
    int updateByPrimaryKey(User record);

    User selectByTel(String tel);

    /**
     * 分页查询所有用户
     * @param start
     * @param end
     * @return
     */
    List<User> selectAllUserByPage(@Param("start")int start,@Param("end")int end);

    /**
     * 查询总数量
     * @return
     */
    long selectNum();


}