<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/4/19
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="../public_jsp/header02.jsp" %>
<link rel="stylesheet" href="head_css/public.css" type="text/css">
<link rel="stylesheet" href="public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="public_jsp/zhuyefatieanniu.css" type="text/css">
<link rel="stylesheet" href="public_jsp/pg.css" type="text/css">
<div class="row">
    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080.png" style="width: 100%">

    </div>

    <div class="column middle">
        <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">
        <div class="card">
            <form action="Huodonggonggao/huodongTiaozhuan.jsp" method="get">
                <input type="hidden" name="action" value="add">
                <table id="rapidregTable" width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#d0f0f2">
                    <tr>
                        <td valign="top" bgcolor="#FFFFFF" colspan="2">个人资料</td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFFF">ID </td>
                        <td valign="top" bgcolor="#FFFFFF">
                            <input name="id"
                                   type="hidden" maxlength="20" size="15"
                                   id="id" class="input" value="${sessionScope.user.id}"/>${sessionScope.user.id}
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFFF">昵称 </td>
                        <td valign="top" bgcolor="#FFFFFF">
                            <input name="nickname"
                                   type="hidden" maxlength="20" size="15"
                                   id="nickname" class="input" value="${sessionScope.user.nickname}"/>${sessionScope.user.nickname}
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFFF">用户名 </td>
                        <td valign="top" bgcolor="#FFFFFF">
                            <div>${sessionScope.user.username}
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFFF">密码 </td>
                        <td valign="top" bgcolor="#FFFFFF">
                            <div>${sessionScope.user.password}
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" name="RegisterBtn" value="点击修改" id="RegisterBtn"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="card">
        </div>
    </div>

    <div class="column side">
        <img src="tupian/wallhaven-4gr3z3_200x1080right.png" style="width: 100%">
    </div>
</div>
</body>
</html>
