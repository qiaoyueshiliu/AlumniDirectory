<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/27
  Time: 0:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         errorPage="../041-050/041-JavaScript-函数第二种定义方式.jsp"
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
i. language 属性 表示 jsp 翻译后是什么语言的文件,暂时只支持 java
ii. contentType 属性 表示 jsp 返回的数据类型是什么.也是源码中 response.setContentType() 参数值
iii. pageEncoding 属性 表示当前 jsp 页面文件本身的字符集
iv. import 属性 跟java源代码中一样. 用于导包 , 导类
=========================== 以下两个属性是给 out 输出流使用 ==========================
v. autoFlush 属性 设置当 out 输出流缓冲区满了之后,是否自动刷新冲级区.默认值是true.
vi. buffer 属性 设置 out 缓冲区的大小,默认是8kb
=========================== 以下两个属性是给 out 输出流使用 ==========================
vii. errorPage 属性 设置当 jsp 页面运行时出错，自动跳转去的错误页面路径
errorPage表示错误后自动跳转去的路径
这个路径一般都是以斜杠打头，他表示请求地址为http://ip:port/工程路径/
映射到代码的web目录
viii. isErrorPage 属性 设置当前jsp页面是否是错误信息页面。默认是false。如果是true可以获取异常信息
ix. session 属性 设置访问当前jsp页面，是否会创建HttpSession对象。默认是true。
x. extends 属性 设置jsp翻译出来的java类默认继承谁
</body>
</html>
