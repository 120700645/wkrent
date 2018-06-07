package com.qianfeng.wkrent.dto;

import java.util.Date;

public class RentOrder {
    private Short orderId;

    private Short carId;

    private String orderNum;

    private Date orderTakeTime;

    private String orderTakePlace;

    private Date orderReturnTime;

    private String orderReturnPlace;

    private Short orderPrice;

    private Short orderInsurance;

    private Short orderCharge;

    private Short orderDiscount;

    private Short orderTotal;

    private String orderStatus;

    public Short getOrderId() {
        return orderId;
    }

    public void setOrderId(Short orderId) {
        this.orderId = orderId;
    }

    public Short getCarId() {
        return carId;
    }

    public void setCarId(Short carId) {
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

    public String getOrderTakePlace() {
        return orderTakePlace;
    }

    public void setOrderTakePlace(String orderTakePlace) {
        this.orderTakePlace = orderTakePlace == null ? null : orderTakePlace.trim();
    }

    public Date getOrderReturnTime() {
        return orderReturnTime;
    }

    public void setOrderReturnTime(Date orderReturnTime) {
        this.orderReturnTime = orderReturnTime;
    }

    public String getOrderReturnPlace() {
        return orderReturnPlace;
    }

    public void setOrderReturnPlace(String orderReturnPlace) {
        this.orderReturnPlace = orderReturnPlace == null ? null : orderReturnPlace.trim();
    }

    public Short getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Short orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Short getOrderInsurance() {
        return orderInsurance;
    }

    public void setOrderInsurance(Short orderInsurance) {
        this.orderInsurance = orderInsurance;
    }

    public Short getOrderCharge() {
        return orderCharge;
    }

    public void setOrderCharge(Short orderCharge) {
        this.orderCharge = orderCharge;
    }

    public Short getOrderDiscount() {
        return orderDiscount;
    }

    public void setOrderDiscount(Short orderDiscount) {
        this.orderDiscount = orderDiscount;
    }

    public Short getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(Short orderTotal) {
        this.orderTotal = orderTotal;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }
}