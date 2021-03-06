package com.atguigu.test;

import com.atguigu.dao.UserDao;
import com.atguigu.dao.YonghuguanliDao;
import com.atguigu.dao.impl.UserDaoImpl;
import com.atguigu.dao.impl.YonghuguanliDaoImpl;
import com.atguigu.pojo.Book;
import com.atguigu.pojo.User;
import org.junit.Test;

import static org.junit.Assert.*;

public class YonghuguanliDaoTest {

    UserDao userDao = new UserDaoImpl();

    private YonghuguanliDao yonghuguanliDao = new YonghuguanliDaoImpl();

    @Test
    public void addUser() {
    }

    @Test
    public void deleteUserById() {
    }

    @Test
    public void updateUser() {
        yonghuguanliDao.updateUser(new User(42,"fangwei11","123456","2345","2345","2345",2345,"2345"));
    }

    @Test
    public void queryUserById() {
    }

    @Test
    public void queryUsers() {
    }

    @Test
    public void queryForPageTotalCount() {
        System.out.println("打印用户总数：");
        System.out.println(yonghuguanliDao.queryForPageTotalCount()) ;
    }

    @Test
    public void queryForPageItems() {
        for (User book : yonghuguanliDao.queryForPageItems(1, 4)) {
            System.out.println(book);
        }
    }
}