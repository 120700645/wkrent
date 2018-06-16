package com.qianfeng.wkrent.service.impl;


import com.qianfeng.wkrent.dao.CarMapper;
import com.qianfeng.wkrent.dto.Car;
import com.qianfeng.wkrent.dto.PageBean;
import com.qianfeng.wkrent.service.ICarService;
import com.qianfeng.wkrent.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CarService implements ICarService {


    @Autowired
    private CarMapper carDao;
    @Override
    public List<Car> findCarByTypeName(String typeName) {
        return null;
    }

    @Override
    public List<Car> selectByCityName(String cityName) {
        return carDao.selectByCityName(cityName);
    }

    @Override
    public PageBean<Car> findAllCarByPage(int page) {
        //总记录数
        Long count = carDao.selectCount();
        //总页数
        Long pageCount = count % Constants.PAGE_SIZE == 0? count/Constants.PAGE_SIZE : count/Constants.PAGE_SIZE + 1;
        //订单记录
        List<Car> cars = carDao.selectAllCarByPage((page - 1)*Constants.PAGE_SIZE + 1,page * Constants.PAGE_SIZE);
        PageBean pageBean = new PageBean();
        pageBean.setCount(count);
        pageBean.setList(cars);
        pageBean.setPages(pageCount);
        return pageBean;
    }

    @Override
    public long findCount() {
        return carDao.selectCount();
    }

    @Override
    public int deleteByPrimaryKey(int carId) {
        return carDao.deleteByPrimaryKey(carId);
    }


//    @Override
//    public List<Car> findCarByTypeId(int typeId) {
//        return carDao.selectCarByTypeId(typeId);
//    }

    @Override
    public Car findCarById(Integer carId) {
        return carDao.selectByPrimaryKey(carId);
    }

    @Override
    public int saveSelective(Car car) {
        return carDao.insertSelective(car);
    }


}
