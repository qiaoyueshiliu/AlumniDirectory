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
        //var patt = /[abc]/;
        //表示要求字符串，是否包含小写字母
        // var patt = /[a-z]/;
        //表示要求字符串，是否包含大写字母
        // var patt = /[A-Z]/;
        //表示要求字符串，是否包含数字
        // var patt = /[0-9]/;
        // var patt = /\w/;
        //包含 至少3个连续a，最多5个连续a
        var patt = /a{3,5}/;
        //是否包含 至少3个连续a
        var patt = /a{3,}/;
        //表示要求 字符串必须以a结尾
        var patt = /a$/;
        //表示要求 字符串必须以a开头
        var patt = /^a/;
        //包含 至少3个连续a，最多5个连续a
        var patt = /a{3,5}/;
        //要求字符串，从头到尾都必须完全匹配
        var patt = /^a{3,5}$/;



        var str = "abcde";
        var str1 = "1234";
        alert(patt.test(str));
        alert(patt.test(str1));
    </script>
</head>
<body>
<p>
    正则表达式
\w：查找单词字符 \W:非单词字符
单词字符包括：a-z,A-Z,0-9,下划线,包含_(下划线)字符
    \d：数字 \D：非数字

    /a+/    字符串中是否至少包含一个a
    /a*/    是否 *包含* 0个 或 多个a ；检查到第一个不是0就不在检查 包含0个a
    /a?/    匹配0个或者1个；同上 包含意味着一个符合即可
    /a{X}/  包含X个a 连续的x个a ； 包含：最小条件匹配
    /a{3,5}/    包含 至少3个连续a，最多5个连续a


</p>
</body>
</html>
