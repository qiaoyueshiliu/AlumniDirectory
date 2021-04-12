package com.atguigu.dao;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.User;

import java.util.List;

public interface YonghuguanliDao {

    public int addUser(User user);

    public int deleteUserById(Integer id);

    public int updateUser(User user);

    public User queryUserById(Integer id);

    public List<User> queryUsers();

    Integer queryForPageTotalCount();

    List<User> queryForPageItems(int begin, int pageSize);

}
