package com.qianfeng.wkrent.dto;

public class Hotel {
    private Integer hotelId;

    private String hotelName;

    private String hotelDesc;

    private String hotelAddress;

    private Integer hotelStar;

    private String hotelService;

    private String hotelImg1;

    private String hotelImg2;

    private String hotelImg3;

    public Integer getHotelId() {
        return hotelId;
    }

    public void setHotelId(Integer hotelId) {
        this.hotelId = hotelId;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName == null ? null : hotelName.trim();
    }

    public String getHotelDesc() {
        return hotelDesc;
    }

    public void setHotelDesc(String hotelDesc) {
        this.hotelDesc = hotelDesc == null ? null : hotelDesc.trim();
    }

    public String getHotelAddress() {
        return hotelAddress;
    }

    public void setHotelAddress(String hotelAddress) {
        this.hotelAddress = hotelAddress == null ? null : hotelAddress.trim();
    }

    public Integer getHotelStar() {
        return hotelStar;
    }

    public void setHotelStar(Integer hotelStar) {
        this.hotelStar = hotelStar;
    }

    public String getHotelService() {
        return hotelService;
    }

    public void setHotelService(String hotelService) {
        this.hotelService = hotelService == null ? null : hotelService.trim();
    }

    public String getHotelImg1() {
        return hotelImg1;
    }

    public void setHotelImg1(String hotelImg1) {
        this.hotelImg1 = hotelImg1 == null ? null : hotelImg1.trim();
    }

    public String getHotelImg2() {
        return hotelImg2;
    }

    public void setHotelImg2(String hotelImg2) {
        this.hotelImg2 = hotelImg2 == null ? null : hotelImg2.trim();
    }

    public String getHotelImg3() {
        return hotelImg3;
    }

    public void setHotelImg3(String hotelImg3) {
        this.hotelImg3 = hotelImg3 == null ? null : hotelImg3.trim();
    }
}