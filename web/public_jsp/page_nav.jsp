<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/4/15
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                    location.href = "${pageScope.basePath}${requestScope.page.url}&pageNo=" + pageNo;
                }
            });
        });
    </script>
    <%--    client/bookServlet_qiantai?action=page 替换为 ${requestScope.page.url} --%>
    <a class="nxt" href="${requestScope.page.url}&pageNo=1">首页</a>
    <%--大于首页才显示--%>
    <c:if test="${requestScope.page.pageNo > 1}">
        <a class="nxt" href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo-1}">上一页</a>
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
            <a href="${requestScope.page.url}&pageNo=${i}">${i}</a>
        </c:if>
    </c:forEach>
    <label>
        ${requestScope.page.pageNo}
        <span> / </span>
        ${requestScope.page.pageTotal}
    </label>
    <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
        <a class="nxt"
           href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}">下一页</a>
    </c:if>
    <a class="nxt"
       href="${requestScope.page.url}&pageNo=${requestScope.page.pageTotal}">末页</a>
</div>
