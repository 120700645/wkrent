package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Instruction;

public interface InstructionMapper {
    int deleteByPrimaryKey(Short instructionId);

    int insert(Instruction record);

    int insertSelective(Instruction record);

    Instruction selectByPrimaryKey(Short instructionId);

    int updateByPrimaryKeySelective(Instruction record);

    int updateByPrimaryKeyWithBLOBs(Instruction record);
}