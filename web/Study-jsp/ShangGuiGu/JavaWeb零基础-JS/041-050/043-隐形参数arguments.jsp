<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/14
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        // function fun(){
            // alert(arguments.length);//查看参数个数
        //     alert("无参函数fun()");
        //     // alert(arguments[0]);
        //     // alert(arguments[1]);
        //     for(var i=0;i<arguments.length;i++){
        //         alert(arguments[i]);
        //     }
        // }
        // fun(1,"ad");
        function sum(num1,num2) {
            var result=0;
            for (var i = 0 ; i<arguments.length ; i++){
                if (typeof (arguments[i] == 'number')){
                    result += arguments[i];
                }

            }
            return result;
        }

        alert(sum(1,2,3,4,5));
    </script>
</head>
<body>

</body>
</html>
