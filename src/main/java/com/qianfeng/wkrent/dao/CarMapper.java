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

    /**
     * 添加车辆(动态sql)
     * @param record
     * @return
     */
    int insertSelective(Car record);

    /**
     * 通过car_id查找汽车
     * @param carId
     * @return
     */
    Car selectByPrimaryKey(Integer carId);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);

    String selectCarNameById(Integer carId);

    List<Car> selectByCityName(String cityName);
}