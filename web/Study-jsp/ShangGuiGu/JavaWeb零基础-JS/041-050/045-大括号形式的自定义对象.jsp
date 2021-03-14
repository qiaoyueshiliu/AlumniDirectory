<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/14
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        var obj = {
            id : 1 ,
            age : 18 ,
            fun : function () {
                alert(this.id + this.age);
            }
        };
        obj.fun();
    </script>
</head>
<body>

</body>
</html>
