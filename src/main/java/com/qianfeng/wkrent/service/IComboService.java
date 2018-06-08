package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.Combo;

import java.util.List;

/**
 * Create  by mjw on 2018/6/8
 */
public interface IComboService {

    Combo findByComboId(Integer comboId);

    List<Combo> findAllCombo();
}
