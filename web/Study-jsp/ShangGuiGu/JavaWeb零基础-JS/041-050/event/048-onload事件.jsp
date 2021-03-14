<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/14
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function onloadFun() {
            alert('静态注册onload事件，所有代码')
        }

        window.onload = function () {
            alert('动态注册的onload');
        }
    </script>
</head>
<%--静态注册onload事件
    浏览器解析完页面之后就会触发的事件
--%>
<%--<body onload="onloadFun()">--%>
<body>

</body>
</html>
