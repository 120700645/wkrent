package com.qianfeng.wkrent.dto;

public class DayPrice {
    private Short dpId;

    private Short pcId;

    private Short dbMonth;

    private Short dpDate;

    private Short dbPrice;

    public Short getDpId() {
        return dpId;
    }

    public void setDpId(Short dpId) {
        this.dpId = dpId;
    }

    public Short getPcId() {
        return pcId;
    }

    public void setPcId(Short pcId) {
        this.pcId = pcId;
    }

    public Short getDbMonth() {
        return dbMonth;
    }

    public void setDbMonth(Short dbMonth) {
        this.dbMonth = dbMonth;
    }

    public Short getDpDate() {
        return dpDate;
    }

    public void setDpDate(Short dpDate) {
        this.dpDate = dpDate;
    }

    public Short getDbPrice() {
        return dbPrice;
    }

    public void setDbPrice(Short dbPrice) {
        this.dbPrice = dbPrice;
    }
}