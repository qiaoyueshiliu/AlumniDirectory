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
<link rel="stylesheet" href="../public_jsp/fenye.css" type="text/css">
<link rel="stylesheet" href="../public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="../public_jsp/guanliyemian.css" type="text/css">
<head>
    <title>用户管理-修改用户</title>
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
<%@ include file="../public_jsp/admin_header.jsp" %>
<body>
<div class="row">
    <div class="column side">
    </div>

    <div class="column middle">
        <div class="card">
            <h1>编辑用户: 不能与已有用户名相同，否则失败</h1>
            <div id="main" style="width: 100%;">
                <form action="manager/banjiSerlvet" method="post" style="width: 100%;">
                    <input type="hidden" name="school" value="${sessionScope.user.xuexiao}">
                    <input type="hidden" name="class" value="${sessionScope.user.banji}">

                    <input type="hidden" name="pageNo" value="${param.pageNo}">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="id" value="${requestScope.user.id}">
                    <table style="width: 100%;">
                        <tr>
                            <td>用户编号</td>
                            <td>用户名</td>
                            <c:if test="${sessionScope.user.quanxian eq 1}">
                                <td>用户密码</td>
                            </c:if>
                            <td>用户昵称</td>
                            <td>用户学校</td>
                            <td>用户班级</td>
                            <td>用户权限</td>
                            <td colspan="1">操作</td>
                        </tr>
                        <tr>
                            <td>${user.id}</td>
                            <td><input style="width: 80px" name="username" type="hidden" value="${user.username}">${user.username}</td>
                            <%--密码--%>
                            <c:if test="${sessionScope.user.quanxian eq 1}">
                                <td><input name="password" type="text" value="${user.password}"></td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 2}">
                                <input name="password" type="hidden" value="${user.password}">
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 3}">
                                <input name="password" type="hidden" value="${user.password}">
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 23}">
                                <input name="password" type="hidden" value="${user.password}">
                            </c:if>
                            <%--昵称--%>
                            <c:if test="${sessionScope.user.quanxian eq 1}">
                                <td><input name="nickname" type="text" value="${user.nickname}"></td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 2}">
                                <td><input name="nickname" type="hidden" value="${user.nickname}">${user.nickname}</td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 3}">
                                <td><input name="nickname" type="hidden" value="${user.nickname}">${user.nickname}</td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 23}">
                                <td><input name="nickname" type="hidden" value="${user.nickname}">${user.nickname}</td>
                            </c:if>
                            <%--学校--%>
                            <c:if test="${sessionScope.user.quanxian eq 1}">
                                <td><input name="xuexiao" type="text" value="${user.xuexiao}"></td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 2}">
                                <td><input name="xuexiao" type="text" value="${user.xuexiao}"></td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 3}">
                                <td><input name="xuexiao" type="hidden" value="${user.xuexiao}">${user.xuexiao}</td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 23}">
                                <td><input name="xuexiao" type="text" value="${user.xuexiao}"></td>
                            </c:if>
                            <%--班级--%>
                            <c:if test="${sessionScope.user.quanxian eq 1}">
                                <td><input name="banji" type="text" value="${user.banji}"></td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 2}">
                                <td><input name="banji" type="hidden" value="${user.banji}">${user.banji}</td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 3}">
                                <td><input name="banji" type="text" value="${user.banji}"></td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 23}">
                                <td><input name="banji" type="text" value="${user.banji}"></td>
                            </c:if>
                            <%--权限--%>
                            <c:if test="${sessionScope.user.quanxian eq 1}">
                                <td><input name="quanxian" type="text" value="${user.quanxian}"></td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 2}">
                                <td><input name="quanxian" type="hidden" value="${user.quanxian}">${user.quanxian}</td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 3}">
                                <td><input name="quanxian" type="hidden" value="${user.quanxian}">${user.quanxian}</td>
                            </c:if>
                            <c:if test="${sessionScope.user.quanxian eq 23}">
                                <td><input name="quanxian" type="hidden" value="${user.quanxian}">${user.quanxian}</td>
                            </c:if>
                            <td><input type="hidden" name="guanliyuanquanxian" value="${sessionScope.user.quanxian}"></td>
                            <td><input type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>

    <div class="column side">
    </div>
</div>
</body>
</html>
