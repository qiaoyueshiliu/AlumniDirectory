package com.atguigu.web;

import com.atguigu.dao.impl.YonghuguanliDaoImpl;
import com.atguigu.pojo.Book;
import com.atguigu.pojo.Page;
import com.atguigu.pojo.User;
import com.atguigu.service.XunxiaogianliService;
import com.atguigu.service.YonghuguanliService;
import com.atguigu.service.impl.XuexiaoguanliServiceImpl;
import com.atguigu.service.impl.YonghuguanliServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class XunxiaoguanliSerlvet extends BaseServlet {

    private XunxiaogianliService xunxiaogianliService = new XuexiaoguanliServiceImpl();

    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("YonghuguanliServlet.java:page方法");
//        1、获取请求的参数 pageNo 和 pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        String xuexiao = req.getParameter("xuexiao");
//        2、调用 BookService.page(pageNo,pageSize):page对象
        Page<User> page = xunxiaogianliService.page(pageNo,pageSize,xuexiao);

        System.out.println("yonghuguanliServlet.java:page.setUrl方法:");
        page.setUrl("manager/xunxiaoguanliSerlvet?action=page");
//        3、保存 Page 对象到 Request 域中
        req.setAttribute("page",page);
//        4、请求转发到/pages/manager/book_manager.jsp页面中
        req.getRequestDispatcher("/xuexiaogianliyuan/xuexiaoguanli.jsp").forward(req,resp);
    }

    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的参数 == 封装成为 Book 对象
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
//        2、调用 BookService.addBook() 保存图书
        xunxiaogianliService.addUser(user);
//        3、跳到图书列表页面
        // etcontextpath获取 /工程路径
        resp.sendRedirect(req.getContextPath()+"/manager/xunxiaoguanliSerlvet?action=page");
    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的 tieziid 的参数,图书编程
        int id = WebUtils.parseInt(req.getParameter("id"),0);
//        2、调用 BookService.deleteBookByTieziid 删除图书
        System.out.println("正在删除 No."+id+"用户 ...");
        xunxiaogianliService.deleteUserById(id);
        System.out.println("删除结束...");
//        3、重新定向回图书管理页面
        // etcontextpath获取 /工程路径
        resp.sendRedirect(req.getContextPath()+"/manager/xunxiaoguanliSerlvet?action=page&pageNo="+req.getParameter("pageNo"));
    }

    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 一定要在获取请求参数之前调用才有效
        req.setCharacterEncoding("UTF-8");
        // 解决响应中文乱码问题
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
//        1、获取请求的参数 == 封装成为 Book 对象
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
//        2、调用 BookService.updateBook(book); 修改图书
        xunxiaogianliService.updateUser(user);

//        req.getSession().setAttribute("xuexiao",user.getXuexiao());
//        3、重定向会图书列表管理页面
//              地址：/工程名/manager/bookServlet?action=list
        // getcontextpath获取 /工程路径
        System.out.println(req.getParameter("xuexiao"));
//        resp.sendRedirect(req.getContextPath()+"/manager/xunxiaoguanliSerlvet?action=page&pageNo="+req.getParameter("pageNo")+"&xuexiao="+req.getParameter("xuexiao"));
        req.getRequestDispatcher("/manager/xunxiaoguanliSerlvet?action=page&pageNo="+req.getParameter("pageNo")+"&xuexiao="+req.getParameter("school")).forward(req,resp);
    }

    protected void getUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的参数 图书编号
        int id = WebUtils.parseInt(req.getParameter("id"),0);
//        2、调用 bookService.queryBookById 查询图书
        User user = xunxiaogianliService.queryUserById(id);
//        3、保存到图书的 Request 域中
        req.setAttribute("user",user);
//        4、请求转发到 pages/manager/book_edit.jsp 页面
        req.getRequestDispatcher("/xuexiaogianliyuan/xuexiaoUpdate.jsp").forward(req,resp);
    }

    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、通过 BookService 查询全部图书
        List<User> users = xunxiaogianliService.queryUsers();
//        2、把全部图书保存到 Request 域中
        req.setAttribute("users",users);
//        3、请求转发到 /Register/ZhangHaoGuanLi.jsp 页面
        System.out.println("跳转开始");
        req.getRequestDispatcher("/Register/tieziguanli.jsp").forward(req,resp);
        System.out.println("跳转结束");
    }

}
