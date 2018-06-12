package com.qianfeng.wkrent.dto;

import java.util.Date;

public class RentOrder {
    private Integer orderId;

    private Integer carId;

    private String orderNum;

    private Date orderTakeTime;

    private Date orderReturnTime;

    private Integer orderPrice;

    private Integer orderInsurance;

    private Integer orderCharge;

    private Integer orderDiscount;

    private Integer orderTotal;

    private String orderStatus;

    private String carName;

    private Place takePlace;

    private Place returnPlace;

    public Place getTakePlace() {
        return takePlace;
    }

    public void setTakePlace(Place takePlace) {
        this.takePlace = takePlace;
    }

    public Place getReturnPlace() {
        return returnPlace;
    }

    public void setReturnPlace(Place returnPlace) {
        this.returnPlace = returnPlace;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum == null ? null : orderNum.trim();
    }

    public Date getOrderTakeTime() {
        return orderTakeTime;
    }

    public void setOrderTakeTime(Date orderTakeTime) {
        this.orderTakeTime = orderTakeTime;
    }



    public Date getOrderReturnTime() {
        return orderReturnTime;
    }

    public void setOrderReturnTime(Date orderReturnTime) {
        this.orderReturnTime = orderReturnTime;
    }


    public Integer getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Integer orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Integer getOrderInsurance() {
        return orderInsurance;
    }

    public void setOrderInsurance(Integer orderInsurance) {
        this.orderInsurance = orderInsurance;
    }

    public Integer getOrderCharge() {
        return orderCharge;
    }

    public void setOrderCharge(Integer orderCharge) {
        this.orderCharge = orderCharge;
    }

    public Integer getOrderDiscount() {
        return orderDiscount;
    }

    public void setOrderDiscount(Integer orderDiscount) {
        this.orderDiscount = orderDiscount;
    }

    public Integer getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(Integer orderTotal) {
        this.orderTotal = orderTotal;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }
}