package com.atguigu.test;

import com.atguigu.pojo.User;
import com.atguigu.service.YonghuguanliService;
import com.atguigu.service.impl.YonghuguanliServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class YonghuguanliServiceTest {

    private YonghuguanliService yonghuguanliService = new YonghuguanliServiceImpl();

    @Test
    public void addUser() {
    }

    @Test
    public void deleteUserById() {
    }

    @Test
    public void updateUser() {
        yonghuguanliService.updateUser(new User(42,"1234567","1234567",null,"1234567",null,null,null));
    }

    @Test
    public void queryUserById() {
    }

    @Test
    public void queryUsers() {
    }


    @Test
    public void page() {
        System.out.println(yonghuguanliService.page(1,4));
    }
}