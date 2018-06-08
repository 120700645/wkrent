package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Combo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ComboMapper {

    int deleteByPrimaryKey(Integer comboId);

    int insert(Combo record);

    int insertSelective(Combo record);

    /**
     * 通过id查找自驾游组合套餐
     * @param comboId
     * @return
     */
    Combo selectByPrimaryKey(Integer comboId);

    /**
     * 查找所有自驾游组合套餐
     * @return
     */
    List<Combo> selectAllCombo();

    int updateByPrimaryKeySelective(Combo record);

    int updateByPrimaryKeyWithBLOBs(Combo record);

    int updateByPrimaryKey(Combo record);
}