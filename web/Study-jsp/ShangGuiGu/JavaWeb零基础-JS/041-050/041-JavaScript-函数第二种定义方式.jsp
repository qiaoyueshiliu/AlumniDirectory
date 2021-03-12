<%--
  Created by IntelliJ IDEA.
  User: 巧月十六
  Time: 2021-3-12 09:33:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>041-JavaScript-函数第二种定义方式</title>
    <script type="text/javascript">
        var fun = function (){
            alert("无参函数");
        }
        fun();
        var fun2 = function (a,b){
            alert("有参函数a=" + a );
        }
        fun2(1,2);
    </script>
</head>
<body>

</body>
</html>
