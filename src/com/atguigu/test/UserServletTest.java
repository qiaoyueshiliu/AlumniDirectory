package com.atguigu.test;

import com.atguigu.service.UserService;

import java.lang.reflect.Method;

public class UserServletTest {

    public void login(){
        System.out.println("这是 login() 方法调用了");
    }
    public void regist(){
        System.out.println("这是 regist() 方法调用了");
    }
    public void updateUser(){
        System.out.println("这是 updateUser() 方法调用了");
    }
    public void updateUserPassword(){
        System.out.println("这是 updateUserPassword() 方法调用了");
    }
    public static void main(String[] args){
        String action = "login";

        try {
            Method method = UserServiceTest.class.getDeclaredMethod(action);
            System.out.println(method);
            method.invoke()
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

}
