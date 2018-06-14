<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0042)https://www.wkzuche.com/user/personal.html -->
<html lang="en">

<head>
<#assign base=rc.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>个人中心</title>

    <link rel="icon" href="https://static.wkzuche.com/www/images/facicon.ico">
    <link rel="stylesheet" href="${base}/css/common.css">
    <link rel="stylesheet" href="${base}/css/personal.css">
</head>

<body style="zoom: 1;">

<link rel="stylesheet" href="${base}/css/common.css">
<link rel="stylesheet" href="${base}/css/network.css">
<link rel="stylesheet" href="${base}/css/pay.css">
<div class="zc_head_bd" style="box-sizing:border-box">
    <div class="zc_main">
        <div class="zc_main_lp">
            <a href="${base}/user/preIndex"><img src="${base}/img/logo.png" alt="悟空租车"></a>
        </div>
        <div class="zc_head_tab">
            <ul class="nav-letter-right">

                <li onclick="document.location.href=&#39;/user/personal.html&#39;;return;" id="header_uid" style="color: rgb(242, 55, 50);">132****0854</li>
                <li style="margin-left: 6px" onclick="document.location.href=&#39;https://sso.wkzuche.com/member/logout.do?url=&#39;+encodeURIComponent(document.location.href)+&#39;&amp;uid=13212780854&#39;;return;">[ 退出 ]</li>

                <li id="top_mine" style="padding: 0" onclick="document.location.href=&#39;personal.html&#39;;return;">
                    <div class="monkey_me">
                        我的悟空
                        <i class="caret down-caret"></i>
                    </div>
                    <div id="no-login" style="display:none;top:56px;border-top: 1PX solid #E4E6E9;">
                        <p>
                            <a href="myorder.html">我的租车订单</a>
                        </p>
                        <p>
                            <a href="mycoupon.html">我的优惠券</a>
                        </p>
                    </div>
                    <div class="mian-wk" id="over-login" style="display:none;top:56px;border-top: 1PX solid #E4E6E9;">
                        <div class="main-img" style="float:left;margin: 12px 0 10px;">
                            <img src="${base}/img/wrz.png">
                        </div>
                        <div class="status-identify">
                            <span style="color:#6E6E6E">佚名</span>
                            <br>
                            <p class="identify-over"></p>
                            <div class="no-identify" style="display:none;">
                                <a href="auth.html"><span style="color:#F23732;">去认证</span></a>
                            </div>
                        </div>
                        <div class="main-rent-orders">
                            <a href="myorder.html">我的租车订单</a>
                        </div>
                        <div class="account-information">
                            <p style="padding-right:10px;">
                                <span style="float:left">账户余额 ￥ 0</span>
                                <a href="mycoupon.html"><span style="float:right">优惠券 <span style="color:#F23732">0张</span></span>
                                </a>
                            </p>
                            <p style="padding-right:10px;">
                                <span style="float:left">悟空币 ￥ 0</span>
                                <span style="float:right">积分  0</span>
                            </p>
                        </div>
                        <div class="vm">0</div>
                    </div>
                </li>
                <li id="top_Help" onclick="document.location.href=&#39;question.html&#39;;return;">帮助中心</li>
                <li>400-0515-507</li>
            </ul>
        </div>
    </div>
</div>
<div class="simpleSpace"></div>
<script charset="utf-8" src="${base}/js/lxb.js"></script>
<script charset="utf-8" src="${base}/js/v.js"></script>
<script type="text/javascript" async="" src="${base}/js/66c0b3fb.js"></script>
<script src="${base}/js/hm.js"></script>
<script type="text/javascript" src="${base}/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="${base}/js/public.js"></script>
<script type="text/javascript" src="${base}/js/header.js"></script>
<script type="text/javascript">
    var CONTEXT_PATH = "";
    var HeaderUid = "13212780854";
    var userId = "11214904";
