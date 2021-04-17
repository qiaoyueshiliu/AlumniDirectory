<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/27
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--response中表示响应，我们经常用于设置返回给客户端的内容（输出）
out也是给用户做输出使用的--%>
<%
    response.getWriter().write("response输出1<br>");
    response.getWriter().write("response输出2<br>");
    out.write("out输出1<br>");
    out.write("out输出2<br>");
    response.getWriter().write("response输出3<br>");

%>
<%--页面中统一使用out.print来输出--%>
</body>
</html>
