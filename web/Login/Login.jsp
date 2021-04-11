<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/9
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="../public_jsp/yemianbuju.css" type="text/css">

<head>
    <!--可视化标签-->
    <!--引号使用英文状态下的引号单
    双引号都可以 但是别一单一双-->
    <title>登录</title>
    <%--    一般情况下base的标签值写到工程路径,  写base标签永远固定相对路径的跳转结果--%>
            <base href="http://localhost:8080/AlumniDirectory/">
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
    <style>
<%--        这个可以更改头部导航栏的位置--%>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            /*background-color: rgba(255, 251, 0, 0.336);*/
        }

        form {
            position: relative;
            /*margin: 300px auto;*/
            margin: 100px auto;
            width: 400px;
            height: 250px;
            text-align: center;
            border: 1px solid #ccc;
            transition: all 0.5s;
            border-radius: 10px;
            background-color: rgba(247, 0, 255, 0.336);
        }
        /*鼠标移动到登录框，样式变化*/
        /*form:hover {*/
        /*    transform: translate(10px);*/
        /*    box-shadow: 10px 10px 10px 0 rgb(7, 49, 235);*/
        /*}*/

        input {
            margin-top: 25px;
            width: 200px;
            height: 40px;
            border-radius: 10px;
            outline: none;
            text-indent: 1em;
            border: 1px solid #ccc;
        }

        button {
            margin: 40px 10px;
            width: 80px;
            height: 40px;
            border: none;
            color: #fff;
            background-color: rgba(168, 9, 9, 0.705);
            border-radius: 10px;
            outline: none;
        }

        .content {
            position: absolute;
            right: -250px;
            height: 40px;
            width: 260px;
            text-align: center;
            line-height: 40px;
            /* border:1px solid red; */
            background-color: #a56cca;
            border-radius: 5px;
            opacity: 0;
            transition: all 0.9s;
        }

        .content1 {
            top: 20px;
        }

        .content2 {
            top: 82px;
        }

        p {
            color: #fff;
            font-size: 14px;
        }

        i {
            position: absolute;
            left: -24px;
            top: 8px;
            display: inline-block;
            width: 0;
            height: 0;
            border: 12px solid transparent;
            border-right-color: #a56cca;
        }

        input:focus~div {
            right: -200px;
            opacity: 1;
        }

        .sub {
            margin: 40px;
            width: 80px;
            height: 40px;
            border: none;
            color: #fff;
            border-radius: 10px;
            outline: none;
            text-indent: 0;
            background-color: rgb(236, 8, 46);
        }

        .sub:hover {
            background-color: red;
        }

        button:hover {
            background-color: red;
        }
    </style>
</head>

<%--<%@include file="../public_jsp/header02.jsp"%>--%>
<%--<%@ include file="/head_css/head.jsp"%>--%>
<%@ include file="/public_jsp/header02.jsp"%>
<body>
<div class="row">
    <div class="column side">
    </div>

    <div class="column middle">
        <div class="card">
            <form action="http://localhost:8080/AlumniDirectory/userServlet" method="post">
                <input type="hidden" name="action" value="login">

                <div>
                    <b>
            <span class="errorMsg">
<%--                2021-4-2 13:45:43 JavaWeb-230   --%>
<%--                <%=request.getAttribute("msg")==null?"请输入用户名和密码":request.getAttribute("msg")%>      --%>
                ${ empty requestScope.msg ? "请输入用户名和密码" : requestScope.msg }
            </span>
                    </b>
                </div>
                <div>
                    <b>账号：</b>
                    <input type="text" placeholder="请输入账号" name="username"
                    <%--        2021-4-2 13:47:01 JavaWeb-230   --%>
                           value="${requestScope.username}"
                    /><br/>
                    <div class="content content1">
                        <i></i>
                        <p>账号</p>
                    </div>
                </div>
                <div>
                    <b>密码：</b>
                    <input type="password" placeholder="请输入密码" name="password"/>
                    <div class="content content2">
                        <i></i>
                        <p>密码</p>
                    </div>
                </div>
                <input type="submit" value="登录" class="sub" />
                <input type="button" value="注册" class="sub" onclick="window.open('Register/Registration_Page.jsp')">
                <%--    <a><button href="../Register/Registration_Page.jsp">注册</button></a>--%>
                <%--    <button οnclick="javascript:window.location.href='../Register/Registration_Page.jsp'">注册</button>--%>

            </form>

        </div>
    </div>

    <div class="column side">
    </div>
</div>
<div style="text-align:center;">
<%--    <p>更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>--%>
</div>
</body>
</body>
</html>