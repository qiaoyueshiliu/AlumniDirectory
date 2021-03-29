<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/14
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function onclickFun(){
            alert('静态注册onclick事件');
        }

        //动态注册
        window.onload = function () {
        //获取标签对象
            /*
            document 是 JavaScript语言提供的一个对象（文档）
get     获取
Element 元素就是标签
By      通过  由。。。经。。。
Id      id属性
             */
            var btnObj = document.getElementById("btn01");
            btnObj.onclick=function () {
                alert('动态注册');
            }
        }

    </script>
</head>
<body>
    <button onclick="onclickFun()">按钮1</button>
    <button id="btn01">按钮2</button>

</body>
</html>
