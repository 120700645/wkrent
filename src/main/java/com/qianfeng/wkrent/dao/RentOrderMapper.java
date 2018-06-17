package com.qianfeng.wkrent.dao;

import com.qianfeng.wkrent.dto.Place;
import com.qianfeng.wkrent.dto.RentOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RentOrderMapper {
    int deleteByPrimaryKey(Integer orderId);

    int insert(RentOrder record);

    int insertSelective(RentOrder record);

    /**
     * 通过id查询租车订单
     * @param orderId
     * @return
     */
    RentOrder selectByPrimaryKey(Integer orderId);

    /**
     * 更新租车订单  动态sql
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(RentOrder record);

    /**
     * 更新租车订单
     * @param record
     * @return
     */
    int updateByPrimaryKey(RentOrder record);

    /**
     * 查询所有订单
     * @return
     */
    List<RentOrder> selectAll();

    /**
     * 分页查询
     * @param start
     * @param end
     * @return
     */
    List<RentOrder> selectInPage(@Param("start") int start, @Param("end") int end);

    /**
     * 查询数量
     * @return
     */
    long selectCount();

    /**
     * 通过订单状态分页查询
     * @param start
     * @param end
     * @param orderStatus
     * @return
     */
    List<RentOrder> selectInPageByStatus(@Param("start")int start,@Param("end")int end,@Param("orderStatus")String orderStatus);


    /**
     * 通过状态查询条数
     * @param status
     * @return
     */
    long selectCountByStatus(@Param("status") String status);

}