</script>
<div style="clear: both;"></div>
<div class="personal">
    <div class="personal_left">
        <h4>个人中心</h4>
        <ul>
            <li>
                <a href="${base}/rentOrder/selectAll">我的订单</a>
            </li>
            <li>
                <a href="${base}/coupon/selectAll">我的优惠券</a>
            </li>
            <li>
                <a href="${base}/auth/list">实名认证</a>
            </li>
            <li>
                <a href="${base}/auth/feedBack">投诉与建议</a>
            </li>
        </ul>
    </div>
    <div class="personal_right">
        <!-- 默认 -->
        <div>
            <div class="personal_right_top">
                <div class="personal_right_top_left">

                    <img src="${base}/img/wrz.png">

                    <em>V5</em>
                    <div>

                        <p>王磊</p>

                        <span>13212780854</span>
                        <i class="personal_right_yrz">已认证</i>
                    </div>
                </div>
                <ol>
                    <li>
                        <span>账户余额</span>
                        <b>￥0</b>
                        <p>
                            <strong>冻结<i>￥0</i></strong>
                            <label>可用<i>￥0</i></label>
                        </p>
                    </li>
                    <li>
                        <span>悟空币</span>
                        <b>￥0</b>
                    </li>
                    <li>
                        <span>优惠券</span>
                        <b><a href="${base}/coupon/selectAll" style="cursor: pointer;color: #cb2a1e">4张</a></b>
                    </li>
                    <li>
                        <span>积分</span>
                        <b>0</b>
                    </li>
                </ol>
                <div style="clear: both;"></div>
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <div class="personal_right_up">
                <p>
                    <span>最新订单</span>
                    <b><a href="${base}/rentOrder/selectAll">查看全部订单</a></b>
                </p>
                <div>
                    <!-- 没有订单 -->
                    <div style="display: none" class="personal_no_order" id="no_order_div">
                        <span>您还没有订单哦~</span>
                        <b><a href="https://www.wkzuche.com/cartype/search.html">现在就去订车吧!</a></b>
                    </div>
                    <!-- 最新订单 -->
                    <div style="" class="personal_order" id="order_div">
                        <table cellpadding="0" cellspacing="0">
                            <thead>
                            <tr>
                                <td class="personal_order_ft">订单编号</td>
                                <td>订单信息</td>
                                <td>总计</td>
                                <td>订单状态</td>
                                <td>操作</td>
                            </tr>
                            </thead>
                            <tbody id="new_order">
                            <#list rentOrderList as list>


                            <tr>
                                <td class="personal_order_ft"><img src="${base}/img/694d7f45-1a5b-4f97-8d13-43d306812937.jpg">
                                    <p>订单号 : ${list.orderNum}</p>
                                </td>
                                <td>
                                    <p><b>${list.carName}</b><span>或同组车型</span></p>
                                    <p><span>取</span><i></i><span>还</span></p>
                                    <div><strong>${list.orderTakeTime?string('yyyy-MM-dd hh:mm:ss')}</strong><b><em>${list.takePlace.placeAddress}</em></b></div>
                                    <div><strong>${list.orderReturnTime?string('yyyy-MM-dd hh:mm:ss')}</strong><b><em>${list.returnPlace.placeAddress}</em></b></div>
                                </td>
                                <td>
                                    <p>${list.orderTotal}</p><span orderid="10230421" uid="13212780854">费用明细</span></td>
                                <td>
                                    <p>${list.orderStatus}</p>
                                </td>
                                <td style="padding-top:50px;">
                                    <p class="gengduocaozuo" style="position: relative;">更多操作<img src="${base}/img/gengduo.png" class="saoma" style="display: none"></p><br></td>
                            </tr>
                            </#list>
                            <#--<tr>-->
                                <#--<td class="personal_order_ft"><img src="${base}/img/694d7f45-1a5b-4f97-8d13-43d306812937.jpg">-->
                                    <#--<p>订单号 : 10230421</p>-->
                                <#--</td>-->
                                <#--<td>-->
                                    <#--<p><b>别克 凯越</b><span>或同组车型</span></p>-->
                                    <#--<p><span>取</span><i></i><span>还</span></p>-->
                                    <#--<div><strong>2018-06-06 13:00</strong><b><em>北京海淀区西直门钻河中心底商1-125</em></b></div>-->
                                    <#--<div><strong>2018-06-08 13:00</strong><b><em>北京海淀区西直门钻河中心底商1-125</em></b></div>-->
                                <#--</td>-->
                                <#--<td>-->
                                    <#--<p>￥336</p><span orderid="10230421" uid="13212780854">费用明细</span></td>-->
                                <#--<td>-->
                                    <#--<p>已取消</p>-->
                                <#--</td>-->
                                <#--<td style="padding-top:50px;">-->
                                    <#--<p class="gengduocaozuo" style="position: relative;">更多操作<img src="${base}/img/gengduo.png" class="saoma" style="display: none"></p><br></td>-->
                            <#--</tr>-->
                            <#--<tr>-->
                                <#--<td class="personal_order_ft"><img src="${base}/img/90c05af9-e892-4c76-9fbc-29e423aa2cd5.jpg">-->
                                    <#--<p>订单号 : 10229465</p>-->
                                <#--</td>-->
                                <#--<td>-->
                                    <#--<p><b>标致 308</b><span>或同组车型</span></p>-->
                                    <#--<p><span>取</span><i></i><span>还</span></p>-->
                                    <#--<div><strong>2018-06-04 17:00</strong><b><em>望京SOHO地铁站</em></b></div>-->
                                    <#--<div><strong>2018-06-06 17:00</strong><b><em>望京SOHO地铁站</em></b></div>-->
                                <#--</td>-->
                                <#--<td>-->
                                    <#--<p>￥436</p><span orderid="10229465" uid="13212780854">费用明细</span></td>-->
                                <#--<td>-->
                                    <#--<p>已取消</p>-->
                                <#--</td>-->
                                <#--<td style="padding-top:50px;">-->
                                    <#--<p class="gengduocaozuo" style="position: relative;">更多操作<img src="${base}/img/gengduo.png" class="saoma" style="display: none"></p><br></td>-->
                            <#--</tr>-->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 取消订单 -->
    <div class="cancellation_order" style="display: none">
        <div>
            <p>取消订单</p>
            <span class="">X</span>
        </div>
        <div>
            <p>
                <span>*</span>
                <i>取消原因 :</i>
                <input type="text" placeholder="请选择取消原因" readonly="readonly" class="choice" id="order_delete_reason">
            </p>
            <ul>
                <li>
                    <span id="penalty_amount_name">退改费</span>
                    <strong id="penalty_amount">￥0</strong>
                </li>
            </ul>
            <p>取消订单必知:</p>
            <ol>
                <li>
                    1.平日订单取消：取车前2小时（含）内或取车时间以后，因客户原因取消订单，客户需承担订单首日租金作为违约金，违约金最高不超过150元（亦不超过订单总金额）。
                </li>
                <li>
                    2.节假日订单取消：节假日期间取消规则以平台实时公布为准（若无特殊说明，与平日一致）。
                </li>
                <!-- <li style="color: red">
            注：节假日期间具体规则以平台实时公布为准。
        </li> -->
            </ol>
            <div>
                <input type="button" class="button_o" value="关闭">
                <input type="button" class="button_t" value="确定">
            </div>
        </div>
    </div>
    <form action="https://www.wkzuche.com/pay/pay.html" method="get" id="form_pay">
        <input type="hidden" id="order_id" name="orderid">
    </form>
