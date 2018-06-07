package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Ticket;

public interface TicketMapper {
    int deleteByPrimaryKey(Short ticketId);

    int insert(Ticket record);

    int insertSelective(Ticket record);

    Ticket selectByPrimaryKey(Short ticketId);

    int updateByPrimaryKeySelective(Ticket record);

    int updateByPrimaryKey(Ticket record);
}