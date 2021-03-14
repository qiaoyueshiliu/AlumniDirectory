<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/14
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        var obj = new Object();
        obj.name = "华仔" ;
        obj.age = 18 ;
        obj.fun = function () {
            alert("姓名：" + this.name);
        }
        obj.fun();
    </script>
</head>
<body>
    对象的定义：
var 变量名 = new Object();
变量名.属性名 = 值;
变量名.函数名 = function(){}
对象的访问：
变量名.属性 / 函数名();
</body>
</html>
