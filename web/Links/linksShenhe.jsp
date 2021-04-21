<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/4/21
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%@ include file="../public_jsp/admin_header.jsp"%>
<link rel="stylesheet" href="head_css/public.css" type="text/css">
<link rel="stylesheet" href="public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="public_jsp/zhuyefatieanniu.css" type="text/css">
<link rel="stylesheet" href="public_jsp/pg.css" type="text/css">
<link rel="stylesheet" href="public_jsp/guanliyemian.css" type="text/css">
<body>
<div class="row">
    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">

    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">
        <div class="card">
            <h1 style="text-align: center;font-size: 48px;">友情链接审核</h1>
        </div>
        <div class="card">
            <div id="mainguanli">
                <form action="Links/linkTiaozhuanshenhe.jsp" method="get">
                    <table>
                    <tr>
                        <td>学校</td>
                        <td>官网</td>
                        <td colspan="1">操作</td>
                    </tr>
                    <sql:setDataSource
                            var="snapshot"
                            driver="com.mysql.jdbc.Driver"
                            url="jdbc:mysql://localhost:3306/book?useUnicode=true&characterEncoding=utf-8"
                            user="root"
                            password="123"
                    />
                    <sql:query var="shenhelist" dataSource="${snapshot}">
                        select *
                        from school_sh
                    </sql:query>
                    <%--forEach循环开始--%>

                    <c:forEach var="row" items="${shenhelist.rows}">
                        <tr>
                            <td>${row.schoolname}</td>
                            <input type="hidden" value="${row.schoolname}" name="schoolname"/>
                            <td><a href="${row.schoolguanwang}" target="_blank">${row.schoolguanwang}</a></td>
                            <input type="hidden" value="${row.schoolguanwang}" name="schoolguanwang"/>
                            <td style="width: 150px;">
                                <input type="submit" value="通过" name="pass">
<%--                                <a href="Links/linkTiaozhuanshenhe.jsp?schoolname=${row.schoolname}&schoolguangwang=${row.schoolguanwang}">通过</a>--%>
                                <input type="submit" value="不通过" name="pass">
                            <%--                                <a href="">不通过</a>--%>
                            </td>
                        </tr>
                    <%--forEach 循环结束--%>
                    </c:forEach>
                    </table>
                </form>
            </div>
        </div>

    </div>

    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080right.png" style="width: 100%">
    </div>
</div>
</body>
</html>
