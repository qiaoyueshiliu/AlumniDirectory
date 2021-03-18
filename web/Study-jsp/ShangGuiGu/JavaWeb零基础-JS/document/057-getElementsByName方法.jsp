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
            //让所有复选框都选中
            //document.getElementsByName("hobby");是根据指定的name属性查询返回多个标签对象集合
            //这个集合的操作和数组 一样;hobbies 是一个集合
            //集合中的每个元素都是dom对象
            //这个集合中的元素的顺序是他们在HTML页面中从上到下的顺序
            var hobbies = document.getElementsByName("hobby");
            //hobbies[0].value 查看第1个元素的value值
            //hoobies[0].checked 检查这个 input 框的checked值,查看是否被选中了
            //check表示复选框的状态,如果选中是True,如果没有被选中是False;这个属性可读可写
        }
        //全不选
        function checkNo() {

        }
        //反选
        function checkReverse() {

        }
    </script>
</head>
<body>
兴趣爱好：
<input type="checkbox" name="hobby" value="cpp">C++
<input type="checkbox" name="hobby" value="java">Java
<input type="checkbox" name="hobby" value="js">JavaScript
<br>
<button onclick="checkAll()">全选</button>
<button onclick="checkNo()">全不选</button>
<button onclick="checkReverse()">反选</button>

</body>
</html>
