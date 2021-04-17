package com.atguigu.servlet;

import com.atguigu.web.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SessionServlet extends BaseServlet {

    protected void CreateOrGetSession(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        创建和获取session 对象
        HttpSession session = req.getSession();
//        判断当前Session对象是否是新创建的
        boolean isNew = session.isNew();
//        获取Session会话的唯一标识
        String id = session.getId();

        resp.getWriter().write("得到的session："+id+"<br>");
        resp.getWriter().write("是否是新的："+isNew);
    }
}
