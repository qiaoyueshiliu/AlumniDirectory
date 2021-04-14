//Book


package com.atguigu.test;

import com.atguigu.dao.UserDao;
import com.atguigu.dao.impl.UserDaoImpl;
import com.atguigu.pojo.User;
import org.junit.Test;

import java.sql.SQLOutput;

import static org.junit.Assert.*;

public class UserDaoTest {

//    UserDao userDao = new UserDaoImpl();
UserDao userDao = new UserDaoImpl();
    @Test
    public void queryUserByUsername() {
        UserDao userDao = new UserDaoImpl();
        if (userDao.queryUserByUsername("admin1234") == null){
            System.out.println("用户名可用！");
        }else {
            System.out.println("用户名已存在！");
        }
    }
    @Test
    public void queryUserByUsernameAndPassword(){
        if(userDao.queryUserByUsernameAndPassWord("admin","admin") == null ){
            System.out.println("用户名或密码错误");
        }else {
            System.out.println("查询成功");
        }
    }
    @Test
    public void saveUser(){
        System.out.println(userDao.saveUser(new User(null,"2021-4-14144158","123456","wzg168@qq.com","汉字","wzg168")));
    }

}