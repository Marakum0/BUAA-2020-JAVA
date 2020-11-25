package com.wx.restaurant.service;

import com.wx.restaurant.exception.TipException;
import com.wx.restaurant.mybatis.mapper.AdminMapper;
import com.wx.restaurant.mybatis.model.Admin;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

@Service
public class AdminService {


    @Autowired
    private AdminMapper adminMapper;

    public Admin login(String username, String password) {
        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
            throw new TipException("用户名和密码不能为空");
        }
        Example example = new Example(Admin.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("username", username);
        long count = adminMapper.selectCountByExample(example);
        if (count < 1) {
            throw new TipException("不存在该用户");
        }
        criteria.andEqualTo("password", password);
        List<Admin> list = adminMapper.selectByExample(example);
        if (list.size() != 1) {
            throw new TipException("用户名或密码错误");
        }
        return list.get(0);
    }
}
