package com.atguigu.dao;

import com.atguigu.dao.impl.BaseDao;
import com.atguigu.pojo.Book;
import com.atguigu.pojo.User;

import java.util.List;

public interface DoctorDao {

    public int addUser(User user);

    public int deleteUserById(Integer id);

    public int updateUser(User user);

    public User queryUserById(Integer id);

    public List<User> queryUser();

}
