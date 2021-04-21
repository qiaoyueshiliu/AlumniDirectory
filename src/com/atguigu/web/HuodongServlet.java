package com.atguigu.web;

import com.atguigu.pojo.Huodong;
import com.atguigu.pojo.Page;
import com.atguigu.pojo.Xunrenqishi;
import com.atguigu.service.HuodongService;
import com.atguigu.service.XunrenqishiService;
import com.atguigu.service.impl.HuodongServiceImpl;
import com.atguigu.service.impl.XunrenqishiServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HuodongServlet extends BaseServlet{


    private HuodongService bookService = new HuodongServiceImpl();

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
        Page<Huodong> page = bookService.page(pageNo,pageSize);//更改

        System.out.println("setUrl manager/bookServlet?action=page");
        page.setUrl("manager/huodongServlet?action=page");//更改
//        3、保存 Page 对象到 Request 域中
        req.setAttribute("page",page);
//        4、请求转发到/pages/manager/book_manager.jsp页面中
        req.getRequestDispatcher("/Huodonggonggao/ManagerHuodong.jsp").forward(req,resp);//更改

    }

    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        1、获取请求的 tieziid 的参数,图书编程
        int fankuiId = WebUtils.parseInt(req.getParameter("huodongId"),0);//更改
//        2、调用 BookService.deleteBookByTieziid 删除图书
        bookService.deleteBookByTieziid(fankuiId);

//        3、重新定向回图书管理页面
        // etcontextpath获取 /工程路径

        resp.sendRedirect(req.getContextPath()+"/manager/huodongServlet?action=page&pageNo="+req.getParameter("pageNo"));//更改
    }

}
