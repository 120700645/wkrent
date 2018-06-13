package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.entity.PlaceCar;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;


public interface PlaceCarMapper {
    List<PlaceCar> selectByPlaceId(int id);
}