</div>
<div style="clear: both;"></div>

<!-- 弹出层 -->
<!--<div class="mcover" style="display: none;"></div>
<div class="dialog_order_timeout dialog_class" id="confirm">
    <h1>温馨提示</h1>
    <div class="dialog_info">
        <span id="confirm_msg"></span>
        <div>
            <p id="confirm_fun" style="cursor:pointer;" class="btn-style">确定</p>
        </div>
    </div>
</div>-->
<div class="dialog_order_timeout dialog_class" id="coupon_confirm">
    <h1>温馨提示</h1>
    <div class="dialog_coupon_refresh">
        <p></p>
        <div>恭喜您，兑换成功</div>
        <span><label>3</label><span>S</span>后自动刷新</span>
    </div>
</div>
<div class="dialog_order_timeout dialog_class" id="confirm_cancel">
    <h1>温馨提示 <span onclick="$(&quot;.mcover&quot;).hide();$(&quot;#confirm_cancel&quot;).hide();"><img src="${base}/img/close_icon.png" alt=""></span></h1>
    <div class="dialog_info">
        <span id="confirm_cancel_msg"></span>
        <div>
            <button id="confirm_cancel_remove">取消</button>
            <p id="confirm_cancel_fun">确定</p>
        </div>
    </div>
</div>

<!--<div class="loading_shuaxin" style="display: none;">
    <img src="${base}/img/car.gif">
</div>-->

<div class="dialog_order_timeout dialog_class" id="dialog_order_timeout">
    <h1>订单超时 <span onclick="dialog_order_timeout_hide()"><img src="${base}/img/close_icon.png" alt=""></span></h1>
    <div class="dialog_info">
        <span>此订单已超时 , 请重新下单支付</span>
        <p id="dialog_order_timeout_success_fun">确定</p>
    </div>
