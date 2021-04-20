<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/4/8
  Time: 17:04
  To change this template use File | Settings  File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../public_jsp/yemianbuju.css" type="text/css">
<html>
<head>
    <title>Title</title>
</head>
<%@ include file="../public_jsp/admin_header.jsp"%>
<body>
<div class="row">
    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">

    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">

        <div class="card">
            <h1>欢迎来到管理员页面</h1>
            <h3><a href="manager/bookServlet?action=list">帖子管理</a></h3>
            <h3><a href="manager/yonghuguanliServlet?action=list">用户管理</a></h3>
        </div>
    </div>

    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080right.png" style="width: 100%">

    </div>
</div>

</body>
</html>
