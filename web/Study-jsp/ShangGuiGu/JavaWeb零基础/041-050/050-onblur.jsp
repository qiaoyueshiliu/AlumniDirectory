<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/14
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function onblurFun() {
            //console 控制台对象，专门用来向浏览器的控制器打印输出，用于测试使用
            //log()是打印的方法
            console.log("静态注册，失去焦点");
        }

        window.onload = function () {
            var passwordobj = document.getElementById("password")
            passwordobj.onblur = function () {
                console.log("动态注册，失去焦点")
            }
        }

    </script>
</head>
<body>
    用户名：<input type="text" onblur="onblurFun()"><br>
    密码：<input id="password" type="text"><br>
</body>
</html>
