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

public class BookServlet_qiantai extends BaseServlet{

    private BookService bookService = new BookServiceImpl();

    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的参数 pageNo 和 pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
//        2、调用 BookService.page(pageNo,pageSize):page对象
        Page<Book> page = bookService.page(pageNo,pageSize);
        //        设置 client/bookServlet_qiantai?action=page 替换为 ${requestScope.page.url 的请求地址
        System.out.println("BookServlet_qiantai.page 设置 client/bookServlet_qiantai?action=page 替换为 ${requestScope.page.url 的请求地址");
        System.out.println("setUrl client/bookServlet_qiantai?action=page");
        page.setUrl("client/bookServlet_qiantai?action=page");
//        3、保存 Page 对象到 Request 域中
        req.setAttribute("page",page);
//        4、请求转发到/pages/manager/book_manager.jsp页面中
        req.getRequestDispatcher("/MPage/MPage.jsp").forward(req,resp);
    }


    protected void pageByBankuai(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的参数 pageNo 和 pageSize
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        String lunTanSoSuo = req.getParameter("lunTanSoSuo");
//        2、调用 BookService.page(pageNo,pageSize):page对象
        Page<Book> page = bookService.pageByBankuai(pageNo,pageSize,lunTanSoSuo);
        //        设置 client/bookServlet_qiantai?action=page 替换为 ${requestScope.page.url 的请求地址
        StringBuilder sb = new StringBuilder("client/bookServlet_qiantai?action=pageByBankuai");
        if (req.getParameter("lunTanSoSuo") != null){
            sb.append("&lunTanSoSuo=").append(req.getParameter("lunTanSoSuo"));
        }
        page.setUrl(sb.toString());
//        3、保存 Page 对象到 Request 域中
        req.setAttribute("page",page);
//        4、请求转发到/pages/manager/book_manager.jsp页面中
        req.getRequestDispatcher("/MPage/MPage.jsp").forward(req,resp);
    }

    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("BookServlet_qiantai 的 add 开始运行");
        System.out.println("获取 pageNo ");
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        pageNo+=1;
//        1、获取请求的参数 == 封装成为 Book 对象
        Book book = WebUtils.copyParamToBean(req.getParameterMap(),new Book());
//        2、调用 BookService.addBook() 保存图书
        bookService.addBook(book);
//        3、跳到图书列表页面
        // etcontextpath获取 /工程路径
        resp.sendRedirect(req.getContextPath()+"/client/bookServlet_qiantai?action=page&pageNo="+pageNo);
    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
        req.getRequestDispatcher("/MPage/MPage.jsp").forward(req,resp);
        System.out.println("跳转结束");
    }

}
