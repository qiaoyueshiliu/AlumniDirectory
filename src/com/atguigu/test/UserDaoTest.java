package com.atguigu.test;

import com.alibaba.druid.pool.vendor.SybaseExceptionSorter;
import com.atguigu.dao.UserDao;
import com.atguigu.dao.impl.UserDaoImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserDaoTest {

    @Test
    public void queryUserByUsername() {
        UserDao userDao = new UserDaoImpl();
        System.out.println( userDao.queryUserByUsername("admin") );
    }

    @Test
    public void queryUserByUsernameAndPassWord() {
    }

    @Test
    public void saveUser() {
    }
}