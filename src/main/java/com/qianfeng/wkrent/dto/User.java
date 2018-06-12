package com.qianfeng.wkrent.dto;

public class User {

    private Integer userId;

    private String userTel;

    private String userName;

    private String userCard;

    private Integer userCount;

    private Integer userFreeze;

    private Integer userUseable;

    private Integer userWkb;

    private Integer userNum;

    private Integer userLeavel;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
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

    public Integer getUserCount() {
        return userCount;
    }

    public void setUserCount(Integer userCount) {
        this.userCount = userCount;
    }

    public Integer getUserFreeze() {
        return userFreeze;
    }

    public void setUserFreeze(Integer userFreeze) {
        this.userFreeze = userFreeze;
    }

    public Integer getUserUseable() {
        return userUseable;
    }

    public void setUserUseable(Integer userUseable) {
        this.userUseable = userUseable;
    }

    public Integer getUserWkb() {
        return userWkb;
    }

    public void setUserWkb(Integer userWkb) {
        this.userWkb = userWkb;
    }

    public Integer getUserNum() {
        return userNum;
    }

    public void setUserNum(Integer userNum) {
        this.userNum = userNum;
    }

    public Integer getUserLeavel() {
        return userLeavel;
    }

    public void setUserLeavel(Integer userLeavel) {
        this.userLeavel = userLeavel;
    }
}