<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/4/8
  Time: 17:04
  To change this template use File | Settings  File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%@ include file="../public_jsp/admin_header.jsp"%>
<body>
<h1>欢迎来到管理员页面</h1>
<%-- action 表示调用服务器中哪一个方法 BookServlet 中的 list --%>
<%--<a href="manager/bookServlet?action=list"><h3>主页</h3></a>--%>
<a href="manager/bookServlet?action=list">主页</a>
</body>
</html>
