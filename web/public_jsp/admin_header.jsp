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
<%@ include file="/head_css/head.jsp"%>
<%--<% out.write(basePath); %>--%>
<body>
<ul class="DaoHangLan">
    <li><a href="client/bookServlet_qiantai?action=page&pageNo=1">网站主页</a></li>
    <li><a href="manager/bookServlet?action=page&pageNo=1">帖子管理</a></li>
    <li><a href="manager/yonghuguanliServlet?action=page&pageNo=1">用户管理</a></li>
</ul>
</body>
