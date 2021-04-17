<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/19
  Time: 0:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        //全选
        function checkAll() {
            //getElementsByTagName 标签名
            //document.getElementsByTagName("input");
            //按照指定标签名来进行查询，并返回集合
            //这个集合的操作和数组 一样
            //集合中都是dom对象
            //集合中元素顺序 使他们在HTML页面中从上到下的顺序
            var inputs = document.getElementsByTagName("input");
            for(var i = 0 ; i < inputs.length ; i ++){
                inputs[i].checked = true;
            }
        }
    </script>
</head>
<body>
兴趣爱好：
<input type="checkbox" value="cpp" checked="checked">C++
<input type="checkbox" value="java">Java
<input type="checkbox" value="js">JavaScript
<br>
<button onclick="checkAll()">全选</button>
</body>
</html>
