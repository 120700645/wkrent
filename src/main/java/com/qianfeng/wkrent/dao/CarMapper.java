package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Car;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CarMapper {

    /**
     * 通过汽车类型选择租车车辆
     * @return
     */
    List<Car> selectCarByTypeName(String typeName);

    int deleteByPrimaryKey(Integer carId);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(Integer carId);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);

    String selectCarNameById(Integer carId);

    List<Car> selectByCityName(String cityName);
}