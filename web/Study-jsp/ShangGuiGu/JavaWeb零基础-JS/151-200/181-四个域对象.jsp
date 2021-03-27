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
    pageContext(PageContextImpl类) 当前jsp页面范围内有效
    request(HttpServletRequest类) 一次请求内有效
    session(HttpSession类) 一个会话范围内有效（打开浏览器访问服务器，直到关闭浏览器）
    application(ServletContext类) 整个web工程范围内都有效（只要web工程不停止，数据都在）
    <br>
    <h1>页面</h1>
    <%
        //往四个域中都分别保存了数据
        pageContext.setAttribute("key","pageContext");
        request.setAttribute("key","request");
        session.setAttribute("key","session");
        application.setAttribute("key","application");
    %>
    pageContext 域是否有值<%=pageContext.getAttribute("key")%><br>
    request 域是否有值<%=request.getAttribute("key")%><br>
    session 域是否有值<%=session.getAttribute("key")%><br>
    application 域是否有值<%=application.getAttribute("key")%><br>
    <%
        request.getRequestDispatcher("./181-四个域对象2.jsp").forward(request,response);
    %>
四个域对象虽然都可以存取数据。在使用上它们是有优先顺序的。
四个域在使用的时候，优先顺序分别是：它们从小到大范围的使用顺序
pageContext ====>>> request ====>>> session  ====>>> application

</body>
</html>
