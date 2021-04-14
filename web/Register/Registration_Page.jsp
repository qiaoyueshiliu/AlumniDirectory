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
        //页面加载完成之后
        $(function () {
            //给注册绑定单击事件
            // $("#RegisterBtn1").click(function () {
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
                var PasswdText = $("#password").val();
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
    <style type="text/css">
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial;
            padding: 10px;
            background: #f1f1f1;
        }

        /* 创建并排的三个非等列 */
        .column {
            float: left;
            padding: 10px;
        }

        /* 左和右列 */
        .column.side {
            width: 13%;
        }

        /* 中间列 */
        .column.middle {
            width: 74%;
        }

        /* 清除列之后的浮动 */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* 响应式布局 - 创建堆叠而非并排的三列 */
        @media screen and (max-width: 600px) {
            .column.side, .column.middle {
                width: 100%;
            }
        }

        .card {
            background-color: white;
            padding: 20px;
            margin-top: 20px;
        }
    </style>
</head>
<%@include file="../public_jsp/header02.jsp"%>
<body>
<div class="row">

    <div class="column side">
    </div>

    <div class="column middle">
        <div class="card">
            <div>
                <h1>欢迎注册</h1>
                <h3>用户名为5-12位的数字、字母、下划线组成</h3>
            </div>
            <div>
                <form action="http://localhost:8080/AlumniDirectory/userServlet" method="post">
                    <input type="hidden" name="action" value="regist">
                    <table id="rapidregTable" width="500" border="0" cellpadding="5" cellspacing="1" bgcolor="#d0f0f2">
                        <tr>
                            <td width="100" valign="top" bgcolor="#FFFFFF">登录用户名
                            </td>
                            <td width="200" valign="top" bgcolor="#FFFFFF">
                                <input name="username" type="text" maxlength="20" size="15"
                                       id="Register_UserName_Box_Id" class="input" />
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" bgcolor="#FFFFFF">用户昵称 </td>
                            <td valign="top" bgcolor="#FFFFFF">
                                <input name="nickname" type="text" maxlength="20" size="15"
                                       id="nickname" class="input"/>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" bgcolor="#FFFFFF">登录密码</td>
                            <td valign="top" bgcolor="#FFFFFF">
                                <input name="password" type="password" maxlength="20" size="15"
                                       id="password" class="input"/>
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
                        <input name="code" type="hidden" maxlength="20" size="15"
                               id="Question" class="input"
                               value="abcde"
                        />
                        <tr>
                            <td>
                                <input type="submit" name="RegisterBtn" value="注册" id="RegisterBtn" />
                                <span class="errorMsg" style="color:red">
                                    ${requestScope.msg}
                                </span>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>

        </div>
    </div>

    <div class="column side">
    </div>
</div>
</body>
</html>
