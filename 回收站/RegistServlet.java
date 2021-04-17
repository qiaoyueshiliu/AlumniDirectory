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

//不管怎么多复杂，servlet都是四步：
//1.获取参数
//2.调用Servlet1
//3.将数据共享到域
//4.路径跳转
public class RegistServlet extends HttpServlet{

    private UserService userService = new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //    1.获取请求的参数
        String username = req.getParameter("UserName");
        String Passwd = req.getParameter("Passwd");
        String NickName = req.getParameter("NickName");
        String code = req.getParameter("code");
//        验证码
//        String code = req.getParameter("code");
//      2.检查 验证码是否正确 == 先写死，要求验证码为:adcde
//        忽略大小写
        if ("abcde".equalsIgnoreCase(code)){
//            正确
//            3.检查用户名是否可用
            if (userService.existsUsername(username)){
                System.out.println("用户名[" + username + "]已存在！");
                //            把回显信息保存到request域中
                req.setAttribute("msg","用户名已存在！");
                req.setAttribute("username",username);
                req.setAttribute("nickname",NickName);
//                跳回注册页面
                req.getRequestDispatcher("/Register/Registration_Page.jsp").forward(req,resp);
            }else {
//                可用
//                调用Service保存到数据库
                userService.registUser(new User(null,username,Passwd,null,NickName,null));
//                跳轉注册成功页面
                System.out.println("注册成功");
                req.getRequestDispatcher("/Register/regist_success.jsp").forward(req,resp);
            }
        }else{
//            不正确
//            跳回注册页面
//            把回显信息保存到request域中
            req.setAttribute("msg","验证码错误！");
            req.setAttribute("username",username);
            req.setAttribute("nickname",NickName);
            System.out.println("验证码[" + code + "]错误!");
            req.getRequestDispatcher("/Register/Registration_Page.jsp").forward(req,resp);
        }
//        super.doPost(req, resp);
    }
}
