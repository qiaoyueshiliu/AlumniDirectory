<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<style type="text/css">.pg {
    float: right;line-height: 36px;font-size: 14px;
}
.pg A {
    border-radius: 3px; padding-bottom: 0px; background-color: #f5f5f7; padding-left: 12px; padding-right: 12px;padding-top: 0px; display: inline; background-repeat: no-repeat; float: left; height: 34px; color: #666; margin-left: 4px; overflow: hidden; text-decoration: none; font-size: 10px;

}
.pg A.prev {
    border-radius: 3px; padding-bottom: 0px; padding-left: 10px; padding-right: 10px; padding-top: 0px
}
.pg A.nxt {
    border-radius: 3px;
    padding-bottom: 0px; padding-left: 10px; padding-right: 10px; padding-top: 0px
}
.pg A:hover {
    color: #1c1c1c;background-color: #e5e5e7;
}
.pg LABEL {border-radius: 3px;
    padding-top: 0px;padding-bottom: 0px; background-color: #f5f5f7; padding-left: 12px; padding-right: 12px; display: inline; background-repeat: no-repeat; float: left; height: 34px; color: #666; margin-left: 4px; overflow: hidden; text-decoration: none;

}
.pg LABEL .pg_input {
    width:25px;margin-bottom: 3px;*margin-bottom: 0px;border: #f5f5f7 1px solid;
    position: relative;top: -1px;color: #666;
    height: 14px;
    padding: 4px 3px;
    font-size: 14px;
}
.pg STRONG {
    border-radius: 3px; padding-bottom: 0px; padding-left: 12px; padding-right: 12px; display: inline; background-repeat: no-repeat; float: left; height: 34px; color: #666; margin-left: 4px; overflow: hidden;
    background-color: #e5e5e7;text-decoration: none; padding-top: 0px;
}
.pg span.count {
    border-radius: 3px; padding-bottom: 0px; background-color: #f5f5f7; padding-left: 12px; padding-right: 12px; display: inline; background-repeat: no-repeat; float: left; height: 34px; color: #666; margin-left: 4px; overflow: hidden;
    text-decoration: none; padding-top: 0px;
}

#pn_input {
    width: 30px;
    text-align: center;
}
</style>
<div class="pg">
    <span class="count">共 ${requestScope.page.pageTotalCount} 条</span>
    <span class="count">到 <input value="${param.pageNo}" name="pn" id="pn_input"> 页 <input
            id="searchPageBtn" class="tiaozhuandao" type="button" value="确定"></span>
    <script type="text/javascript">
        $(function () {
            //    跳到指定页码
            $("#searchPageBtn").click(function () {
                var pageNo = $("#pn_input").val();
                var pageTotal = ${requestScope.page.pageTotal};
                //    javaScript 提供了一个 location 地址栏对象
                //    属性 href ,可以获取浏览器中的地址
                if (pageNo < 1 || pageNo > pageTotal) {
                    alert("请输入正确的页码")
                } else {
                    location.href = "${pageScope.basePath}client/bookServlet_qiantai?action=page&pageNo=" + pageNo;
                }
            });
        });
    </script>
    <a class="nxt" href="client/bookServlet_qiantai?action=page&pageNo=1">首页</a>
    <c:if test="${requestScope.page.pageNo > 1}">
        <a class="nxt"
           href="client/bookServlet_qiantai?action=page&pageNo=${requestScope.page.pageNo-1}">上一页</a>
    </c:if>
    <%--页码输出的开始--%>
    <c:choose>
        <%--情况1：页码小于5页--%>
        <c:when test="${requestScope.page.pageTotal <= 5}">
            <c:set var="begin" value="1"/>
            <c:set var="end" value="${requestScope.page.pageTotal}"/>
        </c:when>
        <%-- 情况2：页码大于5页--%>
        <c:when test="${requestScope.page.pageTotal > 5}">
            <c:choose>
                <%-- 小情况1：前面3个--%>
                <c:when test="${requestScope.page.pageNo <= 3}">
                    <c:set var="begin" value="1"/>
                    <c:set var="end" value="5"/>
                </c:when>
                <%-- 小情况2：后面3个--%>
                <c:when test="${requestScope.page.pageNo > requestScope.page.pageTotal-3}">
                    <c:set var="begin" value="${requestScope.page.pageTotal-4}"/>
                    <c:set var="end" value="${requestScope.page.pageTotal}"/>
                </c:when>
                <%-- 小情况3：中间--%>
                <c:otherwise>
                    <c:set var="begin" value="${requestScope.page.pageNo-2}"/>
                    <c:set var="end" value="${requestScope.page.pageNo+2}"/>
                </c:otherwise>
            </c:choose>
        </c:when>
    </c:choose>
    <c:forEach begin="${begin}" end="${end}" var="i">
        <c:if test="${i == requestScope.page.pageNo}">
            <strong>${i}</strong>
        </c:if>
        <c:if test="${i != requestScope.page.pageNo}">
            <a href="client/bookServlet_qiantai?action=page&pageNo=${i}">${i}</a>
        </c:if>
    </c:forEach>
    <label>
        ${requestScope.page.pageNo}
        <span> / </span>
        ${requestScope.page.pageTotal}
    </label>
    <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
        <a class="nxt"
           href="client/bookServlet_qiantai?action=page&pageNo=${requestScope.page.pageNo+1}">下一页</a>
    </c:if>
    <a class="nxt"
       href="client/bookServlet_qiantai?action=page&pageNo=${requestScope.page.pageTotal}">末页</a>
</div>