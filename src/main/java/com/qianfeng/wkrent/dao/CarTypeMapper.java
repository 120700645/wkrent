package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.CarType;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CarTypeMapper {

    List<CarType> selectAllCarType();

    int deleteByPrimaryKey(Integer typeId);

    int insert(CarType record);

    int insertSelective(CarType record);

    CarType selectByPrimaryKey(Integer typeId);

    int updateByPrimaryKeySelective(CarType record);

    int updateByPrimaryKey(CarType record);
}