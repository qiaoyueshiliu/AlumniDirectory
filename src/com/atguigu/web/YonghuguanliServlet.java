package com.atguigu.web;

import com.atguigu.dao.impl.YonghuguanliDaoImpl;
import com.atguigu.pojo.User;
import com.atguigu.service.YonghuguanliService;
import com.atguigu.service.impl.YonghuguanliServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class YonghuguanliServlet extends BaseServlet {

    private YonghuguanliService yonghuguanliService = new YonghuguanliServiceImpl();

    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的参数 == 封装成为 Book 对象
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
//        2、调用 BookService.addBook() 保存图书
        yonghuguanliService.addUser(user);
//        3、跳到图书列表页面
        resp.sendRedirect(req.getContextPath()+"/manager/yonghuguanliServlet?action=list");
    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的 tieziid 的参数,图书编程
        int id = WebUtils.parseInt(req.getParameter("id"),0);
//        2、调用 BookService.deleteBookByTieziid 删除图书
        System.out.println("正在删除 No."+id+"用户 ...");
        yonghuguanliService.deleteUserById(id);
        System.out.println("删除结束...");
//        3、重新定向回图书管理页面
        resp.sendRedirect(req.getContextPath()+"/manager/yonghuguanliServlet?action=list");
    }

    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }


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
