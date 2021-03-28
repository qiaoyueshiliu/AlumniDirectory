<%@ page import="java.util.List" %>
<%@ page import="com.atguigu.pojo.Student" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/28
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>title</title>
    <style>
        table{
            border: 1px red solid;
            /*    solid 实线*/
            width: 600px;
            border-collapse: collapse;
        /*    边框合并*/
        }
        td,th{
            border: 1px red solid;

        }
    </style>
</head>
<body>
<%--jsp中输出一个表格，且有10个学生信息--%>
<%
    List<Student> studentList = new ArrayList<Student>();
    for (int i=0;i<10;i++){
        int t=i+1;
        studentList.add(new Student(t,"name"+t,18+t,"phone"+t));
    }
%>
<table>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>电话</td>
        <td>操作</td>
    </tr>
<% for (Student student : studentList) { %>
    <tr>
        <td><%=student.getId()%></td>
        <td><%=student.getName()%></td>
        <td><%=student.getAge()%></td>
        <td><%=student.getPhone()%></td>
        <td>删除、修改</td>
    </tr>
<% } %>
</table>
</body>
</html>
