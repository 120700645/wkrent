package com.qianfeng.wkrent.dto;

public class MonthPrice {
    private Short mpId;

    private Short pcId;

    private Short dpMonth;

    private Short dpDate;

    private Short dpPrice;

    public Short getMpId() {
        return mpId;
    }

    public void setMpId(Short mpId) {
        this.mpId = mpId;
    }

    public Short getPcId() {
        return pcId;
    }

    public void setPcId(Short pcId) {
        this.pcId = pcId;
    }

    public Short getDpMonth() {
        return dpMonth;
    }

    public void setDpMonth(Short dpMonth) {
        this.dpMonth = dpMonth;
    }

    public Short getDpDate() {
        return dpDate;
    }

    public void setDpDate(Short dpDate) {
        this.dpDate = dpDate;
    }

    public Short getDpPrice() {
        return dpPrice;
    }

    public void setDpPrice(Short dpPrice) {
        this.dpPrice = dpPrice;
    }
}