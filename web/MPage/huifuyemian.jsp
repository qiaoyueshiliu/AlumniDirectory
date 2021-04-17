<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/24
  Time: 11:21
  To change this template use File | Settings | File Templates.
  <%--
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../script/jquery-3.5.1.js"></script>
</head>
<%@include file="../public_jsp/header02.jsp" %>
<%--<link rel="stylesheet" href="head_css/common.css" type="text/css">--%>
<link rel="stylesheet" href="head_css/public.css" type="text/css">
<link rel="stylesheet" href="public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="public_jsp/zhuyefatieanniu.css" type="text/css">
<link rel="stylesheet" href="public_jsp/pg.css" type="text/css">
<%--<%@include file="MPage_css.jsp"%>--%>
<body>
<div class="row">
    <div class="column side">
        <div>
            <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">
        </div>
    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">
        <div class="card">
            <div class="topicModule">
                <div class="topic-box">
                    <div class="topicList">
                        <%--                        item:Page.java--%>
<%--                        <c:forEach items="${requestScope.page.items}" var="book">--%>
                            <div class="topicItem">
                                <div class="content clearfix">
                                    <ul class="info">
                                        <li>
                                            <span class="tag">${book.bankuai}bankuai</span>
                                            <span class="userName">${book.nickname}nickname</span>
                                            <span class="userRoleName">用户</span>
                                            <span class="postTime">时间：${book.createtime}</span>
                                        </li>
                                    </ul>
                                    <h2 class="title clearfix">
                                        <span href="thread?topicId=46" target="_blank">
                                                ${book.biaoti}biaoti
                                        </span>
                                    </h2>
                                    <div class="clearfix"></div>

                                    <div class="detail">
                                        <h2 class="summary">
                                                ${book.neirong}neirong
                                        </h2>
                                    </div>
                                </div>

                                <div class="statistic clearfix">
                                </div>
                            </div>
<%--                        </c:forEach>--%>
                        <div class="topicItem">
                            <div class="fatiekuang">
                                <div class="fatie">
                                </div>
                            </div>
                        </div>
                        <div class="topicPage">
                            <div class="fatiekuangyi">
                                <a class="fatieanniu" href="MPage/huifu.jsp">回复</a>
                            </div>
                            <%--                            静态包含分页条--%>
                            <%@include file="/public_jsp/page_nav.jsp"%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080right.png" style="width: 100%">
    </div>
</div>
</body>
</html>