<%@ page import="com.atguigu.pojo.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%--base路径--%>
<%@ include file="/head_css/head.jsp"%>
<%--导航栏css--%>
<link rel="stylesheet" href="public_jsp/daoHangLan.css" type="text/css">
<body>
<ul class="DaoHangLan">
    <li><img src="public_jsp/QQ20210413151946.png" style="height: 49px"></li>
    <li><a href="client/bookServlet_qiantai?action=page&pageNo=1">主页</a></li>
    <%--如果用户还没有登录，显示登录和注册的菜单--%>
    <c:if test="${empty sessionScope.user}">
        <li><a href="Login/Login.jsp">登录</a></li>
        <li><a href="Register/Registration_Page.jsp">注册</a></li>
    </c:if>
    <%--如果已经登录，则显示登录成功后的用户信息--%>
    <c:if test="${not empty sessionScope.user}">
        <li><a>${sessionScope.user.nickname}</a></li>
        <li><a href="">注销</a></li>
    </c:if>
    <c:if test="${sessionScope.user.quanxian == 1}">
    <li><a href="Register/HouTaiGuanLi.jsp">后台</a></li>
    </c:if>
</ul>
</body>
