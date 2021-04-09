<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2021/3/24
  Time: 11:21
  To change this template use File | Settings | File Templates.
  <%--
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<link rel="stylesheet" href="../head_css/common.css" type="text/css">
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .fatiekuangyi{
            float: left;
            line-height: 36px;
            background-color: #f5f5f7;
        }

        .fatiekuangyi .fatieanniu{
            background-color: #f5f5f7;
            padding-left: 12px;
            padding-right: 12px;
            margin-left: 4px;
        }

        .fatiekuang{
            float: right;
        }
        .fatie{
            text-align: right;
            background-color: #f5f5f7;
            border-radius: 3px;
            padding-bottom: 0px;
            padding-left: 12px;
            padding-right: 10px;
            padding-top: 0px;
        }
    </style>
</head>
<%@include file="../public_jsp/header02.jsp"%>
<%--<%@include file="MPage_css.jsp"%>--%>
<body>
<div class="skeleton">
    <div class="main wrap" >
        <div class="tabModule">
            <div class="tab-box" >
                <div id="tabNavigation">
                    <a href=""  class='tab_current'>全部</a>
                    <a href="?tagId=26322939661348"  class='tab' data="">
                        综合
                    </a>
                    <a href="?tagId=26315816450947"  class='tab' data="">
                        玩机技巧
                    </a>
                    <a href="?tagId=26037571205829"  class='tab' data="">
                        测评晒单
                    </a>
                    <a href="?tagId=26315813050946"  class='tab' data="">
                        第三方配件
                    </a>
                    <a href="?tagId=26315802650945"  class='tab' data="">
                        公告
                    </a>
                    <a href="?tagId=25285555508571"  class='tab' data="">
                        求助
                    </a>
                    <a href="?tagId=26315839750948"  class='tab' data="">
                        功能建议
                    </a>
                    <a href="?tagId=30377063186032"  class='tab' data=" 白金会员 VIP">
                        <i class="icon cms-chess-queen-solid" ></i>
                        VIP专区
                    </a>
                    <a href="?tagId=30377064986033"  class='tab' data=" 白金会员">
                        <i class="icon cms-chess-queen-solid" ></i>
                        白金会员专区
                    </a>
                </div>
            </div>
            <div id="tabNavigation_more" class="more"></div>
        </div>
        <div class="topicModule">
            <div class="topic-box">
                <div class="topicList">
                    <c:forEach items="${requestScope.books}" var="book">
                        <div class="topicItem">
                        <%--                        <div class="avatarBox">--%>
                        <%--                            <a class="avatarLink" href="user/control/home?userName=test">--%>
                        <%--                                <img src="file/avatar/2018-01-06/100x100/2.jpg">--%>
                        <%--                            </a>--%>
                        <%--                        </div>--%>
                            <div class="content clearfix">
                                <ul class="info">
                                    <li>
                                        <span class="tag">综合</span>
                                        <a class="userName" href="user/control/home?userName=test">
                                                ${book.chuangjianren}
                                        </a>
                                        <span class="userRoleName">VIP</span>
                                        <span class="postTime">发表时间：2020-07-24 01:47:46</span>
                                        <span class="lastReplyTime">最新回复：2020-07-24 02:00:50</span>
                                    </li>
                                </ul>
                                <h2 class="title clearfix">
                                    <a href="thread?topicId=46" target="_blank">
                                            ${book.biaoti}
                                    </a>
                                    <span class="redEnvelope" alt="红包" title="红包" ><i class="cms-redEnvelope-1" ></i></span>
                                </h2>
                                <div class="clearfix"></div>

                                <div class="detail">
                                    <h2 class="summary">
                                        恭喜发财，试试发红包[表情][表情]..
                                    </h2>
                                    <script>
                                        $(function () {
                                            new commentMove(".topic_thumbnail_46",".topic_original_46","46").init();
                                        })
                                    </script>
                                </div>
                            </div>

                        <div class="statistic clearfix">

                            <div class="viewTotal">
                                <i class="cms-view icon"></i>
                                1879
                            </div>

                            <div class="commentTotal">
                                <i class="cms-commentCount icon"></i>

                            </div>
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

                        <DIV class="pg">
                            <span class="count">共21条</span>


                            <STRONG>1</STRONG>

                            <A href="javascript:topage('2')" title="第2页">2</A>

                            <A href="javascript:topage('3')" title="第3页">3</A>


                            <LABEL>
                                <INPUT onkeydown="if(event.keyCode==13) {topage(this.value);}" class="pg_input" title="输入页码，按回车跳转" value="1" size="2">
                                <SPAN title="共3页"> / 3页</SPAN>
                            </LABEL>
                            <A class=nxt href="?page=2">下一页</A>
                        </DIV>
                    </div>
                </div>
            </div>
        </div>

        <style>
            /** 半透明提示层 **/
            .hideTag-class .layui-layer-content{
                background-color: rgba(0,0,0,0.6);
            }
            .hideTag-class .layui-layer-content .layui-layer-TipsG {
                position: absolute;
                width: 0;
                height: 0;
                border-width: 5px;
                *overflow: hidden;

                border-style: dashed;
                border-color:rgba(0,0,0,0.6) transparent transparent transparent;
                margin-bottom: -2px;
                margin-bottom: 3px\0;
                *margin-bottom: 3px;
            }

            .hideTag-class .layui-layer-content .layui-layer-TipsT {
                left: 7px;
                border-right-style: solid;
                border-right-color: rgba(0,0,0,0.6);
            }
        </style>

        <script type="text/javascript">
            var tip_index = 0;
            $(".hideTagType").on('mouseenter', this,function() {
                var hideTagType = $(this).attr("data");
                var hideTagValue = "";
                if(hideTagType == 10){
                    hideTagValue = "输入密码可见";
                }else if(hideTagType == 20){
                    hideTagValue = "评论话题可见";
                }else if(hideTagType == 30){
                    hideTagValue = "达到等级可见";
                }else if(hideTagType == 40){
                    hideTagValue = "积分购买可见";
                }else if(hideTagType == 50){
                    hideTagValue = "余额购买可见";
                }

                tip_index = layer.tips(hideTagValue, $(this).children("span:first-child"), {
                    tips: 1,//[1, "rgba(0, 0, 0,0.5)"],
                    time: 5000,
                    skin: 'hideTag-class'
                });
            }).on('mouseleave', this, function(){
                layer.close(tip_index);
            });
        </script>

        <div style="height: 10px;"></div>
    </div>
</div>
</body>
</html>
