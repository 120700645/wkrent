<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<#assign base=rc.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>投诉与建议</title>

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
                            <a href="${base}/rentOrder/selectAll"">我的租车订单</a>
                        </p>
                        <p>
                            <a href="${base}/coupon/selectAll">我的优惠券</a>
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
                                <a href="https://www.wkzuche.com/user/auth.html"><span style="color:#F23732;">去认证</span></a>
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
        <h4><a href="${base}/rentOrder/personal">个人中心</a></h4>
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
            <li style="background: #f9f9f9 url(//static.wkzuche.com/www/images/personal/l.png) no-repeat left center;color: #d62b1f!important;">投诉与建议</li>
        </ul>
    </div>
    <div class="personal_right">
        <div style="display: none"></div>
        <div style="display: none"></div>
        <div style="display: none"></div>
        <div class="personal_right_f">
            <p>投诉与建议</p>
            <p>
                <span>*</span> 请选择投诉类型
            </p>
            <ul class="personal_right_choice">
                <li>认证问题</li>
                <li>车况问题</li>
                <li>网点问题</li>
                <li>费用支付</li>
                <li>其他</li>
                <b style="display: none" id="personal_msg">请选择您的投诉类型哦~</b>
            </ul>
            <p>
                <span>*</span> 请详细描述您的意见、建议、问题
            </p>
            <div>
						<textarea id="feedback" maxlength="200">					请在这里输入您的意见
				</textarea>
                <span>还可以输入<i id="feedback_number">200</i>字</span>
                <b style="display: none">描述不可为空哦~</b>
            </div>
            <button class="personal_right_submit" uid="11214904">提交</button>
        </div>
    </div>
</div>
<div style="clear: both;"></div>

<!-- 弹出层 -->
<#--<div class="mcover"></div>-->
<#--<div class="dialog_order_timeout dialog_class" id="confirm">-->
    <#--<h1>温馨提示</h1>-->
    <#--<div class="dialog_info">-->
        <#--<span id="confirm_msg"></span>-->
        <#--<div>-->
            <#--<p id="confirm_fun" style="cursor:pointer;" class="btn-style">确定</p>-->
        <#--</div>-->
    <#--</div>-->
<#--</div>-->
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

<#--<div class="loading_shuaxin" style="display: none">-->
    <#--<img src="${base}/img/car.gif">-->
<#--</div>-->

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
<script type="text/javascript" src="${base}/js/user_feedback.js"></script>
<script type="text/javascript">
    var user_id = '11214904';
    var uid = '13212780854';
    var name = '王磊';
</script>

<input type="hidden" name="log_id" id="log_id" value="101440129"></body>

</html>