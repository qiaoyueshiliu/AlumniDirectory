<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/4/18
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<sql:setDataSource
        var="snapshot"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/book?useUnicode=true&characterEncoding=utf-8"
        user="root"
        password="123"
/>
<sql:update
        dataSource="${snapshot}"
        var="result">
    insert into
    huifu (tieziid,huifuneirong,id)
    value (
    '${param.tieziid}',
    '${param.huifuneirong}',
    '${param.id}'
    )
</sql:update>
<h1>回复成功</h1>

</body>
</html>
