package com.qianfeng.wkrent.dto;

public class MonthPrice {
    private Integer mpId;

    private Integer pcId;

    private Integer dpMonth;

    private Integer dpDate;

    private Integer dpPrice;

    public Integer getMpId() {
        return mpId;
    }

    public void setMpId(Integer mpId) {
        this.mpId = mpId;
    }

    public Integer getPcId() {
        return pcId;
    }

    public void setPcId(Integer pcId) {
        this.pcId = pcId;
    }

    public Integer getDpMonth() {
        return dpMonth;
    }

    public void setDpMonth(Integer dpMonth) {
        this.dpMonth = dpMonth;
    }

    public Integer getDpDate() {
        return dpDate;
    }

    public void setDpDate(Integer dpDate) {
        this.dpDate = dpDate;
    }

    public Integer getDpPrice() {
        return dpPrice;
    }

    public void setDpPrice(Integer dpPrice) {
        this.dpPrice = dpPrice;
    }
}