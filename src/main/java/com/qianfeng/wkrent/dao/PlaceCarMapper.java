package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.entity.PlaceCar;
import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PlaceCarMapper {
    List<PlaceCar> selectByPlaceId(int id);

    List<PlaceCar> selectCarPlace(@Param("placeId") Integer placeId, @Param("brandList") List<String> brandList, @Param("carTypeList") List<String> carTypeList);
}
