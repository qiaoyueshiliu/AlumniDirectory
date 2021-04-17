<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/29
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="../web/head_css/common.css" type="text/css">
<link rel="stylesheet" href="../web/public_jsp/yemianbuju.css" type="text/css">
<html>
<head>
    <title>Title</title>
    <style>
        .topicModule .topic-box .topicList .topicItem .qianwangzhuye {
            /**
            overflow: auto;
            overflow-x: hidden;**/
            margin-right:100px;
        }
    </style>

</head>
<%@ include file="/public_jsp/header02.jsp"%>
<body>
<div class="row">
    <div class="column side">
        <img src="../web/head_css/wallhaven-4gr3z3_200x1080.img" style="width: 100%">
    </div>
    <div class="column middle">
        <img src="../web/head_css/wallhaven-n6dqgx_1920x400.img" style="width: 100%">
        <div class="card">
            <div class="topicModule" style="width: 100%;">
                <div class="topic-box" style="width: 100%;">
                    <div class="topicList" style="width: 100%;">
                        <div class="topicItem" style="width: 100%;">
                            <div class="qianwangzhuye clearfix" style="width: 100%;text-align: center;">
                                <h3><a href="client/bookServlet_qiantai?action=page" style="font-size: 50px; ">前往主页</a></h3>
                            </div>
                            <div class="statistic clearfix">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="column side">
        <img src="../web/tupian/wallhaven-4gr3z3_200x1080right.png" style="width: 100%">
    </div>
</div>
</body>
</html>
