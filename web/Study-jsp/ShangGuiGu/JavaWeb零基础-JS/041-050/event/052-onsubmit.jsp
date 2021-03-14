<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/14
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        
        function onsubmitFun() {
            //要验证所有表单项是否合法，如果，有一个不合法就阻止提交
            alert('静态注册表单提交事件---发现不合法');
            return false;
        }

        window.onload = function () {
            var formobj = document.getElementById('form01');
            formobj.onsubmit = function () {
                alert('动态注册表单提交事件---发现不合法');
                return false;
            }
        }

    </script>
</head>
<body>
<%--rturn false 可以阻止表单提交    --%>
    <form action="http://localhost:8080" method="get" onsubmit="return onsubmitFun()">
        <input type="submit" value="静态注册">
    </form>

<form action="http://localhost:8080" id="form01">
    <input type="submit" value="动态注册">
</form>
</body>
</html>
