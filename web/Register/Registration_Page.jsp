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
            // Register_UserName_Box_Id_Obj 注册页面用户名框的id的对象
            // document.getElementById 获取 Register_UserName_Box_Id 的id
            var Register_UserName_Box_Id_Obj = document.getElementById("Register_UserName_Box_Id");
            //usernameText 用户名框的内容
            var usernameText = Register_UserName_Box_Id_Obj.value;
            //Register_UserName_Legal 正则表达式 用户名为5-12位的数字、字母、下划线组成
            var Register_UserName_Legal = /^\w{5,12}$/;
            //判断 usernameText 用户名框的内容 是否合法
            if(Register_UserName_Legal.test(usernameText)){
                // alert("用户名合法！");
                //innerHTML 可以修改 Register_UserName_Box_Span 框中的内容
                Register_UserName_Box_Span.innerHTML = "    <img src=\"../img/Tick.jpg\" width=\"16\" height=\"16\">";
            }else {
                // alert('用户名不合法！');
                //innerHTML 可以修改 Register_UserName_Box_Span 框中的内容
                Register_UserName_Box_Span.innerHTML = "<img src=\"../img/Cross.jpeg\" width=\"16\" height=\"16\">";
            }
        }
    </script>
</head>
<body>
<h1>注册页面</h1>
<h3>用户名为5-12位的数字、字母、下划线组成</h3>
<p>
<%--    Register_UserName_Box_Id 注册页面用户名框的id     --%>
    用户名：<input type="text" id="Register_UserName_Box_Id">
<%--    勾号的地址 用于上面的转译--%>
<%--    <img src="../img/Cross.jpeg" width="16" height="16">--%>
<%--    Register_UserName_Box_Span 展示出判断用户名是否合法所用的勾号和叉号的格子 --%>
<%--    Register_UserName_Box_Span--%>
    <span id="Register_UserName_Box_Span" style="color: red"></span>
<%--    检验用户名是否合法--%>
    <button onclick="Check_UserName_Legal()">校验用户名是否合法</button>
</p>
<br>
<a href="../index.jsp">返回首页</a>
</body>
</html>
