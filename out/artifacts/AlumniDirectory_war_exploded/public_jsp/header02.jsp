<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/24
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
    <style>
        .DaoHangLan{
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }
        .DaoHangLan li {
            float: left;
        }
        .DaoHangLan li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .DaoHangLan li a:hover {
            background-color: #111;
        }
    </style>
<body>
<ul class="DaoHangLan">
    <li><a class="active" href="../Register/Registration_Page.jsp">主页</a></li>
    <li><a href="#news">登录</a></li>
    <li><a href="../Register/Registration_Page.jsp">注册</a></li>
    <li><a href="#about">关于</a></li>
</ul>
</body>
