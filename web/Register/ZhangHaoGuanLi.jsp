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
    <script type="text/javascript" src="../script/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="../public_jsp/guanliyemian.css" type="text/css">
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
                    <c:forEach items="${requestScope.books}" var="book">
                        <tr>
                            <td>No.${book.tieziid}</td>
                            <td>${book.biaoti}</td>
                            <td>${book.nickname}</td>
                            <td><a class="deleteClass" href="manager/bookServlet?action=delete&tieziid=${book.tieziid}">删除</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>

    <div class="column side">
    </div>
</div>
</body>
</html>
