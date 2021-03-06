<%@ page import="com.atguigu.pojo.Book" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../script/jquery-3.5.1.js"></script>
</head>
<%@include file="../public_jsp/header02.jsp" %>
<link rel="stylesheet" href="head_css/public.css" type="text/css">
<link rel="stylesheet" href="public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="public_jsp/zhuyefatieanniu.css" type="text/css">
<link rel="stylesheet" href="public_jsp/pg.css" type="text/css">
<body>
<div class="row">
    <% Book book = new Book();%>
    ${book}
    <div class="column side">
        <div>
            <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">
        </div>
    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">
        <div class="card">
            <ul class="DaoHangLan" style="height: 34px">
                <%
                    String[] args = {"南京", "无锡","徐州","常州","苏州","南通","连云港","淮安","盐城","扬州","镇江","泰州","宿迁"};
                    request.setAttribute("args", args);
                %>
                <c:forEach var="dq" items="<%=args%>">
                    <li>
                        <form action="client/bookServlet_qiantai" method="get">
                            <input type="hidden" name="action" value="pageByDiqu">
                            <input type="hidden" name="diqu" value="${dq}">
                            <input type="submit" value="${dq}" style="font-size: 16px;"/>
                        </form>
                    </li>
                </c:forEach>

            </ul>
            <form action="client/bookServlet_qiantai" method="get">
                <input type="hidden" name="action" value="pageByBankuai">
                按学校搜索:<input id="lunTanSoSuo" type="text" name="lunTanSoSuo" value="${param.lunTanSoSuo}">
                <input type="submit" value="搜索"/>
            </form>
            <div class="topicModule">
                <div class="topic-box">
                    <div class="topicList">
                        <%--                        item:Page.java--%>
                        <c:forEach items="${requestScope.page.items}" var="book">
                            <div class="topicItem">
                                <div class="content clearfix">
                                    <ul class="info">
                                        <li>
                                            <span class="tag">${book.diqu}</span>
                                            <span class="tag">${book.bankuai}</span>

                                                ${book.nickname}

                                            <span class="userRoleName">${book.xuexiao}</span>
                                            <span class="postTime">发表时间：${book.createtime}</span>
                                                <%--                                            <span class="lastReplyTime">最新回复：2020-07-24 02:00:50</span>--%>
                                        </li>
                                    </ul>
                                    <h2 class="title clearfix">
                                        <a href="MPage/huifuyemian.jsp?tieziid=${book.tieziid}&fankuiend=4"
                                           target="_blank">
                                                ${book.biaoti}
                                        </a>
                                    </h2>
                                    <div class="clearfix"></div>

                                    <div class="detail">
                                        <h2 class="summary">
                                                ${book.neirong}
                                        </h2>
                                        <script>
                                            $(function () {
                                                new commentMove(".topic_thumbnail_46", ".topic_original_46", "46").init();
                                            })
                                        </script>
                                    </div>
                                </div>

                                <div class="statistic clearfix">
                                </div>
                            </div>
                        </c:forEach>
                        <div class="topicItem">
                            <div class="fatiekuang">
                                <div class="fatie">
                                </div>
                            </div>
                        </div>
                        <div class="topicPage">
                            <%--判断是否为登录状态,登录显示发帖--%>
                            <c:if test="${not empty sessionScope.user}">
                                <div class="fatiekuangyi">
                                    <a class="fatieanniu" href="MPage/fatie.jsp">发帖</a>
                                </div>
                            </c:if>
                            <%--判断是否为登录状态，未登录提示登录--%>
                            <c:if test="${empty sessionScope.user}">
                                <div class="fatiekuangyi">
                                    <a class="fatieanniu" href="Login/Login.jsp">请登录后发帖</a>
                                </div>
                            </c:if>
                            <%--静态包含分页条--%>
                            <%@include file="/public_jsp/page_nav.jsp" %>
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
