<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/27
  Time: 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
<%! 声明java代码 %>
作用：可以给jsp翻译出来的java类定义属性和方法，甚至是静态代码块，内部类等
--%>
<%--1.声明类属性--%>
<%!
    private Integer id;
    private String name;
    private static Map<String,Object> map;
%>
<%--2.声明static静态代码块--%>
<%!
    static {
        map = new HashMap<String,Object>();
        map.put("key1","value1");
        map.put("key2","value2");
        map.put("key3","value3");
    }
%>
<%--3.声明类方法--%>
<%!
    public int abc(){
        return 12;
    }
%>
<%--4.声明内部类--%>
<%!
    public static class A {
        private Integer id=12;
        private String abc="abc";
    }
%>
</body>
</html>
