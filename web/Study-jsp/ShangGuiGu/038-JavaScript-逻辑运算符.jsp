<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/11
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>038-JavaScript-逻辑运算符</title>
    <script>
    var a = "abc";
    var b = true;
    alert(a && b);
    alert(b && a);
    </script>
</head>
<body>
<h1>JavaScript-逻辑运算符</h1>
<h3>0、null、undefined、""(空串)都认为是false</h3>
<h3>&&：且运算<br>有两种情况<br>第一种：当表达式全为真的时候，返回最后一个表达式的值<br>第二种：当表达式中，有一个为假的时候。返回
    第一个为假的表达式的值<br><br>||或运算:<br>第一种情况：当表达式全为假时，返回最后一个表达式的值<br>第二种情况：只要有一个
表达式为真，就会返回第一个为真的表达式的值</h3>
<a href="index.jsp"><h3>返回首页</h3></a>
</body>
</html>
