package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Room;

public interface RoomMapper {
    int deleteByPrimaryKey(Short roomId);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Short roomId);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);
}