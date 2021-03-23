<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="header.css" type="text/css">
<html>
<head>
<meta charset="UFT-8">
<title>Insert title here</title>

</head>
<body>
<div class="headerModule">
	<div class="box">
		<a href="" class="logo">
			<img alt="LOGO" src="common/default/pc/images/logo.gif" >
		</a>
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