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
    <style>
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

        /* 设置页脚的样式 */
        .footer {
            background-color: #f1f1f1;
            padding: 10px;
            text-align: center;
        }

        .card {
            background-color: white;
            padding: 20px;
            margin-top: 20px;
        }
    </style>
</head>
<%@include file="../public_jsp/header02.jsp"%>
<link rel="stylesheet" href="../head_css/common.css" type="text/css">

<body>
    <div class="row">
        <div class="column side">
        </div>

        <div class="column middle">
            <h1>发帖页面</h1>
            <div class="card">
                <form action="manager/bookServlet" method="get">
                    <input type="hidden" name="action" value="${param.method}">
                    <table id="rapidregTable" width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#d0f0f2">
                        <tr>
                            <td width="20%" valign="top" bgcolor="#FFFFFF">标题
                            </td>
                            <td width="80%" valign="top" bgcolor="#FFFFFF">
                                <input name="biaoti"
                                       type="text" maxlength="20" size="15"
                                       id="Register_UserName_Box_Id" class="input" />
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" bgcolor="#FFFFFF">模块 </td>
                            <td valign="top" bgcolor="#FFFFFF">
                                <input name="bankuai"
                                       type="text" maxlength="20" size="15"
                                       id="bankuai" class="input"/>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" bgcolor="#FFFFFF">发帖人 </td>
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
                                <input type="submit" name="RegisterBtn" value="发帖" id="RegisterBtn" />
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
