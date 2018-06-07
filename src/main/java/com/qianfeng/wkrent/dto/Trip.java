package com.qianfeng.wkrent.dto;

public class Trip {
    private Integer tripId;

    private String tripName;

    private String tripTake;

    private String tripBack;

    private Integer tripKm;

    private Integer tripTime;

    private String tripRoute;

    private Integer scenicId;

    private Integer hotelId;

    public Integer getTripId() {
        return tripId;
    }

    public void setTripId(Integer tripId) {
        this.tripId = tripId;
    }

    public String getTripName() {
        return tripName;
    }

    public void setTripName(String tripName) {
        this.tripName = tripName == null ? null : tripName.trim();
    }

    public String getTripTake() {
        return tripTake;
    }

    public void setTripTake(String tripTake) {
        this.tripTake = tripTake == null ? null : tripTake.trim();
    }

    public String getTripBack() {
        return tripBack;
    }

    public void setTripBack(String tripBack) {
        this.tripBack = tripBack == null ? null : tripBack.trim();
    }

    public Integer getTripKm() {
        return tripKm;
    }

    public void setTripKm(Integer tripKm) {
        this.tripKm = tripKm;
    }

    public Integer getTripTime() {
        return tripTime;
    }

    public void setTripTime(Integer tripTime) {
        this.tripTime = tripTime;
    }

    public String getTripRoute() {
        return tripRoute;
    }

    public void setTripRoute(String tripRoute) {
        this.tripRoute = tripRoute == null ? null : tripRoute.trim();
    }

    public Integer getScenicId() {
        return scenicId;
    }

    public void setScenicId(Integer scenicId) {
        this.scenicId = scenicId;
    }

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }
}