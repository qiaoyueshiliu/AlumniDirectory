<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/26
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../public_jsp/header02.jsp" %>
<link rel="stylesheet" href="head_css/public.css" type="text/css">
<link rel="stylesheet" href="public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="public_jsp/zhuyefatieanniu.css" type="text/css">
<link rel="stylesheet" href="public_jsp/pg.css" type="text/css">
<html>
<head>
    <title>Title</title>
    <meta http-equiv="refresh"
          content="3;URL=client/bookServlet_qiantai?action=page&pageNo=1">
</head>
<body>
<%--静态包含登录成功后的菜单--%>
<div class="row">
    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">
    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">
        <div class="card">
            <div style="text-align: center">
            <%@include file="../Page/login_success_menu.jsp"%>
            <span style="font-size:18px;">3s后自动跳转</span>
            </div>
        </div>
    </div>

    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080right.png" style="width: 100%">
    </div>
</div>
</body>
</html>
