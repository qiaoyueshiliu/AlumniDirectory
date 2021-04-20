<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="head_css/public.css" type="text/css">
<link rel="stylesheet" href="public_jsp/yemianbuju.css" type="text/css">
<link rel="stylesheet" href="public_jsp/zhuyefatieanniu.css" type="text/css">
<link rel="stylesheet" href="public_jsp/pg.css" type="text/css">
<div class="column middle">
    <img src="head_css/wallhaven-n6dqgx_1920x400.png" style="width: 100%">
    <div class="card">
        <div style="text-align: center">
            <h1 style="font-size: 48px">
                    <span>反馈
                        <span class="um_span">

                        </span>成功
                    </span>
            </h1>
        </div>
        <div style="text-align: center">
            <span style="font-size:18px;">3s后自动跳转</span>
        </div>
        <%--连接数据库--%>
        <sql:setDataSource
                var="snapshot"
                driver="com.mysql.jdbc.Driver"
                url="jdbc:mysql://localhost:3306/book?useUnicode=true&characterEncoding=utf-8"
                user="root"
                password="123"
        />
        <sql:update
                dataSource="${snapshot}"
                var="result">
            insert into
            fankui (id,fankuiBiaoti,fankuiNeirong)
            value (
            '${param.id}',
            '${param.fankuiBiaoti}',
            '${param.fankuiNeirong}'
            )
        </sql:update>
    </div>
</div>
