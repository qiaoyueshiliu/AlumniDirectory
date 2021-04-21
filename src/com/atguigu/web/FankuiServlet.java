package com.atguigu.web;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Fankui;
import com.atguigu.pojo.Page;
import com.atguigu.service.BookService;
import com.atguigu.service.FankuiService;
import com.atguigu.service.impl.BookServiceImpl;
import com.atguigu.service.impl.FankuiServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class FankuiServlet extends BaseServlet{


    private FankuiService bookService = new FankuiServiceImpl();

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
        Page<Fankui> page = bookService.page(pageNo,pageSize);

        System.out.println("setUrl manager/bookServlet?action=page");
        page.setUrl("manager/fankuiServlet?action=page");
//        3、保存 Page 对象到 Request 域中
        req.setAttribute("page",page);
//        4、请求转发到/pages/manager/book_manager.jsp页面中
        req.getRequestDispatcher("/Fankui/ManagerFankui.jsp").forward(req,resp);

    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的 tieziid 的参数,图书编程
        int fankuiId = WebUtils.parseInt(req.getParameter("fankuiId"),0);
//        2、调用 BookService.deleteBookByTieziid 删除图书
        bookService.deleteBookByTieziid(fankuiId);

//        3、重新定向回图书管理页面
        // etcontextpath获取 /工程路径

        resp.sendRedirect(req.getContextPath()+"/manager/fankuiServlet?action=page&pageNo="+req.getParameter("pageNo"));
    }

}
