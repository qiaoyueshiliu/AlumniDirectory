<div class="row">
    <div class="column side">
    </div>

    <div class="column middle">
        <div class="card">
        </div>
    </div>

    <div class="column side">
    </div>
</div>

<link rel="stylesheet" href="../public_jsp/yemianbuju.css" type="text/css">

<div class="topicModule">
    <div class="topic-box">
        <div class="topicList">
            <c:forEach items="${requestScope.page.items}" var="book">
                <div class="topicItem">
                    <div class="content clearfix">
                        <ul class="info">
                            <li>
                                <span class="tag">${book.bankuai}</span>
                                <a class="userName" href="user/control/home?userName=test">
                                        ${book.nickname}
                                </a>
                                <span class="userRoleName">用户${book.xuexiao}</span>
                                <span class="postTime">发表时间：${book.createtime}</span>
                            </li>
                        </ul>
                        <h2 class="title clearfix">
                            <a href="MPage/huifuyemian.jsp?tieziid=${book.tieziid}" target="_blank">
                                    ${book.biaoti}
                            </a>
                        </h2>
                        <div class="clearfix"></div>

                        <div class="detail">
                            <h2 class="summary">
                                    ${book.neirong}
                            </h2>
                        </div>
                    </div>

                    <div class="statistic clearfix">
                    </div>
                </div>
            </c:forEach>
            <div class="topicItem">
                <div class="fatiekuang">
                    <div class="fatie">
                    </div>
                </div>
            </div>
            <div class="topicPage">
                    <div class="fatiekuangyi">
                        <a class="fatieanniu" href="MPage/fatie.jsp">发帖</a>
                    </div>
                    <div class="fatiekuangyi">
                        <a class="fatieanniu" href="Login/Login.jsp">请登录后发帖</a>
                    </div>
            </div>
        </div>
    </div>
</div>