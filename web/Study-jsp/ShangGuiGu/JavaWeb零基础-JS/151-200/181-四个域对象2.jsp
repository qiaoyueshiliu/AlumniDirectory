<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/27
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
pageContext(PageContextImpl类) 当前jsp页面范围内有效<br>
request(HttpServletRequest类) 一次请求内有效<br>
session(HttpSession类) 一个会话范围内有效（打开浏览器访问服务器，直到关闭浏览器）<br>
application(ServletContext类) 整个web工程范围内都有效（只要web工程不停止，数据都在）<br>
<br>
<h1>页面2</h1>
pageContext 域是否有值<%=pageContext.getAttribute("key")%><br>
request 域是否有值<%=request.getAttribute("key")%><br>
session 域是否有值<%=session.getAttribute("key")%><br>
application 域是否有值<%=application.getAttribute("key")%><br>
</body>
</html>
