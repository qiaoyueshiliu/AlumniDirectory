//Book


package com.atguigu.test;

import com.atguigu.pojo.User;
import com.atguigu.service.UserService;
import com.atguigu.service.impl.UserServiceImpl;
import org.junit.Test;

import java.sql.SQLOutput;

import static org.junit.Assert.*;

public class UserServiceTest {

    //测试一下
    UserService userService = new UserServiceImpl();

    @Test
    public void registUser() {
//        可以插入多条，执行一下，绿色，正常
//        userService.registUser(new User(null,"bbj168","666666","bbj168"));
        System.out.println("测试 registUser 中...");
        userService.registUser(new User(null,"2021-4-14144159","123456","wzg168@qq.com","汉字","wzg168"));
        System.out.println("测试 registUser 结束...");

    }

    @Test
    public void login() {
//        登录，输入错误的尝试一下
//        System.out.println(userService.login(new User(null,"wzg168","123456",null)));
    }

    @Test
    public void existsUsername() {
//        验证用户名是否有用,如果等于true已经存在
        if (userService.existsUsername("wzg168")){
            System.out.println("用户名已存在！");
        }else {
            System.out.println("用户名可用！");
        }
    }
}