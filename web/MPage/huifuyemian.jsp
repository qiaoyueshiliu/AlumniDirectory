<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/24
  Time: 11:21
  To change this template use File | Settings | File Templates.
  <%--
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript"
            src="../script/jquery-3.5.1.js"></script>
</head>
<%@include file="../public_jsp/header02.jsp" %>
<%--<link rel="stylesheet" href="head_css/common.css" type="text/css">--%>
<link rel="stylesheet"
      href="head_css/public.css"
      type="text/css">
<link rel="stylesheet"
      href="public_jsp/yemianbuju.css"
      type="text/css">
<link rel="stylesheet"
      href="public_jsp/zhuyefatieanniu.css"
      type="text/css">
<link rel="stylesheet"
      href="public_jsp/pg.css"
      type="text/css">
<%--<%@include file="MPage_css.jsp"%>--%>
<body>
<div class="row">
    <div class="column side">
        <div>
            <img src="tupian/wallhaven-4gr3z3_200x1080.png"
                 style="width: 100%">
        </div>
    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png"
             style="width: 100%">
        <sql:setDataSource
                var="snapshot"
                driver="com.mysql.jdbc.Driver"
                url="jdbc:mysql://localhost:3306/book?useUnicode=true&characterEncoding=utf-8"
                user="root"
                password="123"
        />
        <sql:query
                dataSource="${snapshot}"
                var="result">
            select `tieziid`,`createtime`,`bankuai`,`neirong` ,`xuexiao`,t_user.nickname,`biaoti`
            from t_book,t_user
            where t_book.id = t_user.id
            and t_book.tieziid=${param.tieziid}
            order by t_book.tieziid desc;
        </sql:query>
        <c:forEach var="row" items="${result.rows}">
            <%--本体内容--%>
            <div class="card" style="height: 70px;">
                <c:if test="${not empty sessionScope.user}">
                    <div class="fatiekuangyi">
                            <%--判断登录状态，登录显示回复--%>
                        <a class="fatieanniu"
                           href="MPage/huifu.jsp?tieziid=${param.tieziid}"
                           target="_blank">回复</a>
                            <%--判断登录状态，为登录显示请登录后回复--%>
                    </div>
                </c:if>
                <c:if test="${empty sessionScope.user}">
                    <div class="fatiekuangyi">
                        <a class="fatieanniu"
                           href="Login/Login.jsp">请登录后回复</a>
                    </div>
                </c:if>
            </div>

            <div class="card">

                <div class="topicModule">
                    <div></div>
                    <div class="topic-box">
                        <div class="topicList">
                            <div class="topicItem">
                                <div class="content clearfix">
                                    <ul class="info">
                                        <li>
                                            <span class="tag">${row.bankuai}</span>
                                            <span class="userName">>${row.nickname}</span>
                                            <span class="userRoleName">用户</span>
                                            <span class="postTime">时间：${row.createtime}</span>
                                        </li>
                                    </ul>
                                    <h2 class="title clearfix">
                                        <span href="thread?topicId=46"
                                              target="_blank">
                                                ${row.biaoti}
                                        </span>
                                    </h2>
                                    <div class="clearfix"></div>

                                    <div class="detail">
                                        <h2 class="summary">
                                                ${row.neirong}
                                        </h2>
                                    </div>
                                </div>

                                <div class="statistic clearfix">
                                </div>
                            </div>
                            <div class="topicItem">
                                <div class="fatiekuang">
                                    <div class="fatie">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>


        <%--回复内容--%>

        <sql:query dataSource="${snapshot}" var="huifusql">
            select
            huifushijian,t_user.nickname,huifuneirong,huifu.id,huifuid,bankuai,t_book.tieziid
            from t_book,huifu,t_user
            where t_book.id=huifu.id=t_user.id
            and huifu.tieziid=t_book.tieziid
            and huifu.tieziid=${param.tieziid}
            order by huifuid desc;
        </sql:query>
        <div class="card">
            <div class="topicModule">
                <div>回复</div>
                <div class="topic-box">
                    <div class="topicList">
                        <c:forEach var="row" items="${huifusql.rows}" end="${param.fankuiend}">
                            <div class="topicItem">
                                <div class="content clearfix">
                                    <ul class="info">
                                        <li>
                                            <span class="tag">${row.bankuai}</span>
                                            <span class="userName">${row.nickname}</span>
                                            <span class="userRoleName">用户</span>
                                            <span class="postTime">时间：${row.huifushijian}</span>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>

                                    <div class="detail">
                                        <h2 class="summary">
                                                ${row.huifuneirong}
                                        </h2>
                                    </div>
                                </div>

                                <div class="statistic clearfix">
                                </div>
                            </div>
                        </c:forEach>
                        <%--循环结束--%>

                        <div class="topicItem" style="height: 60px">
                            <div class="fatiekuang">
                                <div class="fatie">
                                    <%--                                    <c:if test="${param.fankuiend < 2}">--%>
                                    <%--下面数字表示加载多少行--%>
                                    <c:set var="fankuiend" value="${param.fankuiend+1}" scope="page"/>
                                    <a name="jiazaimaodian" href="MPage/huifuyemian.jsp?tieziid=${param.tieziid}&fankuiend=${pageScope.fankuiend}#jiazaimaodian">点击继续加载</a>
                                    <%--                                    </c:if>--%>
                                </div>
                            </div>
                        </div>

                        <div class="topicItem">
                            <div class="fatiekuang">
                                <div class="fatie">
                                </div>
                            </div>
                        </div>
                        <div class="topicPage">
                            <%--                            <%@include file="/public_jsp/page_nav.jsp" %>--%>
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
