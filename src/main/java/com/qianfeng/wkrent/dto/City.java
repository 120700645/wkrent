package com.qianfeng.wkrent.dto;

public class City {
    private Short cityId;

    private String cityName;

    private String cityFirstWord;

    private String cityHot;

    public Short getCityId() {
        return cityId;
    }

    public void setCityId(Short cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName == null ? null : cityName.trim();
    }

    public String getCityFirstWord() {
        return cityFirstWord;
    }

    public void setCityFirstWord(String cityFirstWord) {
        this.cityFirstWord = cityFirstWord == null ? null : cityFirstWord.trim();
    }

    public String getCityHot() {
        return cityHot;
    }

    public void setCityHot(String cityHot) {
        this.cityHot = cityHot == null ? null : cityHot.trim();
    }
}