</div>

<div class="dialog_pay_choose dialog_class" id="dialog_pay_choose">
    <h1>支付 <span onclick="dialog_pay_choose_hide();initPay();event.stopPropagation();"><img src="${base}/img/close_icon.png" alt=""></span></h1>
    <div class="dialog_info pad_class">
        <span class="tip_span">请您在新打开的页面进行支付，支付完成前请不要关闭该页面</span>
        <a class="other_type" id="dialog_pay_choose_auth_fun">其他支付方式</a>
        <a class="pay_finish" id="dialog_pay_choose_success_fun">已完成支付</a>
        <div class="cl"></div>
    </div>
</div>

<div class="dialog_return_pay dialog_class" id="dialog_return_pay">
    <span>车辆一眨眼就没啦 , 确定要放弃付款吗?</span>
    <p>
        <span class="return_span" id="dialog_return_pay_auth_fun">去意已决</span>
        <span class="keep_span" id="dialog_return_pay_success_fun">再想想</span>
    </p>
</div>
<script type="text/javascript">
    function confirm(msg, successFun) {
        $('.mcover').show();
        //$("#confirm").show();
        $("#confirm_msg").text(msg);
        $("#confirm_fun").off().on("click", function() {
            $(".mcover").hide();
            $("#confirm").hide();
            if(successFun != undefined) {
                successFun()
            }
            event.stopPropagation();
        });
    }

    function coupon_confirm(msg, successFun) {
        $('.mcover').show();
        $("#coupon_confirm").show();
        $("#coupon_confirm_msg").text(msg);
        $("#coupon_confirm_fun").off().on("click", function() {
            $(".mcover").hide();
            $("#coupon_confirm").hide();
            if(successFun != undefined) {
                successFun()
            }
            event.stopPropagation();
        });
    }

    function confirm_cancel(msg, successFun) {
        $('.mcover').show();
        $("#confirm_cancel").show();
        $("#confirm_cancel_msg").text(msg);
        var button = '';
        $("#confirm_cancel_fun").off().on("click", function() {
            $(".mcover").hide();
            $("#confirm_cancel").hide();
            button = '确定';
            successFun(button);
            event.stopPropagation();
        });
        $("#confirm_cancel_remove").off().on("click", function() {
            $(".mcover").hide();
            $("#confirm_cancel").hide();
            button = '取消';
            successFun(button);
            event.stopPropagation();
        });
    }

    function loadingUpShow() {
        $(".loading_shuaxin").show();
        $(".mcover").show();
    }

    function loadingUpHide() {
        $(".loading_shuaxin").hide();
        $(".mcover").hide();
    }

    //订单支付超时
    function dialog_order_timeout(fun) {
        $(".mcover").show();
        $("#dialog_order_timeout").show();
        $("#dialog_order_timeout_success_fun").off().on("click", function() {
            dialog_order_timeout_hide();
            fun();
            event.stopPropagation();
        });
    }

    function dialog_order_timeout_hide() {
        $(".mcover").hide();
        $("#dialog_order_timeout").hide();
    }

    //订单支付中
    function dialog_pay_choose(auth_fun, success_fun) {
        $(".mcover").show();
        $("#dialog_pay_choose").show();

        $("#dialog_pay_choose_auth_fun").off().on("click", function() {
            dialog_pay_choose_hide();
            auth_fun();
            event.stopPropagation();
        });

        $("#dialog_pay_choose_success_fun").off().on("click", function() {
            dialog_pay_choose_hide();
            success_fun();
            event.stopPropagation();
        });

    }

    function dialog_pay_choose_hide() {
        $(".mcover").hide();
        $("#dialog_pay_choose").hide();
    }

    //订单支付完成
    function dialog_return_pay(auth_fun, success_fun) {
        $(".mcover").show();
        $("#dialog_return_pay").show();

        $("#dialog_return_pay_auth_fun").off().on("click", function() {
            dialog_return_pay_hide();
            auth_fun();
            event.stopPropagation();
        });
        $("#dialog_return_pay_success_fun").off().on("click", function() {
            dialog_return_pay_hide();
            success_fun();
            event.stopPropagation();
        });

    }

    function dialog_return_pay_hide() {
        $(".mcover").hide();
        $("#dialog_return_pay").hide();
    }
