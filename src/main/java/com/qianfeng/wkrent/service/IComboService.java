package com.qianfeng.wkrent.service;

import com.qianfeng.wkrent.dto.Combo;

import java.util.List;


public interface IComboService {

    Combo findByComboId(Integer comboId);

    List<Combo> findAllCombo();
}
