<%--
  Created by IntelliJ IDEA.
  User: dengsidi
  Date: 2021/3/28
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    .skeleton{
        width: 100%;
        min-height: 100%;

        height: auto;
        display: -webkit-box;/** display: box;和prism.js插件代码行高垂直对齐有冲突 **/
        display: box;
        display: -moz-box;
        display: -ms-flexbox;
        display: -o-box;

        -webkit-box-pack: center;
        -moz-box-pack: center;
        -o-box-pack: center;
        box-pack: center;
        -ms-flex-pack: center
    }

    .main{
        margin:0 auto;
        margin-top:51px;
        margin-bottom: 90px;
    }

    .wrap{
        width:1210px;
    }

    .tabModule {
        margin-top:10px;
        padding: 8px 18px 8px 18px;
        font-size: 14px;
        line-height: 150%;
        text-align: left;
        background-color: #fff;
        position: relative;
        box-shadow: 0 0px 3px 0 rgba(0,0,0,.02), 0 4px 8px 0 rgba(0,0,0,.02);
    }

    .tabModule .tab-box{
        margin-right: 90px;
    }
    .tabModule .tab-box .tab{
        margin-top: 8px;
        margin-bottom: 8px;display: block;
    }
    .tabModule .tab-box .tab:link,
    .tabModule .tab-box .tab:visited,
    .tabModule .tab-box .tab:active {
        display: inline-block;
        font-size: 14px;
        line-height: 14px;
        padding: 6px 8px 6px 8px;
        margin-right: 5px;
        border-radius: 3px;
        color: #555;
        background-color: #f5f5f6;
        position:relative;
    }
    .tabModule .tab-box .tab:hover {
        background-color: #ebebeb;
        color: #555;
        text-decoration: none;
    }
    .tabModule .tab-box .tab_current:link,
    .tabModule .tab-box .tab_current:visited,
    .tabModule .tab-box .tab_current:active {
        display: inline-block;
        font-size: 14px;
        line-height: 14px;
        padding: 5px 8px 5px 8px;
        margin-right: 5px;
        border-radius: 3px;
        background-color: #334;;
        color: #fff;
        position:relative;
        behavior: url(common/default/pc/js/css3pie/PIE.htc);  /*通知IE浏览器调用脚本作用于当前类*/
    }
    .tabModule .tab-box .tab_current:hover {
        background-color: #445;
        color: #fff;
        text-decoration: none;
    }
    .tabModule .tab-box .tab .icon{
        margin-right: 2px;
        position: relative;
        top: 1px;
        color: #999;
    }
    .tabModule .tab-box .tab_current .icon{
        margin-right: 2px;
        position: relative;
        top: 1px;
    }

    .tabModule .more{
        position: absolute;
        top: 18px;
        right: 15px;
    }
    .tabModule .readMore{
        color: #555;
        cursor:default;
    }
    .tabModule .readMore i{
        display:block;
        float:right;
        margin-top: 4px;
        margin-left: 3px;
    }
    .tabModule .shrinkMore{
        position: relative;
        display: block;
        color: #555;
        text-align:center;
        height: 30px;
        line-height:30px;
        font-size:15px;
        margin-top: 10px;
    }
    /* 话题模块 */
    .topicModule{
        margin-top: 10px;

    }
    .topicModule .topic-box{
        background:#fff;padding:0px 15px 0px 15px;
        box-shadow: 0 0px 3px 0 rgba(0,0,0,.02), 0 4px 8px 0 rgba(0,0,0,.02);

    }
    .topicModule .topic-box .topicList {
        margin-bottom: 10px;
    }
    .topicModule .topic-box .topicList .topicItem {
        margin: 0;
        border-bottom: 1px solid #f1f1f1;
        padding: 15px 0 10px 0;
        position: relative;
    }
    .topicModule .topic-box .topicList .topicItem .avatarBox {
        position: relative;
        margin-left: 0px;
        padding: 0;
        float: left;
    }
    .topicModule .topic-box .topicList .topicItem .avatarBox .avatarLink {
        display: block;
        position: relative;
        float: left;
        padding-left: 4px;
    }
    .topicModule .topic-box .topicList .topicItem .avatarBox .avatarLink  img {
        float: none;
        display: block;
        width: 62px;
        height: 62px;
        float: left;
        margin-right: 10px;
        border-radius:62px;
        position:relative;
    }
    .topicModule .topic-box .topicList .topicItem .content {
        /**
        overflow: auto;
        overflow-x: hidden;**/
        margin-left:88px;
        margin-right:100px;


    }
    .topicModule .topic-box .topicList .topicItem .content .info {
        margin-top:2px;
        margin-bottom: 8px;
        color: #c4c4c4;
        font-size: 14px;
        padding-left: 0;
        list-style: none;
    }
    .topicModule .topic-box .topicList .topicItem .content .info>li{
        display: inline-block;
    }
    .topicModule .topic-box .topicList .topicItem .content .info .tag{
        display: inline-block;
        min-width: 10px;
        padding: 4px 7px;
        font-size: 12px;
        color: #666666;
        line-height: 1;
        vertical-align: baseline;
        white-space: nowrap;
        text-align: center;
        background-color: #f5f5f5;
        border-radius: 2px;

    }
    .topicModule .topic-box .topicList .topicItem .content .info .module{
        display: inline-block;
        min-width: 10px;
        padding: 4px 7px;
        font-size: 12px;
        color: #666666;
        line-height: 1;
        vertical-align: baseline;
        white-space: nowrap;
        text-align: center;
        background-color: #f5f5f5;
        border-radius: 2px;

    }
    .topicModule .topic-box .topicList .topicItem .content .info .userName{
        color: #999;
    }
    .topicModule .topic-box .topicList .topicItem .content .info .userRoleName{
        white-space:nowrap;
        color:#e2b46e;
        background-color:#f8e7c4;
        border-radius:4px;
        padding:0 5px;
        font-size: 12px;
    }
    .topicModule .topic-box .topicList .topicItem .content .info .staff{
        white-space:nowrap;
        color:#15d327;
        background-color:#cafcc7;
        border-radius:4px;
        padding:0 5px;
        font-size: 12px;
    }
    .topicModule .topic-box .topicList .topicItem .content .info .postTime{
        margin-left: 10px;
    }
    .topicModule .topic-box .topicList .topicItem .content .info .lastReplyTime{
        margin-left: 10px;
    }
    .topicModule .topic-box .topicList .topicItem .content .title {
        margin: 0 5px 0 0;
        font-size: 18px;
        line-height: 32px;

    }
    .topicModule .topic-box .topicList .topicItem .content .title a{
        color: #393939;
    }
    .topicModule .topic-box .topicList .topicItem .content .title a:hover {
        text-decoration: none;
        color: #2196F3;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .topicRoleName{
        white-space:nowrap;
        color:#fff;
        background-color:#ffcc00;
        border-radius:4px;
        padding:0 5px;
        font-size: 13px;
        position:relative;
        top:-1px;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .redEnvelope{
        font-size: 22px;
        position:relative;
        top:2px;
        color: #ff483a;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hideTagType{
        font-size:0;/*父级元素设置font-size:0; 解决 display：inline-block两个元素之间的默认空格 */
        position: relative;
        top: -1px;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hideTagType .circle{
        border-radius:12px;display: inline-block;margin-right:5px;
        width: 24px;height: 24px;
        position:relative;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hideTagType .circle i{
        font-size: 14px;line-height: 24px; margin-left: 6px;
    }

    .topicModule .topic-box .topicList .topicItem .content .title .hideTagType .point:before{
        content: ' ';
        position: absolute;
        width: 4px;
        height: 4px;
        border-radius: 2px;
        top: 13px;
        left: 10px;
    }

    .topicModule .topic-box .topicList .topicItem .content .title .hide_10 .circle{
        background: #ebebeb;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hide_10 .point:before{
        background-color: #ebebeb;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hide_10 .circle i{
        color: #b2b2b2;
    }

    .topicModule .topic-box .topicList .topicItem .content .title .hide_20 .circle{
        background: #bbf9d5;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hide_20 .point:before{
        background-color: #bbf9d5;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hide_20 .circle i{
        color: #21de70;
    }

    .topicModule .topic-box .topicList .topicItem .content .title .hide_30 .circle{
        background: #bfebfb;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hide_30 .point:before{
        background-color: #bfebfb;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hide_30 .circle i{
        color: #27c3fc;
    }

    .topicModule .topic-box .topicList .topicItem .content .title .hide_40 .circle{
        background: #e2cffe;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hide_40 .point:before{
        background-color: #e2cffe;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hide_40 .circle i{
        color: #af82f2;
    }

    .topicModule .topic-box .topicList .topicItem .content .title .hide_50 .circle{
        background: #fedbb2;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hide_50 .point:before{
        background-color: #fedbb2;
    }
    .topicModule .topic-box .topicList .topicItem .content .title .hide_50 .circle i{
        color: #fe9d2d;
    }

    .topicModule .highlight B{
        color: #fc0012;
        font-weight:normal;
    }
    .topicModule .topic-box .topicList .topicItem .content .detail{
        position: relative;
    }
    .topicModule .topic-box .topicList .topicItem .content .detail .tm-m-photos{
        margin-top: 8px;
    }
    .topicModule .topic-box .topicList .topicItem .content .detail .videoInfo{
        margin: 8px 5px 0 0;


    }
    /* 隐藏标签 IE8以下浏览器不支持自定义标签，需要在页头<head>标签内执行document.createElement('player') */
    .topicModule .topic-box .topicList .topicItem .content .detail .videoInfo player{
        width: 320px;
        height: 180px;
        display: block;
        float: left;
        margin-right: 8px;
        margin-bottom: 8px;
        background: #000;
        position: relative;
        text-align: center;
    }

    .topicModule .topic-box .topicList .topicItem .content .detail .videoInfo player .cover{
        max-height: 100%;
        max-width: 100%;
        width: auto;
        height: auto;
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        margin: auto;
    }

    .topicModule .topic-box .topicList .topicItem .content .detail .videoInfo player .circle{
        display: inline-block;
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        margin: auto;
        line-height:180px;
        border-radius:30px;
        width: 60px;
        height: 60px;
        background-color: rgba(0,0,0,0.5);
    }
    .topicModule .topic-box .topicList .topicItem .content .detail .videoInfo player .iconBox{
        display: block;
        position: relative;
        width: 60px;
        height: 60px;

    }
    .topicModule .topic-box .topicList .topicItem .content .detail .videoInfo player .iconBox .playIcon{
        font-size: 30px;
        position: absolute;
        line-height:22px;
        width: 22px;
        height: 22px;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        margin: auto;
        color: #fff;
    }


    .topicModule .topic-box .topicList .topicItem .content .detail .summary{
        margin: 0px 50px 0 0;
        font-size: 15px;
        line-height: 28px;
        font-weight:normal;
        text-decoration:none;
        color: #aaa;
    }
    .topicModule .topic-box .topicList .topicItem .statistic {
        position:absolute;
        top:17px;
        right:0px;
        font-size: 14px;
        color: #c4c4c4;

    }
    .topicModule .topic-box .topicList .topicItem .statistic .viewTotal{
        float: left;margin-right: 4px;min-width: 60px;
    }
    .topicModule .topic-box .topicList .topicItem .statistic .viewTotal .icon{
        margin-left: 3px;position:relative;top: 1px;color: #e6e6e6;
    }
    .topicModule .topic-box .topicList .topicItem .statistic .commentTotal{
        float: right;margin-right: 10px;min-width: 50px;
    }
    .topicModule .topic-box .topicList .topicItem .statistic .commentTotal .icon{
        margin-left: 3px;position:relative;top: 1px;color: #e6e6e6;
    }
    .topicModule .topicPage {
        padding-top:20px;background: #fff;height: 54px;
        overflow: hidden;
    }
</style>