</script>

<link rel="stylesheet" href="${base}/css/common.css">
<link rel="stylesheet" href="${base}/css/pay.css">
<link rel="stylesheet" href="${base}/css/network.css">
<div class="rent-car-advantage">
    <div class="position-car-advantage">
        <div style="float:left">
            <a href="ftl/site.ftl"><img src="${base}/img/range.png" style="float:left"></a>
        </div>
        <div style="text-align:center">
            <a href="ftl/renting.ftl"><img src="${base}/img/much-car.png"></a>
        </div>
        <div style="float:right">
            <a href="rule.html#rule1"><img src="${base}/img/good-service.png" style="float:right"></a>
        </div>
    </div>
</div>
<div class="zc_serve_default">
    <div class="ul_cover">
        <ul class="gyfw">
            <li class="li_head">关于服务</li>
            <li>
                <a href="rule.html#rule1">服务时间</a>
            </li>
            <li>
                <a href="rule.html#rule2">短租及可选服务</a>
            </li>
        </ul>
        <ul class="yd">
            <li class="li_head">预订指南</li>
            <li>
                <a href="rule.html#rule4">预订规则</a>
            </li>
            <li>
                <a href="rule.html#rule5">退改规则</a>
            </li>
        </ul>
        <ul class="qhc">
            <li class="li_head">取还车指南</li>
            <li>
                <a href="rule.html#rule6">取车规则</a>
            </li>
            <li>
                <a href="rule.html#rule7">还车规则</a>
            </li>
        </ul>
        <ul class="bx">
            <li class="li_head">保险及事故处理说明</li>
            <li>
                <a href="rule.html#rule8">保险责任</a>
            </li>
            <li>
                <a href="rule.html#rule9">事故处理说明</a>
            </li>
            <li>
                <a href="rule.html#rule10">救援及备用车服务</a>
            </li>
        </ul>
        <ul class="js">
            <li class="li_head">费用标准</li>
            <li>
                <a href="rule.html#rule11">标准服务收费</a>
            </li>
            <li>
                <a href="rule.html#rule12">可选服务价格</a>
            </li>
            <li>
                <a href="rule.html#rule13">其他服务说明</a>
            </li>
        </ul>
    </div>
    <div style="clear: both;"></div>
</div>
<div style="clear: both;"></div>
<div class="zc_foot zc_foot_background" style="padding-top: 0;">
    <div class="foot_cover zc_main">
        <p class="html_link" style="border-top: none;">
            <a href="story.html">关于我们<span>|</span></a>
            <a href="ftl/renting.ftl">短租自驾<span>|</span></a>
            <a href="question.html">帮助中心<span>|</span></a>
            <a href="media.html">媒体报道<span>|</span></a>
            <a href="ftl/recruitment.ftl">加入我们</a>
        </p>
    </div>
    <div class="zc_foot_company_info">
        <p>北京悟空出行科技有限公司</p>
        <p>
            <a class="info_mr_a">地址：北京市东城区东直门外大街46号A座25层07A室</a>
            <a>电话：400-0515-507</a>
        </p>
        <p>
            <a class="info_mr_a">京公网安备 11010102002013号</a>&nbsp;
            <a class="info_mr_a">京ICP备14057852号</a>&nbsp;
            <a>京ICP证160460号</a>
        </p>
    </div>
</div>

<script type="text/javascript" src="${base}/js/jquery-1.11.2.js"></script>
<script type="text/javascript" src="${base}/js/mk-browsing.js"></script>
<script type="text/javascript" src="${base}/js/public.js"></script>
<script type="text/javascript" src="${base}/js/baidu.js"></script>
<script type="text/javascript" src="${base}/js/tingyun-rum.js"></script>
<script type="text/javascript" src="${base}/js/174750.js" async="" defer=""></script>
<script type="text/javascript" src="${base}/js/ssyh.js"></script>
<script type="text/javascript" src="${base}/js/jquery.cookie.js"></script>

<script type="text/javascript" src="${base}/js/personal.js"></script>
<script type="text/javascript" src="${base}/js/user_personal.js"></script>
<script type="text/javascript">
    var user_id = '11214904';
    var uid = '13212780854';
    var name = '王磊';
    var www = '//static.wkzuche.com/www';
    user_get_new_order(uid);
</script>

<input type="hidden" name="log_id" id="log_id" value="101440065"></body>

</html>