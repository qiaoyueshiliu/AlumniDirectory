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
    <script type="text/javascript" src="../script/jquery-3.5.1.js"></script>
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
<%--    用户名：<input type="text" id="Register_UserName_Box_Id">--%>
<%--    勾号的地址 用于上面的转译--%>
<%--    <img src="../img/Cross.jpeg" width="16" height="16">--%>
<%--    Register_UserName_Box_Span 展示出判断用户名是否合法所用的勾号和叉号的格子 --%>
<%--    Register_UserName_Box_Span--%>
<%--    <span id="Register_UserName_Box_Span" style="color: red"></span>--%>
<%--    检验用户名是否合法--%>
<%--    <button onclick="Check_UserName_Legal()">校验用户名是否合法</button>--%>
</p>
<br>
<a href="../index.jsp">返回首页</a>
<table id="rapidregTable" width="500" border="0" cellpadding="5" cellspacing="1" bgcolor="#d0f0f2">
    <tr>
        <td width="100" valign="top" bgcolor="#FFFFFF">登录用户名
        </td>
        <td width="200" valign="top" bgcolor="#FFFFFF">
            <input name="UserName" type="text" maxlength="20" size="15" id="Register_UserName_Box_Id" class="input" />
            <span id="Register_UserName_Box_Span" style="color: red"></span>
            <button onclick="Check_UserName_Legal()">校验用户名是否合法</button>
        </td>
    </tr>
    <tr>
        <td valign="top" bgcolor="#FFFFFF">用户昵称 </td>
        <td valign="top" bgcolor="#FFFFFF"><input name="NickName" type="text" maxlength="20" size="15" id="NickName" class="input"/>
        </td>
    </tr>
    <tr>
        <td valign="top" bgcolor="#FFFFFF">登录密码</td>
        <td valign="top" bgcolor="#FFFFFF"><input name="Passwd" type="password" maxlength="20" size="15" id="Passwd" class="input"/>
        </td>
    </tr>
    <tr>
        <td valign="top" bgcolor="#FFFFFF">再次输入登录密码</td>
        <td valign="top" bgcolor="#FFFFFF"><input name="Passwd2" type="password" maxlength="20" size="15" id="Passwd2" class="input"/>
        </td>
    </tr>
    <tr>
        <td valign="top" bgcolor="#FFFFFF">常用邮件地址</td>
        <td valign="top" bgcolor="#FFFFFF"><input name="Email" type="text" maxlength="50" size="15" id="Email" class="input"/>
        </td>
    </tr>
    <tr>
        <td valign="top" bgcolor="#FFFFFF">取回密码的问题</td>
        <td valign="top" bgcolor="#FFFFFF"><input name="Question" type="text" maxlength="20" size="15" id="Question" class="input"/>
        </td>
    </tr>
    <tr>
        <td valign="top" bgcolor="#FFFFFF">取回密码的答案</td>
        <td valign="top" bgcolor="#FFFFFF"><input name="Answer" type="text" maxlength="20" size="15" id="Answer" class="input"/>
        </td>
    </tr>
    <tr>
        <td>
        <input type="image" name="RegisterBtn" id="RegisterBtn" src="../images/login_20.jpg" style="border-width:0px;" /></div>
        </td>
    </tr>
</table>
</body>
</html>
