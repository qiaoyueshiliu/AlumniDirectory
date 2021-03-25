package com.atguigu.service.impl;

import com.atguigu.dao.UserDao;
import com.atguigu.dao.impl.UserDaoImpl;
import com.atguigu.pojo.User;
import com.atguigu.service.UserService;

//实现体
public class UserServiceImpl implements UserService {
//    Service 要操作数据库，registUser、login、existsUsername、注册
//    登录、判断用户名都要操作数据库，所有需要写一个对象
    private UserDao userDao = new UserDaoImpl();

    @Override
    public void registUser(User user) {
//        这里面需要干啥来看一下
        userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.queryUserByUsernameAndPassWord(user.getUsername(),user.getPassword());
    }

    @Override
    public boolean existsUsername(String username) {
//        最后这个，就是根据用户名查询的
//        判断一下，如果他等等于空，说明
        if (userDao.queryUserByUsername(username) == null){
            //等于null，说明没查到，没查到表示可用
            return false;
        }
//        不等于空就是有值，有值就是已经存在了
        return true;
    }
}
//写完去UserService页面生成测试
