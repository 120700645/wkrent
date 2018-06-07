package com.qianfeng.wkrent.dto;

public class Scenic {
    private Short scenicId;

    private String scenicName;

    private String scenicImg;

    private String scenicDesc;

    private String scenicDining;

    private String scenicLongitude;

    private String scenicLatitude;

    public Short getScenicId() {
        return scenicId;
    }

    public void setScenicId(Short scenicId) {
        this.scenicId = scenicId;
    }

    public String getScenicName() {
        return scenicName;
    }

    public void setScenicName(String scenicName) {
        this.scenicName = scenicName == null ? null : scenicName.trim();
    }

    public String getScenicImg() {
        return scenicImg;
    }

    public void setScenicImg(String scenicImg) {
        this.scenicImg = scenicImg == null ? null : scenicImg.trim();
    }

    public String getScenicDesc() {
        return scenicDesc;
    }

    public void setScenicDesc(String scenicDesc) {
        this.scenicDesc = scenicDesc == null ? null : scenicDesc.trim();
    }

    public String getScenicDining() {
        return scenicDining;
    }

    public void setScenicDining(String scenicDining) {
        this.scenicDining = scenicDining == null ? null : scenicDining.trim();
    }

    public String getScenicLongitude() {
        return scenicLongitude;
    }

    public void setScenicLongitude(String scenicLongitude) {
        this.scenicLongitude = scenicLongitude == null ? null : scenicLongitude.trim();
    }

    public String getScenicLatitude() {
        return scenicLatitude;
    }

    public void setScenicLatitude(String scenicLatitude) {
        this.scenicLatitude = scenicLatitude == null ? null : scenicLatitude.trim();
    }
}