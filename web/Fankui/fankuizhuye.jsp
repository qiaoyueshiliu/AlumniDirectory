<%@ page import="java.util.SimpleTimeZone" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/4/19
  Time: 12:42
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
</head>
<body>
<div class="row">
    <%--左边--%>
    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">
    </div>

    <%--中间--%>
    <div class="column middle">
        <%--数据库连接--%>
        <sql:setDataSource
                var="snapshot"
                driver="com.mysql.jdbc.Driver"
                url="jdbc:mysql://localhost:3306/book?useUnicode=true&characterEncoding=utf-8"
                user="root"
                password="123"
        />
        <%--查询反馈内容--%>
        <sql:query
                dataSource="${snapshot}"
                var="queryFankui">
            select *
            from fankui,t_user
            where fankui.id = t_user.id
            order by fankui.fankuiId desc;
        </sql:query>
        <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">
            <div class="card" style="height: 80px">
                <c:if test="${not empty sessionScope.user}">
                    <div class="fatiekuangyi">
                        <a class="fatieanniu" href="Fankui/fankuiAdd.jsp">反馈</a>
                    </div>
                </c:if>
                <c:if test="${empty sessionScope.user}">
                    <div class="fatiekuangyi">
                        <a class="fatieanniu" href="Login/Login.jsp">请登录后发帖</a>
                    </div>
                </c:if>
            </div>
        <div class="card">
            <div class="topicModule">

            </div>
            <div class="topicModule">
                <div class="topic-box">
                    <div class="topicList">

                            <div class="topicPage">

                            </div>
                        <%--循环反馈开始--%>

                        <c:forEach var="Fankui" items="${queryFankui.rows}" end="${param.fankuiend}">
                            <div class="topicItem">
                                <div class="content clearfix">
                                    <ul class="info">
                                        <li>
                                            <span class="tag">用户反馈</span>
                                            <a class="userName" href="user/control/home?userName=test">
                                                    ${Fankui.nickname}
                                            </a>
                                            <span class="userRoleName">${Fankui.xuexiao}</span>
                                                <%--格式化时间以去除日期和时间中间的T--%>
                                            <script>
                                                function fun() {
                                                    return "${Fankui.fankuiCreatetime}".replace("T", " ");
                                                }
                                            </script>
                                            <span class="postTime">发表时间：</span>
                                            <span class="pageList" onload="fun()">
                                                <script>
                                                    document.write(fun());
                                                </script>
                                            </span>
                                        </li>
                                    </ul>
                                    <h2 class="title clearfix">
                                        <a href="" target="_blank">
                                                ${Fankui.fankuiBiaoti}
                                        </a>
                                    </h2>
                                    <div class="clearfix"></div>

                                    <div class="detail">
                                        <h2 class="summary">
                                                ${Fankui.fankuiNeirong}
                                        </h2>
                                    </div>
                                </div>

                                <div class="statistic clearfix">
                                </div>
                            </div>
                        </c:forEach>
                        <%--循环反馈结束--%>
                        <div class="topicItem" style="height: 60px">
                            <div class="fatiekuang">
                                <div class="fatie">
<%--                                    <c:if test="${param.fankuiend < 2}">--%>
                                        <%--下面数字表示加载多少行--%>
                                    <c:set var="fankuiend" value="${param.fankuiend+1}" scope="page"/>
                                    <a name="jiazaimaodian" href="Fankui/fankuizhuye.jsp?fankuiend=${pageScope.fankuiend}#jiazaimaodian">点击继续加载</a>
<%--                                    </c:if>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--右边--%>
    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080right.png" style="width: 100%">
    </div>
</div>
</body>
</html>
