package com.qianfeng.wkrent.dto;

public class Room {
    private Integer roomId;

    private String roomName;

    private String roomBed;

    private String roomBreakfast;

    private Integer roomArea;

    private Integer roomPrice;

    private Integer hotelId;

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
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

    public Integer getRoomArea() {
        return roomArea;
    }

    public void setRoomArea(Integer roomArea) {
        this.roomArea = roomArea;
    }

    public Integer getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(Integer roomPrice) {
        this.roomPrice = roomPrice;
    }

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }
}