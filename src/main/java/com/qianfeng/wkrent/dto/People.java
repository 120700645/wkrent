package com.qianfeng.wkrent.dto;

public class People {
    private Short peopleId;

    private String peopleName;

    public Short getPeopleId() {
        return peopleId;
    }

    public void setPeopleId(Short peopleId) {
        this.peopleId = peopleId;
    }

    public String getPeopleName() {
        return peopleName;
    }

    public void setPeopleName(String peopleName) {
        this.peopleName = peopleName == null ? null : peopleName.trim();
    }
}