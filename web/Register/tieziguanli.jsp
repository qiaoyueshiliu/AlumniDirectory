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
                return confirm("是否确定删除【" + $(this).parent().parent().find("td:first").text() + "】用户吗？");
            })
        })
    </script>
</head>
<%@ include file="../public_jsp/admin_header.jsp"%>
<body style="overflow-y:scroll;">
<div class="row">
    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">

    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">

        <div class="card">
            <h1>用户管理</h1>
            <div id="mainguanli">
                <table>
                    <tr>
                        <td>用户编号</td>
                        <td>用户名</td>
                        <td>用户密码</td>
                        <td>用户昵称</td>
                        <td>用户学校</td>
                        <td>用户班级</td>
                        <td>用户权限</td>
                        <td colspan="2">操作</td>
                    </tr>
                    <%--        books 要和 BookServlet req.setAttribute 中保持一致--%>
                    <c:forEach items="${requestScope.page.items}" var="user">
                        <tr>
                            <td>No.${user.id}</td>
                            <td>${user.username}</td>
                            <td>
                            <c:if test="${sessionScope.user.quanxian eq 1}">
                                ${user.password}
                            </c:if>
                            </td>

                            <td>${user.nickname}</td>
                            <td>
                                <c:if test="${not empty user.xuexiao}">
                                    ${user.xuexiao}
                                </c:if>
                                <c:if test="${empty user.xuexiao}">
                                    无所属学校
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${not empty user.banji}">
                                    ${user.banji}
                                </c:if>
                                <c:if test="${empty user.banji}">
                                    无所属班级
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${sessionScope.user.quanxian eq 1}">
                                    <c:if test="${not empty user.quanxian}">
                                        ${user.quanxian}
                                    </c:if>
                                    <c:if test="${empty user.quanxian}">
                                        无任何权限
                                    </c:if>
                                </c:if>

                            </td>
                            <td><a href="manager/yonghuguanliServlet?action=getUser&id=${user.id}&pageNo=${requestScope.page.pageNo}">修改</a>
                            <a class="deleteClass" href="manager/yonghuguanliServlet?action=delete&id=${user.id}&pageNo=${requestScope.page.pageNo}">删除</a></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="6">
                            <%@include file="/public_jsp/page_nav.jsp"%>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080right.png" style="width: 100%">

    </div>
</div>
</body>
</html>
