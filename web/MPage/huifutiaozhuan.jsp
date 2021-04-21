<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/4/18
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="../public_jsp/header02.jsp" %>
<link rel="stylesheet" href="head_css/public.css" type="text/css">
<link rel="stylesheet" href="public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="public_jsp/zhuyefatieanniu.css" type="text/css">
<link rel="stylesheet" href="public_jsp/pg.css" type="text/css">
<head>
    <title>Title</title>
    <meta http-equiv="refresh"
          content="3;URL=MPage/huifuyemian.jsp?tieziid=${param.tieziid}">
</head>
<body>
<sql:setDataSource
        var="snapshot"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/book?useUnicode=true&characterEncoding=utf-8"
        user="root"
        password="123"
/>
<sql:update
        dataSource="${snapshot}"
        var="result">
    insert into
    huifu (tieziid,huifuneirong,id)
    value (
    '${param.tieziid}',
    '${param.huifuneirong}',
    '${param.id}'
    )
</sql:update>
<div class="row">
    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">

    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">

        <div class="card">
            <div style="text-align: center">
                <h1 style="font-size: 48px">
                    <span>回复
                        <span class="um_span">

                        </span>成功
                    </span>
                </h1>
            </div>
            <div style="text-align: center">
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
