package com.atguigu.service.impl;

import com.atguigu.dao.DoctorDao;
import com.atguigu.dao.impl.DoctorDaoImpl;
import com.atguigu.pojo.User;
import com.atguigu.service.DoctorService;

import java.util.List;

public class DoctorServiceImpl implements DoctorService {

    private DoctorDao doctorDao = new DoctorDaoImpl();

    @Override
    public List<User> queryUsers() {
        return doctorDao.queryUser();
    }
}
