package com.atguigu.service.impl;

import com.atguigu.dao.YonghuguanliDao;
import com.atguigu.dao.impl.YonghuguanliDaoImpl;
import com.atguigu.pojo.User;
import com.atguigu.service.YonghuguanliService;

import java.util.List;

public class YonghuguanliServiceImpl implements YonghuguanliService {

    private YonghuguanliDao yonghuguanliDao = new YonghuguanliDaoImpl();

    @Override
    public void addUser(User user) {
        yonghuguanliDao.addUser(user);
    }

    @Override
    public void deleteUserById(Integer id) {
        yonghuguanliDao.deleteUserById(id);
    }

    @Override
    public void updateUser(User user) {
        yonghuguanliDao.updateUser(user);
    }

    @Override
    public User queryUserById(Integer id) {
        return yonghuguanliDao.queryUserById(id);
    }

    @Override
    public List<User> queryUsers() {
        return yonghuguanliDao.queryUsers();
    }
}
