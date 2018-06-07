package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Hotel;

public interface HotelMapper {
    int deleteByPrimaryKey(Short hotelId);

    int insert(Hotel record);

    int insertSelective(Hotel record);

    Hotel selectByPrimaryKey(Short hotelId);

    int updateByPrimaryKeySelective(Hotel record);

    int updateByPrimaryKey(Hotel record);
}