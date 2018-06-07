package com.qianfeng.wkrent.dto;

public class Trip {
    private Short tripId;

    private String tripName;

    private String tripTake;

    private String tripBack;

    private Short tripKm;

    private Short tripTime;

    private String tripRoute;

    private Short scenicId;

    private Short hotelId;

    public Short getTripId() {
        return tripId;
    }

    public void setTripId(Short tripId) {
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

    public Short getTripKm() {
        return tripKm;
    }

    public void setTripKm(Short tripKm) {
        this.tripKm = tripKm;
    }

    public Short getTripTime() {
        return tripTime;
    }

    public void setTripTime(Short tripTime) {
        this.tripTime = tripTime;
    }

    public String getTripRoute() {
        return tripRoute;
    }

    public void setTripRoute(String tripRoute) {
        this.tripRoute = tripRoute == null ? null : tripRoute.trim();
    }

    public Short getScenicId() {
        return scenicId;
    }

    public void setScenicId(Short scenicId) {
        this.scenicId = scenicId;
    }

    public Short getHotelId() {
        return hotelId;
    }

    public void setHotelId(Short hotelId) {
        this.hotelId = hotelId;
    }
}