package com.qianfeng.wkrent.service.impl;

import com.qianfeng.wkrent.dao.ComboMapper;
import com.qianfeng.wkrent.dto.Combo;
import com.qianfeng.wkrent.service.IComboService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Create  by mjw on 2018/6/8
 */
@Service
public class ComboServiceImpl implements IComboService {

    @Autowired
    private ComboMapper comboDao;

    /**
     * 通过comboID查询自驾游组合
     * @param comboId
     * @return
     */
    @Override
    public Combo findByComboId(Integer comboId) {
        return comboDao.selectByPrimaryKey(comboId);
    }

    /**
     * 查询所有自驾游组合
     * @return
     */
    @Override
    public List<Combo> findAllCombo() {
        comboDao.selectAllCombo();
        return comboDao.selectAllCombo();
    }


}
