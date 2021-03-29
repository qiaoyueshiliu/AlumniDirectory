<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/11
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>040-JavaScript-函数</title>
    <script type="text/javascript">
        //定义一个无参函数
        function fun(){
            alert("无参函数fun()被调用了");
        }
        // fun();
        function fun2(a,b){
            alert("有参函数fun2(0被调用了 a=>" + a + "b=>" + b);
        }
        // fun2();
        function sum(num1,num2){
            var result=num1+num2;
            return result;
        }
        alert( sum(100,150));
    </script>
</head>
<body>

</body>
</html>
