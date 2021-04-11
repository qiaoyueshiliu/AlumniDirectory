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
<link rel="stylesheet" href="../public_jsp/guanliyemian.css" type="text/css">
<head>
    <title>Title</title>
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
<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: Arial;
        padding: 10px;
        background: #f1f1f1;
    }

    /* 创建并排的三个非等列 */
    .column {
        float: left;
        padding: 10px;
    }

    /* 左和右列 */
    .column.side {
        width: 13%;
    }

    /* 中间列 */
    .column.middle {
        width: 74%;
    }

    /* 清除列之后的浮动 */
    .row:after {
        content: "";
        display: table;
        clear: both;
    }

    /* 响应式布局 - 创建堆叠而非并排的三列 */
    @media screen and (max-width: 600px) {
        .column.side, .column.middle {
            width: 100%;
        }
    }

    /* 设置页脚的样式 */
    .footer {
        background-color: #f1f1f1;
        padding: 10px;
        text-align: center;
    }

    .card {
        background-color: white;
        padding: 20px;
        margin-top: 20px;
    }
</style>

<%@ include file="../public_jsp/admin_header.jsp"%>
<body>
<div class="row">
    <div class="column side">
    </div>

    <div class="column middle">
        <div class="card">
            <h1>用户管理</h1>
            <div id="main">
                <table>
                    <tr>
                        <td>用户编号</td>
                        <td>用户名</td>
                        <td>用户密码</td>
                        <td>用户昵称</td>
                        <td colspan="2">操作</td>
                    </tr>
                    <%--        books 要和 BookServlet req.setAttribute 中保持一致--%>
                    <c:forEach items="${requestScope.users}" var="user">
                        <tr>
                            <td>No.${user.id}</td>
                            <td>${user.username}</td>
                            <td>${user.password}</td>
                            <td>${user.nickname}</td>
                            <td><a href="manager/yonghuguanliServlet?action=getUser&id=${user.id}">修改</a></td>
                            <td><a class="deleteClass" href="manager/yonghuguanliServlet?action=delete&id=${user.id}">删除</a></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="6">
                            <DIV class="pg">
                                <span class="count">共21条</span>
                                <STRONG>1</STRONG>
                                <A href="javascript:topage('2')" title="第2页">2</A>
                                <A href="javascript:topage('3')" title="第3页">3</A>
                                <LABEL>
                                    <INPUT onkeydown="if(event.keyCode==13) {topage(this.value);}" class="pg_input" title="输入页码，按回车跳转" value="1" size="2">
                                    <SPAN title="共3页"> / 3页</SPAN>
                                </LABEL>
                                <A class=nxt href="?page=2">下一页</A>
                            </DIV>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <div class="column side">
    </div>
</div>
</body>
</html>
