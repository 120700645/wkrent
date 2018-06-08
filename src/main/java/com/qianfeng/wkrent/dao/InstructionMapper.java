package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Instruction;

public interface InstructionMapper {

    int deleteByPrimaryKey( Integer instructionId);

    int insert(Instruction record);

    int insertSelective(Instruction record);

    Instruction selectByPrimaryKey(Integer instructionId);

    int updateByPrimaryKeySelective(Instruction record);

    int updateByPrimaryKeyWithBLOBs(Instruction record);
}