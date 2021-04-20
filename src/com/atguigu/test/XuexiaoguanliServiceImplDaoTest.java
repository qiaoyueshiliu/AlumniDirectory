package com.atguigu.test;

import com.atguigu.dao.XuexiaoguanliDao;
import com.atguigu.dao.impl.XuexiaogianliDaoImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class XuexiaoguanliServiceImplDaoTest {

    private XuexiaoguanliDao xuexiaoguanliDao = new XuexiaogianliDaoImpl();

    @Test
    public void addUser() {
    }

    @Test
    public void deleteUserById() {
    }

    @Test
    public void updateUser() {
    }

    @Test
    public void queryUserById() {
    }

    @Test
    public void queryUsers() {
    }

    @Test
    public void queryForPageTotalCount() {
        System.out.println(xuexiaoguanliDao.queryForPageTotalCount("南京大学"));
    }

    @Test
    public void queryForPageItems() {
    }
}