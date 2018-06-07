package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Complaint;

public interface ComplaintMapper {
    int deleteByPrimaryKey(Short complaintId);

    int insert(Complaint record);

    int insertSelective(Complaint record);

    Complaint selectByPrimaryKey(Short complaintId);

    int updateByPrimaryKeySelective(Complaint record);

    int updateByPrimaryKey(Complaint record);
}