<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/27
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
<%--<%=表达式%>--%>
表达式脚本的作用 在jsp页面上输出数据<br>
1.表达式脚本的特点 所有的表达式脚本都会被翻译到_jspService()方法中
2.所有表达式脚本都会被翻译成out.println()输出到页面上
3.由于表达式脚本翻译的内容都在_jspService()方法中，所以_jspService()方法中的对象都可以直接使用
4.表达式脚本中的表达式不能以分号结束
<%=12 %><br>
<%=12.12 %><br>
<%="我是字符串" %><br>
<%=map%><br>
<%=request.getParameter("username")%><br>
<%--代码脚本--%>
<%--代码脚本的作用是：可以在jsp页面中，编写我们自己需要的功能（写的是java语句）。--%>
<%--练习：--%>
<%--1、代码脚本——if语句--%>
<%
    int i=13;
    if (i==12){
        System.out.println("等于12");
    }else {
        System.out.println("不等于12");
    }
%><br>
<%--2、代码脚本——for语句--%>
<%
    for (int j = 0 ;j<10;j++){
        System.out.println(j);
    }
%>
<%--3、翻译后java文件中_jspService方法内的代码都可以写--%>
<%
    String username = request.getParameter("username");
    System.out.println("用户的请求参数是：" + username);
%>
<%--代码脚本的特点是：
1、代码脚本翻译之后都在_jspService方法中
2、代码脚本由于翻译到_jspService方法中，所以在_jspService方法中的现有对象都可以直接使用
3、还可以由多个代码脚本快组合完成一个完整的java语句
4、代码脚本还可以和表达式脚本一起使用在Jsp页面上输出数据--%>
<table border="1" cellspacing="0">
<%
    for (int j = 0 ;j<9;j++){
%>
    <tr>
        <td>第 <%=j+1%> 行</td>
    </tr>
<%
        System.out.println(j);
    }
%>
    
</table>
</body>
</html>
