//Book

package com.atguigu.web;

import com.atguigu.pojo.User;
import com.atguigu.service.UserService;
import com.atguigu.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    private UserService userService = new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //  1、获取请求的参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        // 调用 userService.login()登录处理业务
        User loginUser = userService.login(new User(null, username, password, null));
        // 如果等于null,说明登录 失败!
        if (loginUser == null) {
            //            把错误信息和回显的表单项信息保存到Request域中
            req.setAttribute("msg","用户名或密码错误！");
            req.setAttribute("username",username);
            //   跳回登录页面
            System.out.println("用户名或密码错误");
            req.getRequestDispatcher("/Login/Login.jsp").forward(req,resp);
        } else {
            // 登录 成功
            //跳到成功页面login_success.html
            System.out.println("登录成功");
            req.getRequestDispatcher("/Login/login_success.jsp").forward(req,resp);
        }
    }
}


//package com.atguigu.web;
//
//import com.atguigu.pojo.User;
//import com.atguigu.service.UserService;
//import com.atguigu.service.impl.UserServiceImpl;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//public class LoginServlet extends HttpServlet {
//    private UserService userService = new UserServiceImpl();
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
////        1、获取请求参数
////        login 页面输入框的参数
//        String username = req.getParameter("name");
//        String password = req.getParameter("pwd");
////        2、调用userService.login()登录处理业务
//        User loginUser = userService.login(new User(null, username, password, null));
////        如果等于 null ,说明登录失败
//        if (loginUser == null){
////            跳回登录页面
//            System.out.println("用户名或密码错误");
//            req.getRequestDispatcher("/Register/Registration_Page.jsp").forward(req,resp);
//        }else {
////            登录成功
////            跳到成功页面 login_success.jsp
//            System.out.println("登录成功");
//            req.getRequestDispatcher("/Login/login_success.jsp").forward(req,resp);
//
//        }
//
//
//    }
//}
