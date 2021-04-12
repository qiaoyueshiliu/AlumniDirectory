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
<link rel="stylesheet" href="../head_css/common.css" type="text/css">
<link rel="stylesheet" href="../public_jsp/fenye.css" type="text/css">
<link rel="stylesheet" href="../public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="../public_jsp/zhuyefatieanniu.css" type="text/css">
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../script/jquery-3.5.1.js"></script>
</head>
<%@include file="../public_jsp/header02.jsp" %>
<%--<%@include file="MPage_css.jsp"%>--%>
<body>
<div class="row">
    <div class="column side">
    </div>

    <div class="column middle">
        <div class="card">
            <div class="topicModule">
                <div class="topic-box">
                    <div class="topicList">
                        <c:forEach items="${requestScope.page.items}" var="book">
                            <div class="topicItem">
                                <div class="content clearfix">
                                    <ul class="info">
                                        <li>
                                            <span class="tag">${book.bankuai}</span>
                                            <a class="userName" href="user/control/home?userName=test">
                                                    ${book.nickname}
                                            </a>
                                            <span class="userRoleName">用户</span>
                                            <span class="postTime">发表时间：${book.createtime}</span>
                                            <span class="lastReplyTime">最新回复：2020-07-24 02:00:50</span>
                                        </li>
                                    </ul>
                                    <h2 class="title clearfix">
                                        <a href="thread?topicId=46" target="_blank">
                                                ${book.biaoti}
                                        </a>
                                        <span class="redEnvelope" alt="红包" title="红包"><i class="cms-redEnvelope-1"></i></span>
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
                            <div class="fatiekuangyi">
                                <a class="fatieanniu" href="MPage/fatie.jsp">发帖</a>
                            </div>
                            <div class="pg">
                                <span class="count">共 ${requestScope.page.pageTotalCount} 条</span>
                                <span class="count">到 <input value="${param.pageNo}" name="pn" id="pn_input"> 页 <input
                                        id="searchPageBtn" class="tiaozhuandao" type="button" value="确定"></span>
                                <script type="text/javascript">
                                    $(function () {
                                        //    跳到指定页码
                                        $("#searchPageBtn").click(function () {
                                            var pageNo = $("#pn_input").val();
                                            var pageTotal = ${requestScope.page.pageTotal};
                                            //    javaScript 提供了一个 location 地址栏对象
                                            //    属性 href ,可以获取浏览器中的地址
                                            if (pageNo < 1 || pageNo > pageTotal) {
                                                alert("请输入正确的页码")
                                            } else {
                                                location.href = "${pageScope.basePath}client/bookServlet_qiantai?action=page&pageNo=" + pageNo;
                                            }
                                        });
                                    });
                                </script>
                                <a class="nxt" href="client/bookServlet_qiantai?action=page&pageNo=1">首页</a>
                                <c:if test="${requestScope.page.pageNo > 1}">
                                    <a class="nxt"
                                       href="client/bookServlet_qiantai?action=page&pageNo=${requestScope.page.pageNo-1}">上一页</a>
                                </c:if>
                                <%--页码输出的开始--%>
                                <c:choose>
                                    <%--情况1：页码小于5页--%>
                                    <c:when test="${requestScope.page.pageTotal <= 5}">
                                        <c:set var="begin" value="1"/>
                                        <c:set var="end" value="${requestScope.page.pageTotal}"/>
                                    </c:when>
                                    <%-- 情况2：页码大于5页--%>
                                    <c:when test="${requestScope.page.pageTotal > 5}">
                                        <c:choose>
                                            <%-- 小情况1：前面3个--%>
                                            <c:when test="${requestScope.page.pageNo <= 3}">
                                                <c:set var="begin" value="1"/>
                                                <c:set var="end" value="5"/>
                                            </c:when>
                                            <%-- 小情况2：后面3个--%>
                                            <c:when test="${requestScope.page.pageNo > requestScope.page.pageTotal-3}">
                                                <c:set var="begin" value="${requestScope.page.pageTotal-4}"/>
                                                <c:set var="end" value="${requestScope.page.pageTotal}"/>
                                            </c:when>
                                            <%-- 小情况3：中间--%>
                                            <c:otherwise>
                                                <c:set var="begin" value="${requestScope.page.pageNo-2}"/>
                                                <c:set var="end" value="${requestScope.page.pageNo+2}"/>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                </c:choose>
                                <c:forEach begin="${begin}" end="${end}" var="i">
                                    <c:if test="${i == requestScope.page.pageNo}">
                                        <strong>${i}</strong>
                                    </c:if>
                                    <c:if test="${i != requestScope.page.pageNo}">
                                        <a href="client/bookServlet_qiantai?action=page&pageNo=${i}">${i}</a>
                                    </c:if>
                                </c:forEach>
                                <label>
                                    ${requestScope.page.pageNo}
                                    <span> / </span>
                                    ${requestScope.page.pageTotal}
                                </label>
                                <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
                                    <a class="nxt"
                                       href="client/bookServlet_qiantai?action=page&pageNo=${requestScope.page.pageNo+1}">下一页</a>
                                </c:if>
                                <a class="nxt"
                                   href="client/bookServlet_qiantai?action=page&pageNo=${requestScope.page.pageTotal}">末页</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="column side">
    </div>
</div>
</body>
</html>
