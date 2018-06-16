package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Car;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CarMapper {

    /**
     * 通过汽车类型选择租车车辆
     * @return
     */
    List<Car> selectCarByTypeName(String typeName);

    /**
     * 根据carId删除车辆
     * @param carId
     * @return
     */
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

    /**
     * 查询所有车辆
     * @return
     */
    List<Car> selectAllCarByPage(@Param("start")int start,@Param("end")int end);

    /**
     * 查询总记录数
     * @return
     */
    long selectCount();

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);

    String selectCarNameById(Integer carId);

    List<Car> selectByCityName(String cityName);
}