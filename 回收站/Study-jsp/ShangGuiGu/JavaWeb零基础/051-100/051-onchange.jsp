<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/14
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function onchangeFun() {
            alert("女神已经改变了")
        }

        window.onload= function(){
            var selobj = document.getElementById('sel01')
            selobj.onchange=function () {
                alert("男神已经改变了")
            }

        }

    </script>

</head>
<body>
    请选择你心中的女神：
<%--    静态注册    --%>
<select onchange="onchangeFun()">
    <option>--女神--</option>
    <option>芳芳</option>
    <option>11</option>
</select>
    请选择你心中的男神：
    <%--    静态注册    --%>
    <select id="sel01">
        <option>--男神--</option>
        <option>杰伦</option>
        <option>华仔</option>
</select>
</body>
</html>
