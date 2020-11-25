package com.wx.restaurant.service;

/**
 * @param
 * @author
 * @date 2018/8/12 10:54
 */

import com.wx.restaurant.mybatis.mapper.DishDTOMapper;
import com.wx.restaurant.mybatis.mapper.DishMapper;
import com.wx.restaurant.mybatis.model.Dish;
import com.wx.restaurant.mybatis.model.DishDTO;
import com.wx.restaurant.mybatis.model.DishDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DishService {
    @Autowired
    DishDTOMapper dishDTOMapper;

    @Autowired
    DishMapper dishMapper;

    public List<DishDTO> dishList() {
        return dishDTOMapper.dishList();
    }

    public List<DishDetail> selcetDish() {
        return dishMapper.selcetDish();
    }

    public int add(Dish dish) {
        return dishMapper.insert(dish);
    }

}