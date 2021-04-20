package com.atguigu.service;

import com.atguigu.pojo.Page;
import com.atguigu.pojo.User;

import java.util.List;

public interface XunxiaogianliService {

    public void addUser(User user);

    public void deleteUserById(Integer id);

    public void updateUser(User user);

    public User queryUserById(Integer id);

    public List<User> queryUsers();

    Page<User> page(int pageNo, int pageSize,String xuexiao);

}
