package com.atguigu.web;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Page;
import com.atguigu.service.BookService;
import com.atguigu.service.impl.BookServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BookServlet extends BaseServlet{


    private BookService bookService = new BookServiceImpl();

    /**
     * 处理分页功能
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的参数 pageNo 和 pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
//        2、调用 BookService.page(pageNo,pageSize):page对象
        Page<Book> page = bookService.page(pageNo,pageSize);
//        3、保存 Page 对象到 Request 域中
        req.setAttribute("page",page);
//        4、请求转发到/pages/manager/book_manager.jsp页面中
        req.getRequestDispatcher("/Register/ZhangHaoGuanLi.jsp").forward(req,resp);

    }

    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的参数 == 封装成为 Book 对象
        Book book = WebUtils.copyParamToBean(req.getParameterMap(),new Book());
//        2、调用 BookService.addBook() 保存图书
        bookService.addBook(book);
//        3、跳到图书列表页面
        resp.sendRedirect(req.getContextPath()+"/client/bookServlet_qiantai?action=page");
    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的 tieziid 的参数,图书编程
        int tieziid = WebUtils.parseInt(req.getParameter("tieziid"),0);
//        2、调用 BookService.deleteBookByTieziid 删除图书
        bookService.deleteBookByTieziid(tieziid);

//        3、重新定向回图书管理页面
        resp.sendRedirect(req.getContextPath()+"/manager/bookServlet?action=page");
    }

    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、通过 BookService 查询全部图书
        List<Book> books = bookService.queryBooks();
//        2、把全部图书保存到 Request 域中
        req.setAttribute("books",books);
//        3、请求转发到 /Register/ZhangHaoGuanLi.jsp 页面
        System.out.println("跳转开始");
        req.getRequestDispatcher("/Register/ZhangHaoGuanLi.jsp").forward(req,resp);
        System.out.println("跳转结束");
    }
}
