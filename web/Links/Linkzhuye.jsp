<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/4/18
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%@include file="../public_jsp/header02.jsp" %>
<link rel="stylesheet" href="head_css/public.css" type="text/css">
<link rel="stylesheet" href="public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="public_jsp/zhuyefatieanniu.css" type="text/css">
<link rel="stylesheet" href="public_jsp/pg.css" type="text/css">
<body>
<div class="row">
    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">

    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png"
             style="width: 100%">
        <div class="card">
            <div id="zoom"
                 style="text-align:left;
                 padding-bottom: 40px;
                 min-height:300px;">
                <meta name="ContentStart">
                <div>
                    <table border="1" width="200" align="center">
                        <tbody>
                        <tr class="firstRow">
                            <h1 style="font-size: 48px;
                            text-align: center">
                                部分江苏省学校官网
                            </h1>
                            <c:if test="${empty sessionScope.user}">
                                <a href="Login/Login.jsp">登录后可申请添加友情链接</a>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 1}">
                                <a href="Links/linkAdd.jsp"
                                   target="_blank">
                                    添加友情链接
                                </a>
                            </c:if>
                            <c:if test="${not empty sessionScope.user}">
                                <c:if test="${sessionScope.user.quanxian ne 1}">
                                    <a href="Links/linkAddYonghu.jsp"
                                       target="_blank">
                                        添加友情链接
                                    </a>
                                </c:if>
                            </c:if>
                            <sql:setDataSource
                                    var="snapshot"
                                    driver="com.mysql.jdbc.Driver"
                                    url="jdbc:mysql://localhost:3306/book?useUnicode=true&characterEncoding=utf-8"
                                    user="root"
                                    password="123"
                            />
                            <sql:query
                                    dataSource="${snapshot}"
                                       var="school">
                                select
                                `schoolname`,`schoolguanwang`
                                from
                                school;
                            </sql:query>
                            <td>
                                <table style="WIDTH: 487.5pt" border="0" width="692">
                                    <c:forEach var="row" items="${school.rows}">
                                    <div class="fatiekuangyi">
                                        <a class="fatieanniu"
                                           href="${row.schoolguanwang}"
                                           target="_blank">
                                                ${row.schoolname}</a>
                                        </c:forEach>
                                </table>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <meta name="ContentEnd">
            </div>
        </div>
    </div>

    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080right.png" style="width: 100%">
    </div>
</div>
</body>
</html>
