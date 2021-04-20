package com.atguigu.web;

import com.atguigu.dao.impl.YonghuguanliDaoImpl;
import com.atguigu.pojo.Book;
import com.atguigu.pojo.Page;
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

    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("YonghuguanliServlet.java:page方法");
//        1、获取请求的参数 pageNo 和 pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
//        2、调用 BookService.page(pageNo,pageSize):page对象
        Page<User> page = yonghuguanliService.page(pageNo,pageSize);

        System.out.println("yonghuguanliServlet.java:page.setUrl方法:");
        page.setUrl("manager/yonghuguanliServlet?action=page");
//        3、保存 Page 对象到 Request 域中
        req.setAttribute("page",page);
//        4、请求转发到/pages/manager/book_manager.jsp页面中
        req.getRequestDispatcher("/Register/tieziguanli.jsp").forward(req,resp);
    }

    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的参数 == 封装成为 Book 对象
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
//        2、调用 BookService.addBook() 保存图书
        yonghuguanliService.addUser(user);
//        3、跳到图书列表页面
        // etcontextpath获取 /工程路径
        resp.sendRedirect(req.getContextPath()+"/manager/yonghuguanliServlet?action=page");
    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的 tieziid 的参数,图书编程
        int id = WebUtils.parseInt(req.getParameter("id"),0);
//        2、调用 BookService.deleteBookByTieziid 删除图书
        System.out.println("正在删除 No."+id+"用户 ...");
        yonghuguanliService.deleteUserById(id);
        System.out.println("删除结束...");
//        3、重新定向回图书管理页面
        // etcontextpath获取 /工程路径
        resp.sendRedirect(req.getContextPath()+"/manager/yonghuguanliServlet?action=page&pageNo="+req.getParameter("pageNo"));
    }

    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的参数 == 封装成为 Book 对象
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
//        2、调用 BookService.updateBook(book); 修改图书
            yonghuguanliService.updateUser(user);
//        3、重定向会图书列表管理页面
//              地址：/工程名/manager/bookServlet?action=list
        // getcontextpath获取 /工程路径
        resp.sendRedirect(req.getContextPath()+"/manager/yonghuguanliServlet?action=page&pageNo="+req.getParameter("pageNo"));
    }

    protected void getUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的参数 图书编号
        int id = WebUtils.parseInt(req.getParameter("id"),0);
//        2、调用 bookService.queryBookById 查询图书
        User user = yonghuguanliService.queryUserById(id);
//        3、保存到图书的 Request 域中
        req.setAttribute("user",user);

//        4、请求转发到 pages/manager/book_edit.jsp 页面
        int quanxian = WebUtils.parseInt(req.getParameter("guanliyuanquanxian"),0);
        System.out.println("管理员权限！："+quanxian);
        req.getRequestDispatcher("/Register/Yonghuxiuguanlixiugai.jsp").forward(req,resp);
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
