package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.City;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CityMapper {

    /**
     * 查询热门城市
     * @return
     */
    List<City> selectHotCity();

    /**
     * 查询首字母并且去重排序
     * @return
     */
    String[] selectfirstWordDesc();

    /**
     * 查询所有城市
     * @return
     */
    List<City> selectAllCity();

    /**
     * 查询所有城市并按首字母排序
     * @return
     */
    List<City> selectAllCityByWord();


    int deleteByPrimaryKey(Integer cityId);

    int insert(City record);

    int insertSelective(City record);

    City selectByPrimaryKey(Integer cityId);

    int updateByPrimaryKeySelective(City record);

    int updateByPrimaryKey(City record);
}