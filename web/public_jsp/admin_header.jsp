<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/24
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%--base路径--%>
<%@ include file="/head_css/head.jsp"%>
<%--导航栏css--%>
<link rel="stylesheet" href="public_jsp/daoHangLan.css" type="text/css">
<body>
<ul class="DaoHangLan">
    <li><a href="client/bookServlet_qiantai?action=page&pageNo=1">网站主页</a></li>
    <li><a href="manager/bookServlet?action=page&pageNo=1">帖子管理</a></li>
    <li><a href="manager/yonghuguanliServlet?action=page&pageNo=1">用户管理</a></li>
    <li><a href="Links/linksShenhe.jsp">友情链接审核</a></li>
    <li><a href="Links/LinksManager.jsp">友情链接管理</a></li>
    <li><a href="manager/fankuiServlet?action=page&pageNo=1">反馈管理</a></li>

</ul>
</body>
