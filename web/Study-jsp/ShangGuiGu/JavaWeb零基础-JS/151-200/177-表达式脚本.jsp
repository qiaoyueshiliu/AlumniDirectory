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
<%--<%=表达式%>--%>
表达式脚本的作用 在jsp页面上输出数据<br>
1.表达式脚本的特点 所有的表达式脚本都会被翻译到_jspService()方法中
2.所有表达式脚本都会被翻译成out.println()输出到页面上
3.由于表达式脚本翻译的内容都在_jspService()方法中，所以_jspService()方法中的对象都可以直接使用
4.表达式脚本中的表达式不能以分号结束
<%=12 %><br>
<%=12.12 %><br>
<%="我是字符串" %><br>
<%=map%>
<%=request.getParameter("username")%>
</body>
</html>
