package com.qianfeng.wkrent.dto;

public class DayPrice {
    private Integer dpId;

    private Integer pcId;

    private Integer dbMonth;

    private Integer dpDate;

    private Integer dbPrice;

    public Integer getDpId() {
        return dpId;
    }

    public void setDpId(Integer dpId) {
        this.dpId = dpId;
    }

    public Integer getPcId() {
        return pcId;
    }

    public void setPcId(Integer pcId) {
        this.pcId = pcId;
    }

    public Integer getDbMonth() {
        return dbMonth;
    }

    public void setDbMonth(Integer dbMonth) {
        this.dbMonth = dbMonth;
    }

    public Integer getDpDate() {
        return dpDate;
    }

    public void setDpDate(Integer dpDate) {
        this.dpDate = dpDate;
    }

    public Integer getDbPrice() {
        return dbPrice;
    }

    public void setDbPrice(Integer dbPrice) {
        this.dbPrice = dbPrice;
    }
}