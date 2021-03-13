<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/13
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>042-JavaScript-函数不允许重载</title>
    <script type="text/javascript">
        function fun(){
            alert("无参函数fun()");
        }
        function fun(a,b){
            alert("有参函数fun(a,b)");
        }
        fun()
    </script>
</head>
<body>

</body>
</html>
