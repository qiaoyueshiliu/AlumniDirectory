<%--2021-3-24 09:32:28 更换头部代码可以兼容在index.jsp引入该页面--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="header.css" type="text/css">
<%--<link rel="stylesheet" href="../head_css/common.css" type="text/css">--%>
<html>
<head>
<meta charset="UFT-8">
<title>Insert title here</title>
</head>
<body>
<div class="headerModule">
	<div class="box">
<%--		网站Logo--%>
<%--		<a href="" class="logo">--%>
<%--			<img alt="LOGO" src="common/default/pc/images/logo.gif" >--%>
<%--		</a>--%>
		<div class="nav">
			<ul class="clearfix">
				<li><a href="index">首页</a></li>
				<li><a href="askList">问答</a></li>
				<li><a href="membershipCardList">会员卡</a></li>
			</ul>
		</div>
		<div class="head-search">
			<form action="search" method="get">
				<input name="keyword" value="" autocomplete="off" placeholder="搜索">
				<input type="submit" class="sub-button">
			</form>
		</div>
		<div class="menu" >
			<ul class="clearfix">
				<li><a href="register">注册</a></li>
				<li><a href="login">登录</a></li>
			</ul>
		</div>
	</div>
</div>

<%--废弃代码--2021-3-23 晚上第一次尝试复制页面--%>
<%--<div class="headerMoudle">--%>
<%--	<div class="box">--%>
<%--		<div><h1>校友录</h1></div>--%>
<%--		<div class="nav">--%>
<%--			<ul class="clearfix">--%>
<%--				<li><a href="../NewFile.jsp">首页</a></li>--%>
<%--				<li><a href="">预留1</a></li>--%>
<%--			</ul>--%>
<%--		</div>--%>
<%--		<div class="menu">--%>
<%--			<ul class="clearfix">--%>
<%--				<li><a href="../Register/regist_success.jsp">注册</a></li>--%>
<%--				<li><a href="">登录</a></li>--%>
<%--			</ul>--%>
<%--		</div>--%>
<%--	</div>--%>
<%--</div>--%>
</body>
</html>