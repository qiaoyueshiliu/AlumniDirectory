<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/29
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% System.out.println("index.jsp 请求转发，跳转到前台的 client/bookServlet_qiantai程序...");%>
<% System.out.println("action=page...");%>
<jsp:forward page="/client/bookServlet_index?action=page"></jsp:forward>