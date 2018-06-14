<!DOCTYPE html>
<!-- saved from url=(0029)https://www.wktrip.com/wx_pay -->
<html>

<head>
<#assign base=rc.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="悟空自驾游是一家立足云南、面向全国、辐射东南亚的自驾游服务平台！为全国旅游爱好者提供吃、住、行、游、购、 娱等在内的高品质服务。依托于移动互联网技术，将云南省16个地州、15个机场、火车站、高铁站、公交枢纽、酒店、旅游景点、自驾游营地、 餐饮、购物、娱乐等旅游目的地、服务点和连接点打通，打造&quot;租车+旅游&quot;全新模式。">
    <title>悟空自驾游 云南自驾游 自驾租车 云南租车 云南旅游 自驾游</title>
    <link rel="icon" href="https://static.wkzuche.com/www/images/facicon.ico">
    <script src="${base}/js/hm.js"></script>
    <script type="text/javascript">
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?02ead58d043689449fcd95b182303a33";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <link href="${base}/css/app.1e82d5e3d6f6affba7436d4c5b5588a5.css" rel="stylesheet">
    <style type="text/css">
        .comp-full-calendar {
            padding: 20px;
            background: #fff;
            max-width: 560px;
            margin: 0 auto;
        }

        .comp-full-calendar ul,
        .comp-full-calendar p {
            margin: 0;
            padding: 0;
        }

        .full-calendar-body {
            margin-top: 0px;
        }

        .full-calendar-body .weeks {
            display: flex;
            border-top: 1px solid #e0e0e0;
            border-bottom: 1px solid #e0e0e0;
            height: 48px;
        }

        .full-calendar-body .weeks .week {
            width: 100%;
            position: relative;
            flex: 1;
            text-align: center;
            margin-top: 14px;
            margin-top: 10px;
            /* //border-right:1px solid #f2f2f2;*/
        }

        .full-calendar-body .weeks .week span {
            display: block;
            float: left;
            width: 70px;
            line-height: 40px;
            text-align: center;
        }

        .full-calendar-body .highlightcls {
            color: #e1061c;
        }

        .full-calendar-body .dates {
            position: relative;
        }

        .full-calendar-body .dates .week-row {
            border-left: 1px solid #f2f2f2;
            display: flex;
        }

        .full-calendar-body .dates .week-row .day-cell {
            flex: 1;
            min-height: 63px;
            padding: 0px;
            border-right: 1px solid #f2f2f2;
            border-bottom: 1px solid #f2f2f2;
            background-color: #fdfdfd;
        }

        .full-calendar-body .dates .week-row .day-cell .day-number {
            margin-top: 12px;
            text-align: center;
            opacity: 0;
        }

        .full-calendar-body .dates .week-row .day-cell.white-cell {
            background-color: #ffffff;
        }

        .full-calendar-body .dates .week-row .day-cell.not-cur-month .day-number {
            color: rgba(0, 0, 0, 0.24);
        }

        .full-calendar-body .dates .dates-events {
            position: absolute;
            top: 0;
            left: 0;
            z-index: 1;
            width: 100%;
        }

        .full-calendar-body .dates .dates-events .events-week {
            display: flex;
        }

        .full-calendar-body .dates .dates-events .events-week .events-day {
            cursor: pointer;
            flex: 1;
            min-height: 63px;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .full-calendar-body .dates .dates-events .events-week .events-day .day-number {
            text-align: center;
            padding: 14px 5px 2px 4px;
        }

        .full-calendar-body .dates .dates-events .events-week .events-day.today {
            border-right: 2px solid #e1061c;
            border-left: 2px solid #e1061c;
            border-top: 2px solid #e1061c;
            border-bottom: 2px solid #e1061c;
            background-color: #ffffff;
        }

        .full-calendar-body .dates .dates-events .events-week .events-day.not-cur-month .day-number {
            color: rgba(0, 0, 0, 0.24);
        }

        .full-calendar-body .dates .dates-events .events-week .events-day .event-box {
            position: absolute;
            width: 80px;
            height: 64px;
            margin-top: -40px;
            margin-left: -4px;
        }

        .full-calendar-body .dates .dates-events .events-week .events-day .event-box .event-item {
            cursor: pointer;
            font-size: 14px;
            margin-top: 0px;
            margin-bottom: 0px;
            color: #e1061c;
            padding: 0 0 0 0px;
            height: 100%;
            line-height: 90px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            text-align: center;
        }

        .full-calendar-body .dates .dates-events .events-week .events-day .event-box .event-item.is-end {
            margin-right: 4px;
        }

        .full-calendar-body .dates .dates-events .events-week .events-day .event-box .event-item.is-opacity {
            opacity: 0;
        }

        .full-calendar-body .dates .dates-events .events-week .events-day .event-box .more-link {
            cursor: pointer;
            padding-left: 8px;
            padding-right: 2px;
            color: rgba(0, 0, 0, 0.38);
            font-size: 14px;
        }

        .full-calendar-body .dates .more-events {
            position: absolute;
            width: 150px;
            z-index: 2;
            border: 1px solid #eee;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.15);
        }

        .full-calendar-body .dates .more-events .more-header {
            background-color: #eee;
            padding: 5px;
            display: flex;
            align-items: center;
            font-size: 14px;
        }

        .full-calendar-body .dates .more-events .more-header .title {
            flex: 1;
        }

        .full-calendar-body .dates .more-events .more-header .close {
            margin-right: 2px;
            cursor: pointer;
            font-size: 16px;
        }

        .full-calendar-body .dates .more-events .more-body {
            height: 146px;
            overflow: hidden;
        }

        .full-calendar-body .dates .more-events .more-body .body-list {
            height: 144px;
            padding: 5px;
            overflow: auto;
            background-color: #fff;
        }

        .full-calendar-body .dates .more-events .more-body .body-list .body-item {
            cursor: pointer;
            font-size: 12px;
            background-color: #C7E6FD;
            margin-bottom: 2px;
            color: rgba(0, 0, 0, 0.87);
            padding: 0 0 0 4px;
            height: 18px;
            line-height: 18px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    </style>
    <style type="text/css">
        .full-calendar-header {
            display: flex;
            align-items: center;
        }

        .full-calendar-header .header-left,
        .full-calendar-header .header-right {
            flex: 1;
        }

        .full-calendar-header .header-right {
            text-align: right;
            color: red;
            cursor: pointer;
        }

        .full-calendar-header .header-left {
            cursor: pointer;
        }

        .full-calendar-header .header-center {
            flex: 3;
            text-align: center;
            color: #e1061c;
            margin-bottom: 8px;
        }

        .full-calendar-header .header-center .title {
            margin: 0 10px;
        }

        .full-calendar-header .header-center .prev-month,
        .full-calendar-header .header-center .next-month {
            cursor: pointer;
        }

        .full-calendar-header .header-center .disable-style {
            cursor: auto;
            color: #f2f2f2;
        }
    </style>
</head>

<body>
<div id="app">
    <div class="reuse_top">
        <div class="top-main">
            <div class="top-logo">
                <a href="https://www.wktrip.com/home"><img src="${base}/img/logo.74f8c8e.png" alt=""></a>
            </div>
            <div class="nav">
                <ul>
                    <li class="active">
                        <a href="https://www.wktrip.com/home" class="">首页</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/self" class="">自助自驾</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/carplusx" class="">车+X</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/motorcade" class="">跟团自驾</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/custom_tourism" class="">自由定制</a>
                    </li>
                    <li>
                        <a href="https://www.wkzuche.com/" target="_blank">自驾租车</a>
                    </li>
                </ul> <span hidden="hidden"></span>
                <div class="user">
                    <a href="https://www.wktrip.com/login" class="">登录 | 注册</a>
                </div>
                <div class="top-code"></div>
                <div class="phone"><span></span> 400-0515-507
                </div>
            </div>
        </div>
    </div>
    <div data-v-6796607b="" class="wx_pay">
        <div data-v-6796607b="" class="top">
            <p data-v-6796607b="" class="tit">微信扫码支付</p>
            <p data-v-6796607b="" class="time">请于 <span data-v-6796607b=""> 2018/06/13 12:41 </span> 前完成支付</p>
            <p data-v-6796607b="" class="money">支付金额： <span data-v-6796607b="">￥</span></p>
        </div>
        <div data-v-6796607b="" class="content"><#--${base}/js/qrcode.php-->
            <div data-v-6796607b="" class="code1"><img data-v-6796607b="" src="${base}/imageServlet/image" alt="" width="242" height="242"></div>
            <div data-v-6796607b="" class="sao"></div>
            <div data-v-6796607b="" class="zfb"></div>
        </div>
        <p data-v-6796607b="" class="other"><a href="${base}/rentOrder/submit" style="text-decoration: none">选择其他支付方式</a></p>
    </div>
    <div class="reuse_bottom">
        <div class="bottom-main">
            <div class="bottom-ul">
                <ul>
                    <li>服务协议</li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/select_travel_agreement" class="">旅游协议</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/car_agreement" class="">车辆服务协议</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/user_agreement" class="">用户服务协议</a>
                    </li>
                </ul>
                <ul>
                    <li>帮助中心</li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/about_five" class="">保险条款</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/about_six" class="">人工服务</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/about_sever" class="">常见问题</a>
                    </li>
                </ul>
                <ul>
                    <li>关于我们</li>
                    <li>
                        <a href="https://www.wktrip.com/about_jxdz" class="">匠心打造</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/about_two" class="">媒体报道</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/about_one" class="">悟空故事</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/about_three" class="">联系我们</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/about_four" class="">加入我们</a>
                    </li>
                </ul>
                <ul>
                    <li>经营资质</li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/business_license" class="">营业执照</a>
                    </li>
                    <li>
                        <a href="https://www.wktrip.com/reuse_left/business_license2" class="">经营许可证</a>
                    </li>
                </ul>
            </div>
            <div class="code">
                <div>
                    <p>订阅号</p> <img src="${base}/img/wxcode.cc79ece.jpg" alt=""></div>
                <div>
                    <p>APP下载</p> <img src="${base}/img/appcode.e8d3d31.png" alt=""></div>
            </div>
            <div class="footer">
                <p>北京悟空国际旅行社有限公司</p>
                <p>地址：北京市东城区东直门外大街39号院航空服务楼2#B517&nbsp;电话：400-0515-507</p>
                <p>苏ICP备17014043号-2　｜　ICP证苏B2-20170199</p>
            </div>
        </div>
    </div>
</div>
<#--<script type="text/javascript" src="${base}/js/manifest.fb5239f97ae874448f44.js"></script>-->
<script type="text/javascript" src="${base}/js/vendor.434b2f13fc4d603f30a3.js"></script>
<script type="text/javascript" src="${base}/js/app.6d0a0c8dac82bcb8212b.js"></script>
</body>

</html>