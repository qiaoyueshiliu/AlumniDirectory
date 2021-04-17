<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/14
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        <%--
        需求：当用户点击了校验按钮，要获取输出框中的内容，然后验证其是否合法。
        验证的规则是：必须由字母，数字，下划线组成。并且长度是5-12位
        --%>function onclickFun() {
            //当我们要操作一个标签时，一定要先获取这个标签对象
            var usernameObj = document.getElementById("uesrname");
            // [object HTMLInputElement] 它就是dom对象
            var usernameText = usernameObj.value;
            // 如何验证字符串，符合某个规则，需要使用正则表达式技术
            var patt = /^\w{5,12}$/;
            // test()方法用于测试某个字符串，是不是匹配我的规则，
            // 匹配就返回true,不匹配就返回false

            var usernameSpanObj = document.getElementById("usernameSpan");
            // innerHTML 表示起始标签和结束标签中的内容
            // innerHTML 这个属性
            usernameSpanObj.innerHTML = "用户名错误！！！"
            if(patt.test(usernameText)){
                // alert("用户名合法！");
                // usernameSpanObj.innerHTML = "用户名合法！"
                usernameSpanObj.innerHTML = "<img src=\"../../../../../web/img/Tick.jpg\" width=\"16\" height=\"16\">";
            }else {
                // alert('用户名不合法！');
                // usernameSpanObj.innerHTML = "用户名不合法！" ;
                usernameSpanObj.innerHTML = "<img src=\"../../../../../web/img/Cross.jpeg\" width=\"16\" height=\"16\">";
            }
        }
    </script>
</head>
<body>
    用户名：<input type="text" id="uesrname">
    <span id="usernameSpan" style="color:red">
<%--        <img src="../../../../img/Tick.jpg" width="16" height="16">--%>
    </span>
    <button onclick="onclickFun()">校验</button>
</body>
</html>
