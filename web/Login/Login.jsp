<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/9
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--可视化标签-->
    <!--引号使用英文状态下的引号单
    双引号都可以 但是别一单一双-->
    <title>登录</title>
    <%--    一般情况下base的标签值写到工程路径,  写base标签永远固定相对路径的跳转结果--%>
    <%--    <base href="http://localhost:8080/AlumniDirectory">--%>
    <script type="text/javascript">
    </script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: rgba(255, 251, 0, 0.336);
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

        form:hover {
            transform: translate(10px);
            box-shadow: 10px 10px 10px 0 rgb(7, 49, 235);
        }

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
<%@include file="../public_jsp/header02.jsp"%>
<body>
<form action="http://localhost:8080/AlumniDirectory/loginServlet" method="post">
    <div>
        <b>账号：</b>
        <input type="text" placeholder="请输入账号" name="username"/><br/>
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
    <input type="button" value="注册" class="sub" onclick="window.open('../Register/Registration_Page.jsp')">
<%--    <a><button href="../Register/Registration_Page.jsp">注册</button></a>--%>
<%--    <button οnclick="javascript:window.location.href='../Register/Registration_Page.jsp'">注册</button>--%>
</form>
<div style="text-align:center;">
<%--    <p>更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>--%>
</div>
</body>
</body>
</html>