package com.atguigu.test;

import com.atguigu.dao.DoctorDao;
import com.atguigu.dao.impl.DoctorDaoImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class DoctorServiceTest {

    private DoctorDao doctorDao = new DoctorDaoImpl();

    @Test
    public void queryUsers() {
        System.out.println("queryUsers 测试开始");


    }
}