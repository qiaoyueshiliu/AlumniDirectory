<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/15
  Time: 0:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        body {background-color:black}
        p {color:white}
    </style>
    <script type="text/javascript">
        //表示要求字符串中，必须包含字母e
        //var patt = new RegExp("e");
        ///abc/表示查找要求字符串中是否包含a或b或c
        //var patt = /abc/;
        //表示要求字符串
        var patt = /a-z/;
        var str = "abcde";
        var str1 = "1234";
        alert(patt.test(str));
        alert(patt.test(str1));
    </script>
</head>
<body>

</body>
</html>
