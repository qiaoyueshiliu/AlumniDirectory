package com.atguigu.dao.impl;

import com.atguigu.dao.DoctorDao;
import com.atguigu.pojo.Book;
import com.atguigu.pojo.User;

import java.util.List;

public class DoctorDaoImpl extends BaseDao implements DoctorDao {
    @Override
    public int addUser(User user) {

        String sql = "insert into t_user(`id`,`uername`,`password`,`nickname` values(?,?,?,?))";
        return update(sql,user.getId(),user.getUsername(),user.getPassword(),user.getNickname());
    }

    @Override
    public int deleteUserById(Integer id) {
        return 0;
    }

    @Override
    public int updateUser(User user) {
        return 0;
    }

    @Override
    public User queryUserById(Integer id) {
        return null;
    }

    @Override
    public List<User> queryUser() {
        return null;
    }
}
