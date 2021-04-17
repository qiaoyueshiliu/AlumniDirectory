<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/4/17
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<iframe name="target" width="500" height="500" style="float: left;"></iframe>
<div style="float: left;">
    <ul>
        <li><a href="http://localhost:8080/AlumniDirectory/sessionServlet?action=createOrGetSession" target="target">Session的创建和获取（id号、是否为新创建）</a></li>
        <li><a href="sessionServlet?action=setAttribute" target="target">Session域数据的存储</a></li>
        <li><a href="sessionServlet?action=getAttribute" target="target">Session域数据的获取</a></li>
        <li>Session的存活</li>
        <li>
            <ul>
                <li><a href="sessionServlet?action=defaultLife" target="target">Session的默认超时及配置</a></li>
                <li><a href="sessionServlet?action=life3" target="target">Session3秒超时销毁</a></li>
                <li><a href="sessionServlet?action=deleteNow" target="target">Session马上销毁</a></li>
            </ul>
        </li>
        <li><a href="" target="target">浏览器和Session绑定的原理</a></li>
    </ul>
</div>
</body>
</html>
