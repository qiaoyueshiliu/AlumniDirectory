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
    <link rel="stylesheet" href="../public_jsp/yemianbuju.css" type="text/css">
</head>
<%@include file="../public_jsp/header02.jsp"%>
<body>
<div class="row">
    <div class="column side">
    </div>

    <div class="column middle">
        <h1>回复页面</h1>
        <div class="card">
            <form action="manager/bookServlet" method="get">
                <input type="hidden" name="action" value="add">
                <table id="rapidregTable" width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#d0f0f2">
                    <tr>
                        <td valign="top" bgcolor="#FFFFFF">回复人 </td>
                        <td valign="top" bgcolor="#FFFFFF">
                            <input name="nickname"
                                   type="text" maxlength="20" size="15"
                                   id="nickname" class="input"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" bgcolor="#FFFFFF">内容 </td>
                        <td valign="top" bgcolor="#FFFFFF">
                            <div>
                                    <textarea  name="neirong"
                                               type="text" size="15" style="width: 100%;height:500px;" class="input"></textarea>
                                <input style='display:none' />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" name="RegisterBtn" value="回复" id="RegisterBtn" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>

    <div class="column side">
    </div>
</div>
</body>
</html>