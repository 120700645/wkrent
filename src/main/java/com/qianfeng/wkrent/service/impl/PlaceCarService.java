package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.PlaceCarMapper;
import com.qianfeng.wkrent.dto.entity.PlaceCar;
import com.qianfeng.wkrent.service.IPlaceCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class PlaceCarService implements IPlaceCarService {

    @Autowired
    private PlaceCarMapper placeCarMapper;

    @Autowired
    private PlaceService placeService;

    @Override
    public List<PlaceCar> findCarById(String placeName) {
        int placeId = placeService.findIdByName(placeName);
        return placeCarMapper.selectByPlaceId(placeId);
    }

    @Override
    public List<PlaceCar> findCarPlace(String placeName, List<String> brandList, List<String> carTypeList,
                                       String startStamp) {
        SimpleDateFormat sdf =   new SimpleDateFormat( "HH:mm");
        int placeId = placeService.findIdByName(placeName);
        List<PlaceCar> placeCars = placeCarMapper.selectCarPlace(placeId, brandList, carTypeList);
        String placeStartTime = null;
        String placeEndTime = null;
        for (PlaceCar placeCar : placeCars) {
            placeStartTime = placeCar.getPlace().getPlaceStartTime();
            placeEndTime = placeCar.getPlace().getPlaceEndTime();
            break;
        }
        try {
            Date startTime = sdf.parse(placeStartTime);
            Date endTime = sdf.parse(placeEndTime);
            Date chooesTime = sdf.parse(startStamp);
            System.out.println(chooesTime.getTime() < startTime.getTime() || chooesTime.getTime() > endTime.getTime());
            if(chooesTime.getTime() < startTime.getTime() || chooesTime.getTime() > endTime.getTime()){
                placeCars = null;
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }


        return placeCars;

    }
}
