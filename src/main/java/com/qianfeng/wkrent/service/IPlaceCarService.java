package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.entity.PlaceCar;

import java.util.List;

public interface IPlaceCarService {
    List<PlaceCar> findCarById(String placeName);
}
