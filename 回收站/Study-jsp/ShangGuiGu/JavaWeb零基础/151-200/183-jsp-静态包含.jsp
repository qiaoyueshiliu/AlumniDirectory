<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/28
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
头部信息<br>
主体信息<br>
<%--
静态包含 <%@include file=" "%>
file 属性表示你要包含的jsp页面的路径
地址中第一个斜杠 / 表示为http://ip:port/工程路径/ 映射到代码的web目录
--%>
<%--
静态包含的特点：
1、静态包含不会翻译被包含的jsp页面
2、静态包含其实是把被包含的jsp页面的代码拷贝到包含的位置执行输出
--%>
<%--
<%@include file="183-footer.jsp"%>
--%>
<%--
这是动态包含<jsp:include page=" "></jsp:include>
page属性是指定你要包含的jsp页面的路径
动态包含也可以像静态包含一样，把被包含的内容执行输出到包含位置

动态包含的特点：
1、动态包含会把包含的jsp页面翻译成java代码
2、动态包含底层代码使用如下代码去调用被包含的jsp页面执行输出
    JspRuntimeLibrary.include(request,response,"/include/footer.jsp",out,false);
3、还可以传递参数
--%>
<jsp:include page="183-footer.jsp">
    <jsp:param name="username" value="bbj"/>
    <jsp:param name="password" value="root"/>

</jsp:include>
</body>
</html>
