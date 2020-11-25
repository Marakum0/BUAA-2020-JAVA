package com.wx.restaurant.mybatis.mapper;

import com.wx.restaurant.mybatis.model.Dish;
import com.wx.restaurant.mybatis.model.DishDetail;
import com.wx.restaurant.util.MyMapper;

import java.util.List;

public interface DishMapper extends MyMapper<Dish> {

    List<DishDetail> selcetDish();
}