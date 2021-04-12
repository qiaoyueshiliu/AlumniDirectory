<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/4/8
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../public_jsp/fenye.css" type="text/css">
    <link rel="stylesheet" href="../public_jsp/guanliyemian.css" type="text/css">
    <link rel="stylesheet" href="../public_jsp/yemianbuju.css" type="text/css">
    <script type="text/javascript" src="../script/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        $(function () {
            //给删除的a标签绑定单击事件，用于删除的确认提示操作
            $("a.deleteClass").click(function () {
                //在事件的 function 函数中，有一个 this 对象，这个 this 对象，是当前正在响应事件的 dom 对象
                /**
                 *  confirm 是确认提示框函数
                 *  参数是它的提示内容
                 *  它有两个按钮，一个确认，一个取消。
                 *  返回 true 表示点击了确认，返回 false 表示点击了取消
                 */
                return confirm("是否确定删除【" + $(this).parent().parent().find("td:first").text() + "】帖子吗？");
            })
        })
    </script>
</head>
<%@ include file="../public_jsp/admin_header.jsp"%>
<body style="overflow-y:scroll;">
<div class="row">
    <div class="column side">
    </div>

    <div class="column middle">
        <div class="card">
            <h1>帖子管理</h1>
            <div id="mainguanli">
                <table>
                    <tr>
                        <td>帖子编号</td>
                        <td>标题</td>
                        <td>创建人</td>
                        <td colspan="2">操作</td>
                    </tr>
                    <%--        books 要和 BookServlet req.setAttribute 中保持一致--%>
                    <c:forEach items="${requestScope.page.items}" var="book">
                        <tr>
                            <td>No.${book.tieziid}</td>
                            <td>${book.biaoti}</td>
                            <td>${book.nickname}</td>
                            <td><a class="deleteClass" href="manager/bookServlet?action=delete&tieziid=${book.tieziid}&pageNo=${requestScope.page.pageNo}">删除</a></td>
                        </tr>
                    </c:forEach>
                </table>
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
                                    location.href = "${pageScope.basePath}manager/bookServlet?action=page&pageNo=" + pageNo;
                                }
                            });
                        });
                    </script>
                    <a class="nxt" href="manager/bookServlet?action=page&pageNo=1">首页</a>
                    <c:if test="${requestScope.page.pageNo > 1}">
                        <a class="nxt"
                           href="manager/bookServlet?action=page&pageNo=${requestScope.page.pageNo-1}">上一页</a>
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
                            <a href="manager/bookServlet?action=page&pageNo=${i}">${i}</a>
                        </c:if>
                    </c:forEach>
                    <label>
                        ${requestScope.page.pageNo}
                        <span> / </span>
                        ${requestScope.page.pageTotal}
                    </label>
                    <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
                        <a class="nxt"
                           href="manager/bookServlet?action=page&pageNo=${requestScope.page.pageNo+1}">下一页</a>
                    </c:if>
                    <a class="nxt"
                       href="manager/bookServlet?action=page&pageNo=${requestScope.page.pageTotal}">末页</a>
                </div>
            </div>
        </div>
    </div>

    <div class="column side">
    </div>
</div>
</body>
</html>
