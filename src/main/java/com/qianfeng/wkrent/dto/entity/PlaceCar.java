package com.qianfeng.wkrent.dto.entity;

import com.qianfeng.wkrent.dto.Car;
import com.qianfeng.wkrent.dto.Place;

public class PlaceCar {

    private Integer pcId;
    private Place place;
    private Car car;

    public Integer getPcId() {
        return pcId;
    }

    public void setPcId(Integer pcId) {
        this.pcId = pcId;
    }

    public Place getPlace() {
        return place;
    }

    public void setPlace(Place place) {
        this.place = place;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }
}
