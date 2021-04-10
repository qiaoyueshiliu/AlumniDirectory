package com.atguigu.web;

import com.atguigu.pojo.User;
import com.atguigu.service.YonghuguanliService;
import com.atguigu.service.impl.YonghuguanliServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class YonghuguanliServlet extends BookServlet{

    private YonghuguanliService yonghuguanliService = new YonghuguanliServiceImpl();

    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、通过 BookService 查询全部图书
        List<User> users = yonghuguanliService.queryUsers();
//        2、把全部图书保存到 Request 域中
        req.setAttribute("users",users);
//        3、请求转发到 /Register/ZhangHaoGuanLi.jsp 页面
        System.out.println("跳转开始");
        req.getRequestDispatcher("/Register/tieziguanli.jsp").forward(req,resp);
        System.out.println("跳转结束");
    }

}
