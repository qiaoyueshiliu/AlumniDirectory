<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/4/9
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发帖</title>

</head>
<%@include file="../public_jsp/header02.jsp"%>
<link rel="stylesheet" href="../head_css/common.css" type="text/css">

<body>
    <h1>发帖页面</h1>
    <form action="http://localhost:8080/AlumniDirectory/" method="post">
        <input type="hidden" name="action" value="">
        <%--    <form action="regist_success.jsp" method="post">--%>
        <%--    <form action="../../src/com.atguigu/" method="post">--%>
        <table id="rapidregTable" width="500" border="0" cellpadding="5" cellspacing="1" bgcolor="#d0f0f2">
            <tr>
                <td width="100" valign="top" bgcolor="#FFFFFF">标题
                </td>
                <td width="200" valign="top" bgcolor="#FFFFFF">
                    <input name="biaoti" type="text" maxlength="20" size="15"
                           id="Register_UserName_Box_Id" class="input" />
                    <%--            <span id="Register_UserName_Box_Span" style="color: red"></span>--%>
                    <%--            <button onclick="Check_UserName_Legal()">校验用户名是否合法</button>--%>
                </td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">模块 </td>
                <td valign="top" bgcolor="#FFFFFF">
                    <input name="mokuai" type="text" maxlength="20" size="15"
                           id="mokuai" class="input"/>
                </td>
            </tr>
            <tr>
                <td valign="top" bgcolor="#FFFFFF">内容 </td>
                <td valign="top" bgcolor="#FFFFFF">
                    <div>
                    <textarea  name="neirong" type="text" size="15" style="width:1000px;height:500px;" class="input"></textarea>
                        <input style='display:none' />
                    </div>
                </td>
            </tr>
            <%--            <tr type="hidden">--%>
            <%--                <td valign="top" bgcolor="#FFFFFF">验证码:abcde</td>--%>
            <%--                <td valign="top" bgcolor="#FFFFFF">--%>
            <%--                </td>--%>
            <%--            </tr>--%>
            <%--            <tr>--%>
            <%--                <td valign="top" bgcolor="#FFFFFF">取回密码的答案</td>--%>
            <%--                <td valign="top" bgcolor="#FFFFFF">--%>
            <%--                    <input name="Answer" type="text" maxlength="20" size="15"--%>
            <%--                           id="Answer" class="input"/>--%>
            <%--                </td>--%>
            <%--            </tr>--%>
            <tr>
                <td>
                    <input type="submit" name="RegisterBtn" value="发帖" id="RegisterBtn" />
                    <%--                    <input type="submit" name="RegisterBtn" value="验证" id="RegisterBtn1" />--%>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
