<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/17
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
<%--    验证用户名是否合法的函数--%>
        function Check_UserName_Legal(){
            var Register_UserName_Box_Id_Obj = document.getElementById("Register_UserName_Box_Id");
            var usernameText = Register_UserName_Box_Id_Obj.value;
            var Register_UserName_Legal = /^\w{5,12}$/;
            if(Register_UserName_Legal.test(usernameText)){
                alert("用户名合法！");
            }else {
                alert('用户名不合法！');
            }
        }
    </script>
</head>
<body>
<h1>注册页面</h1>
<h3>用户名为5-12位的数字、字母、下划线组成</h3>
<p>
    用户名：<input type="text" id="Register_UserName_Box_Id">
    <button onclick="Check_UserName_Legal()">校验用户名是否合法</button>
</p>
<br>
<a href="../index.jsp">返回首页</a>
</body>
</html>
