<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/4/19
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="refresh"
          content="3;URL=Linkzhuye.jsp">
</head>
<body>
<%@include file="../public_jsp/header02.jsp" %>
<link rel="stylesheet" href="head_css/public.css" type="text/css">
<link rel="stylesheet" href="public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="public_jsp/zhuyefatieanniu.css" type="text/css">
<link rel="stylesheet" href="public_jsp/pg.css" type="text/css">
<div class="row">
    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">
    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">
        <div class="card">
            <span style="font-size:18px;">3s后自动跳转</span>
            <%--连接数据库--%>
            <sql:setDataSource
                    var="snapshot"
                    driver="com.mysql.jdbc.Driver"
                    url="jdbc:mysql://localhost:3306/book?useUnicode=true&characterEncoding=utf-8"
                    user="root"
                    password="123"
            />
            <%--传来数值为空--%>
            <c:if test="${empty param.schoolname}">
                <h1>数据输入错误</h1>
            </c:if>
            <%--传来数值不为空--%>
            <c:if test="${not empty param.schoolname}">
                <%--查找学校--%>
                <sql:query dataSource="${snapshot}"
                           var="schoolselect">
                    select
                    `schoolname`,`schoolguanwang`
                    from school
                    where schoolname = "${param.schoolname}"
                </sql:query>
                <%--查找到学校--%>
                <c:if test="${not empty schoolselect}">
                    <h1>学校重复，请重试</h1>
                </c:if>
                <%--查找不到学校--%>
                <c:if test="${empty schoolselect}">
                    <sql:update dataSource="${snapshot}"
                                var="result">
                        insert into `book`.`school`
                        (`schoolid`, `schoolname`, `schoolguanwang`)
                        values(
                        null,
                        '${param.schoolname}',
                        '${param.schoolguanwang}')
                    </sql:update>
                    <h1>友情链接添加成功</h1>
                </c:if>
            </c:if>
        </div>
    </div>

    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080right.png" style="width: 100%">
    </div>
</div>
</body>
</html>
