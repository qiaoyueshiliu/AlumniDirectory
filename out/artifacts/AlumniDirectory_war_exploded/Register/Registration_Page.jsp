<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/17
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%--%>
<%--    String path = request.getContextPath();--%>
<%--    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();--%>
<%--%>--%>
<link rel="stylesheet" href="../public_jsp/header.css" type="text/css">
<html>
<head>
    <title>Title</title>
<%--    <base href="<%=basePath%>">--%>
<%--    一般情况下base的标签值写到工程路径,  写base标签永远固定相对路径的跳转结果--%>
<%--    <base href="http://localhost:8080/AlumniDirectory">--%>
    <base href="http://localhost:8080/AlumniDirectory/">
    <script type="text/javascript" src="../script/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        //页面加载完成之后
        $(function () {
            //给注册绑定单击事件
            $("#RegisterBtn").click(function () {
                // 验证用户名：必须由字母下划线组成，并且长度为5到12位
                // 1、获取用户名输入框内的内容
                var usernameText = $("#Register_UserName_Box_Id").val();
                // 2、创建正则表达式对象
                var usernamePatt = /^\w{5,12}$/;
                // 3、使用test方法验证
                // !usernamePatt 错误才提示结果
                if (!usernamePatt.test(usernameText)){
                    // 4、提示用户结果
                    $("span.errorMsg").text("用户名不合法！");
                    return false;
                }
                // 验证密码：必须由字母下划线组成，并且长度为5到12位
                var PasswdText = $("#Passwd").val();
                // 2、创建正则表达式对象
                var PasswdPatt = /^\w{5,12}$/;
                // 3、使用test方法验证
                // !usernamePatt 错误才提示结果
                if (!PasswdPatt.test(PasswdText)){
                    // 4、提示用户结果
                    $("span.errorMsg").text("密码不合法！");
                    return false;
                }
                $("span.errorMsg").text("");
                // 验证确认密码：和密码相同
                // 1、获取确认密码内容
                var Passwd2Text = $("#Passwd2").val();
                // 2、和密码比较
                if (Passwd2Text != PasswdText){
                    // 3、提示用户
                    $("span.errorMsg").text("两次密码输入不一致！");
                    return false;
                }
                // 验证邮箱：xxxxx@xxx.com
                // 1、获取邮箱里的内容 Email
                var emailText = $("#Email").val();
                // 2、创建正则表达式
                // var emailPatt = /^[a-z/\d]+(\.[a-z\d]+)*@[\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
                // var emailPatt = /'[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]+'/;
                var emailPatt = /^\w+@[a-zA-Z0-9]{2,10}(?:\.[a-z]{2,4}){1,3}$/;
                // 3、用test方法验证是否合法
                if (!emailPatt.test(emailText)){
                    // 4、提示用户
                    $("span.errorMsg").text("邮箱格式不合法！");
                    return false;
                }
                // 验证码
            });
        });
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
                Register_UserName_Box_Span.innerHTML
                    = "<img src=\"../img/Tick.jpg\" width=\"16\" height=\"16\">";
            }else {
                // alert('用户名不合法！');
                //innerHTML 可以修改 Register_UserName_Box_Span 框中的内容
                Register_UserName_Box_Span.innerHTML
                    = "<img src=\"../img/Cross.jpeg\" width=\"16\" height=\"16\">";
            }
        }
    </script>
</head>
<body>
<%--<%@include file="../public_jsp/header.jsp"%>--%>
<%@include file="../public_jsp/header02.jsp"%>
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
<a href="../index/index.jsp">返回首页</a>
<div>
<%--    配置在web.xml里面--%>
<%--    web阶段使用 base+相对
        框架之后，使用绝对路径
--%>
    <form action="/registServlet" method="post">
<%--    <form action="../../src/com.atguigu/" method="post">--%>

    <table id="rapidregTable" width="500" border="0" cellpadding="5" cellspacing="1" bgcolor="#d0f0f2">
            <tr>
                <td width="100" valign="top" bgcolor="#FFFFFF">登录用户名
                </td>
                <td width="200" valign="top" bgcolor="#FFFFFF">
                    <input name="UserName" type="text" maxlength="20" size="15"
                           id="Register_UserName_Box_Id" class="input" />
                    <%--            <span id="Register_UserName_Box_Span" style="color: red"></span>--%>
                    <%--            <button onclick="Check_UserName_Legal()">校验用户名是否合法</button>--%>
                </td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">用户昵称 </td>
                <td valign="top" bgcolor="#FFFFFF">
                    <input name="NickName" type="text" maxlength="20" size="15"
                           id="NickName" class="input"/>
                </td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">登录密码</td>
                <td valign="top" bgcolor="#FFFFFF">
                    <input name="Passwd" type="password" maxlength="20" size="15"
                           id="Passwd" class="input"/>
                </td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">再次输入登录密码</td>
                <td valign="top" bgcolor="#FFFFFF">
                    <input name="Passwd2" type="password" maxlength="20" size="15"
                           id="Passwd2" class="input"/>
                </td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">常用邮件地址</td>
                <td valign="top" bgcolor="#FFFFFF">
                    <input name="Email" type="text" maxlength="50" size="15"
                           id="Email" class="input"/>
                </td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">取回密码的问题</td>
                <td valign="top" bgcolor="#FFFFFF">
                    <input name="Question" type="text" maxlength="20" size="15"
                           id="Question" class="input"/>
                </td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">取回密码的答案</td>
                <td valign="top" bgcolor="#FFFFFF">
                    <input name="Answer" type="text" maxlength="20" size="15"
                           id="Answer" class="input"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="RegisterBtn" value="注册" id="RegisterBtn" />
                    <span class="errorMsg" style="color:red"></span>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
