//Book

package com.atguigu.web;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.User;
import com.atguigu.service.UserService;
import com.atguigu.service.impl.UserServiceImpl;
import com.atguigu.test.UserServletTest;
import com.atguigu.utils.WebUtils;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import java.util.Map;


//public class UserServlet extends HttpServlet {
public class UserServlet extends BaseServlet {

    private UserService userService = new UserServiceImpl();

    /**
     * 处理登录的功能
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("处理登录的需求");
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

    /**
     * 处理注册的功能
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("处理注册的需求");
        //    1.获取请求的参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String nickname = req.getParameter("nickname");
        String code = req.getParameter("code");

//        try {
//        User user = new User(); 229
//        User user = (User) WebUtils.copyParamToBean(req.getParameterMap(),new User());//229-02
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());//229-03

//        Map<String,String[]> parameterMap = req.getParameterMap();
//        for (Map.Entry<String,String[]>entry : parameterMap.entrySet()){
//            System.out.println(entry.getKey() + " = " + Arrays.asList(entry.getValue()));
//        }

//        WebUtils.copyParamToBean(req,user);
//        WebUtils.copyParamToBean(req.getParameterMap(),user); 229

//            System.out.println("注入之前：" + user);
//            /**
//             * 把所有请求的参数都注入到user对象中
//             */
//            System.out.println(req.getParameterMap());
//            BeanUtils.populate(user,req.getParameterMap());
//            System.out.println("注入之后：" + user);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }

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
                req.setAttribute("nickname",nickname);
//                跳回注册页面
                req.getRequestDispatcher("/Register/Registration_Page.jsp").forward(req,resp);
            }else {
//                可用
//                调用Service保存到数据库
                userService.registUser(new User(null,username,password,nickname));
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
            req.setAttribute("nickname",nickname);
            System.out.println("验证码[" + code + "]错误!");
            req.getRequestDispatcher("/Register/Registration_Page.jsp").forward(req,resp);
        }
    }
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String action = req.getParameter("action");

//        System.out.println(action);
//        if ("login".equals(action)){
//            login(req,resp);
//        }else if("regist".equals(action)){
//            regist(req,resp);
//        }
//        String action = "login";

//        try {

            //通过action业务鉴别字符串，获取相应的业务方法反射对象
//            Method method = UserServletTest.class.getDeclaredMethod(action);

//            Method method = this.getClass().getDeclaredMethod(action,HttpServletRequest.class,HttpServletResponse.class);
//            System.out.println(method);
//            //调用目标业务方法
//            method.invoke(this,req,resp);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
}
