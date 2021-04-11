package com.atguigu.test;

import com.atguigu.service.YonghuguanliService;
import com.atguigu.service.impl.YonghuguanliServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class YonghuguanliServletTest {

    private YonghuguanliService yonghuguanliService = new YonghuguanliServiceImpl();

    @Test
    public void add() {
    }

    @Test
    public void delete() {
        System.out.println("正在删除...");
        yonghuguanliService.deleteUserById(3);
        System.out.println("删除结束...");
    }

    @Test
    public void update() {
    }

    @Test
    public void list() {
    }
}