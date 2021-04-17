<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/28
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <span>欢迎<span class="um_span">${sessionScope.user.username}</span>登录论坛</span>
    <a href="http://localhost:8080/AlumniDirectory/Login/Login.jsp">注销</a>
    <a href="client/bookServlet_qiantai?action=page&pageNo=1">返回</a>
</div>
