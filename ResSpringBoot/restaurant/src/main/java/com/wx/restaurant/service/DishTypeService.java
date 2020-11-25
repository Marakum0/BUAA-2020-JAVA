package com.wx.restaurant.service;


import com.wx.restaurant.mybatis.mapper.DishTypeMapper;
import com.wx.restaurant.mybatis.model.DishType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DishTypeService {
    @Autowired
    private DishTypeMapper dishTypeMapper;


    public List<DishType> dishTypeList() {
        return dishTypeMapper.selectAll();
    }


    public int add(DishType dishType) {
        return dishTypeMapper.insert(dishType);
    }
}
