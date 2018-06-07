package com.qianfeng.wkrent.dto;

public class Room {
    private Short roomId;

    private String roomName;

    private String roomBed;

    private String roomBreakfast;

    private Short roomArea;

    private Short roomPrice;

    private Short hotelId;

    public Short getRoomId() {
        return roomId;
    }

    public void setRoomId(Short roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName == null ? null : roomName.trim();
    }

    public String getRoomBed() {
        return roomBed;
    }

    public void setRoomBed(String roomBed) {
        this.roomBed = roomBed == null ? null : roomBed.trim();
    }

    public String getRoomBreakfast() {
        return roomBreakfast;
    }

    public void setRoomBreakfast(String roomBreakfast) {
        this.roomBreakfast = roomBreakfast == null ? null : roomBreakfast.trim();
    }

    public Short getRoomArea() {
        return roomArea;
    }

    public void setRoomArea(Short roomArea) {
        this.roomArea = roomArea;
    }

    public Short getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(Short roomPrice) {
        this.roomPrice = roomPrice;
    }

    public Short getHotelId() {
        return hotelId;
    }

    public void setHotelId(Short hotelId) {
        this.hotelId = hotelId;
    }
}