package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.BrandMapper;
import com.qianfeng.wkrent.dto.Brand;
import com.qianfeng.wkrent.service.IBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BrandService implements IBrandService {

    @Autowired
    private BrandMapper brandMapper;

    @Override
    public List<Brand> findAll() {
        return brandMapper.selectAll();
    }
}
