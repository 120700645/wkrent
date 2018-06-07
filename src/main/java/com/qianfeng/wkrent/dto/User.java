package com.qianfeng.wkrent.dto;

public class User {
    private Short userId;

    private String userTel;

    private String userName;

    private String userCard;

    private Short userCount;

    private Short userFreeze;

    private Short userUseable;

    private Short userWkb;

    private Short userNum;

    private Short userLeavel;

    public Short getUserId() {
        return userId;
    }

    public void setUserId(Short userId) {
        this.userId = userId;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel == null ? null : userTel.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserCard() {
        return userCard;
    }

    public void setUserCard(String userCard) {
        this.userCard = userCard == null ? null : userCard.trim();
    }

    public Short getUserCount() {
        return userCount;
    }

    public void setUserCount(Short userCount) {
        this.userCount = userCount;
    }

    public Short getUserFreeze() {
        return userFreeze;
    }

    public void setUserFreeze(Short userFreeze) {
        this.userFreeze = userFreeze;
    }

    public Short getUserUseable() {
        return userUseable;
    }

    public void setUserUseable(Short userUseable) {
        this.userUseable = userUseable;
    }

    public Short getUserWkb() {
        return userWkb;
    }

    public void setUserWkb(Short userWkb) {
        this.userWkb = userWkb;
    }

    public Short getUserNum() {
        return userNum;
    }

    public void setUserNum(Short userNum) {
        this.userNum = userNum;
    }

    public Short getUserLeavel() {
        return userLeavel;
    }

    public void setUserLeavel(Short userLeavel) {
        this.userLeavel = userLeavel;
    }
}