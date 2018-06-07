package com.qianfeng.wkrent.dto;

public class Place {
    private Short placeId;

    private String placeName;

    private String placeAddress;

    private String placeLongitude;

    private String placeLatitude;

    private String placeStartTime;

    private String placeEndTime;

    private String placeTel;

    public Short getPlaceId() {
        return placeId;
    }

    public void setPlaceId(Short placeId) {
        this.placeId = placeId;
    }

    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName == null ? null : placeName.trim();
    }

    public String getPlaceAddress() {
        return placeAddress;
    }

    public void setPlaceAddress(String placeAddress) {
        this.placeAddress = placeAddress == null ? null : placeAddress.trim();
    }

    public String getPlaceLongitude() {
        return placeLongitude;
    }

    public void setPlaceLongitude(String placeLongitude) {
        this.placeLongitude = placeLongitude == null ? null : placeLongitude.trim();
    }

    public String getPlaceLatitude() {
        return placeLatitude;
    }

    public void setPlaceLatitude(String placeLatitude) {
        this.placeLatitude = placeLatitude == null ? null : placeLatitude.trim();
    }

    public String getPlaceStartTime() {
        return placeStartTime;
    }

    public void setPlaceStartTime(String placeStartTime) {
        this.placeStartTime = placeStartTime == null ? null : placeStartTime.trim();
    }

    public String getPlaceEndTime() {
        return placeEndTime;
    }

    public void setPlaceEndTime(String placeEndTime) {
        this.placeEndTime = placeEndTime == null ? null : placeEndTime.trim();
    }

    public String getPlaceTel() {
        return placeTel;
    }

    public void setPlaceTel(String placeTel) {
        this.placeTel = placeTel == null ? null : placeTel.trim();
    }
}