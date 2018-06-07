package com.qianfeng.wkrent.dto;

public class Ticket {
    private Short ticketId;

    private Short tripId;

    private String ticketName;

    private Short ticketNum;

    private Short ticketPrice;

    public Short getTicketId() {
        return ticketId;
    }

    public void setTicketId(Short ticketId) {
        this.ticketId = ticketId;
    }

    public Short getTripId() {
        return tripId;
    }

    public void setTripId(Short tripId) {
        this.tripId = tripId;
    }

    public String getTicketName() {
        return ticketName;
    }

    public void setTicketName(String ticketName) {
        this.ticketName = ticketName == null ? null : ticketName.trim();
    }

    public Short getTicketNum() {
        return ticketNum;
    }

    public void setTicketNum(Short ticketNum) {
        this.ticketNum = ticketNum;
    }

    public Short getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(Short ticketPrice) {
        this.ticketPrice = ticketPrice;
    }
}