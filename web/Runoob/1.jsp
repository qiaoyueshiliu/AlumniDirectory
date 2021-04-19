<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/4/19
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>菜鸟教程(runoob.com)</title>

</head>
<body>
<h1>我的第一个 JavaScript 程序1</h1>
<p id="demo">这是一个段落</p>
<c:set var="demo419172013" value="abc" scope="request"/>
<c:set var="demo419172011" value="2000" scope="request"/>
<c:out value="${demo419172013}"/>
<c:out value="${demo419172011}"/>
<script>
    document.write("${demo419172013}")
    document.write("${demo419172011}")
</script>
</body>
</html>
