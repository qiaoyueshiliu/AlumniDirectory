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
    <title>用户管理-修改用户</title>
    <script type="text/javascript" src="../script/jquery-3.5.1.js"></script>
    <style type="text/css">
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

    <style type="text/css">
        body {
            overflow: hidden;
        }

        * {
            margin: 0;
            font-family: "Microsoft Yahei";
            color: #666;
        }

        div {
            margin: auto;
            margin-bottom: 10px;
            margin-top: 10px;

        }

        #header {
            height: 82px;
            width: 1200px;
        }

        #main {
            height: 460px;
            width: 100%;
            border: 1px black solid;
            overflow: auto;
        }

        #bottom {
            height: 30px;
            width: 1200px;
            text-align: center;
        }

        #book {
            width: 100%;
            height: 90%;
            margin: auto;

        }

        .b_list {
            height: 300px;
            width: 250px;
            margin: 20px;
            float: left;
            margin-top: 0px;
            margin-bottom: 0px;
            border: 1px #e3e3e3 solid;
        }

        #page_nav {
            width: 100%;
            height: 10px;
            margin: auto;

            text-align: center;
        }

        #pn_input {
            width: 30px;
            text-align: center;
        }

        .img_div {
            height: 150px;
            text-align: center;
        }

        .book_img {
            height: 150px;
            width: 150px;
        }

        .book_info {

            text-align: center;
        }

        .book_info div {
            height: 10px;
            width: 300px;
            text-align: left;
        }

        .wel_word {
            font-size: 60px;
            float: left;
        }

        .logo_img {
            float: left;
        }

        #header div a {
            text-decoration: none;
            font-size: 20px;
        }

        #header div {
            float: right;
            margin-top: 55px;
        }

        .book_cond {
            margin-left: 500px;
        }

        .book_cond input {
            width: 50px;
            text-align: center;
        }


        /*登录页面CSS样式  */

        #login_header {
            height: 82px;
            width: 1200px;
        }

        .login_banner {
            height: 475px;
            background-color: #39987c;
        }

        .login_form {
            height: 310px;
            width: 406px;
            float: right;
            margin-right: 50px;
            margin-top: 50px;
            background-color: #fff;
        }

        #content {
            height: 475px;
            width: 1200px;
        }

        .login_box {
            margin: 20px;
            height: 260px;
            width: 366px;
        }

        h1 {
            font-size: 20px;
        }

        .msg_cont {
            background: none repeat scroll 0 0 #fff6d2;
            border: 1px solid #ffe57d;
            color: #666;
            height: 18px;
            line-height: 18px;
            padding: 3px 10px 3px 40px;
            position: relative;
            border: none;
        }

        .msg_cont b {
            /*background: url("") no-repeat scroll -104px -22px rgba(0, 0, 0, 0);*/
            display: block;
            height: 17px;
            left: 10px;
            margin-top: -8px;
            overflow: hidden;
            position: absolute;
            top: 50%;
            width: 16px;
        }

        .form .itxt {
            border: 0 none;
            float: none;
            font-family: "宋体";
            font-size: 14px;
            height: 18px;
            line-height: 18px;
            overflow: hidden;
            padding: 10px 0 10px 10px;
            width: 220px;
            border: 1px #e3e3e3 solid;
        }

        #sub_btn {
            background-color: #39987c;
            border: none;
            color: #fff;
            width: 360px;
            height: 40px;
        }

        #l_content {
            float: left;
            margin-top: 150px;
            margin-left: 300px;
        }

        #l_content span {
            font-size: 60px;
            color: white;
        }

        .tit h1 {
            float: left;
            margin-top: 5px;
        }

        .tit a {
            float: right;
            margin-left: 10px;
            margin-top: 10px;
            color: red;
            text-decoration: none;
        }

        .tit .errorMsg {
            float: right;
            margin-left: 10px;
            margin-top: 10px;
            color: red;
        }

        .tit {
            height: 30px;
        }

        /*购物车*/
        #main table {
            margin: auto;
            margin-top: 80px;
            border-collapse: collapse;
        }

        #main table td {
            width: 120px;
            text-align: center;
            border-bottom: 1px #e3e3e3 solid;
            padding: 10px;
        }

        .cart_info {
            width: 700px;
            text-align: right;
        }

        .cart_span {
            margin-left: 20px;
        }

        .cart_span span {
            color: red;
            font-size: 20px;
            margin: 10px;
        }

        .cart_span a, td a {
            font-size: 20px;
            color: blue;
        }

        #header div span {
            margin: 10px;
        }

        #header div .um_span {
            color: red;
            font-size: 25px;
            margin: 10px;
        }

        #header div a {
            color: blue;
        }
    </style>
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
            <div id="main">
                <form action="manager/yonghuguanliServlet" method="post">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="id" value="${requestScope.user.id}">
                    <table>
                        <tr>
                            <td>用户编号</td>
                            <td>用户名</td>
                            <td>用户密码</td>
                            <td>用户昵称</td>
                            <td colspan="2">操作</td>
                        </tr>
                        <tr>
                            <td>${user.id}</td>
                            <td><input name="username" type="text" value="${user.username}"></td>
                            <td><input name="password" type="text" value="${user.password}"></td>
                            <td><input name="nickname" type="text" value="${user.nickname}"></td>
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
