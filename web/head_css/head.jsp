<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/5
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme()
            + "://"
            + request.getServerName()
            + ":"
            + request.getServerPort()
            + request.getContextPath()
            + "/";
    pageContext.setAttribute("basePath",basePath);
%>
<%--<% System.out.println(basePath);%>--%>
<!--写base标签，永远固定相对路径跳转的结果-->
<base href="<%=basePath%>">
<%--<a href="header.jsp">测试Base跳转路径</a>--%>
<%--<link type="text/css" rel="stylesheet" href="head_css/style.css" >--%>
<%--<script type="text/javascript" src="script/jquery-1.7.2.js"></script>--%>