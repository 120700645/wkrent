<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0036)https://www.wkzuche.com/pay/pay.html -->
<html lang="en">

<head>
<#assign base=rc.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>收银台</title>

    <link rel="icon" href="https://static.wkzuche.com/www/images/facicon.ico">
    <link rel="stylesheet" href="${base}/css/common.css">
    <link rel="stylesheet" href="${base}/css/pay.css">
    <style></style>
</head>

<body style="zoom: 1;">

<link rel="stylesheet" href="${base}/css/common.css">
<link rel="stylesheet" href="${base}/css/network.css">
<link rel="stylesheet" href="${base}/css/pay.css">
<div class="zc_head_bd" style="box-sizing:border-box">
    <div class="zc_main">
        <div class="zc_main_lp">
            <a href="https://www.wkzuche.com/index.html"><img src="${base}/img/logo.png" alt="悟空租车"></a>
        </div>
        <div class="zc_head_tab">
            <ul class="nav-letter-right">

                <li onclick="document.location.href=&#39;/user/personal.html&#39;;return;" id="header_uid">135****2143</li>
                <li style="margin-left: 6px" onclick="document.location.href=&#39;https://sso.wkzuche.com/member/logout.do?url=&#39;+encodeURIComponent(document.location.href)+&#39;&amp;uid=13545192143&#39;;return;">[ 退出 ]</li>

                <li id="top_mine" style="padding: 0" onclick="document.location.href=&#39;/user/personal.html&#39;;return;">
                    <div class="monkey_me">
                        我的悟空
                        <i class="caret down-caret"></i>
                    </div>
                    <div id="no-login" style="display:none;top:56px;border-top: 1PX solid #E4E6E9;">
                        <p>
                            <a href="https://www.wkzuche.com/user/myorder.html">我的租车订单</a>
                        </p>
                        <p>
                            <a href="https://www.wkzuche.com/user/mycoupon.html">我的优惠券</a>
                        </p>
                    </div>
                    <div class="mian-wk" id="over-login" style="top: 56px; border-top: 1px solid rgb(228, 230, 233); display: none;">
                        <div class="main-img" style="float:left;margin: 12px 0 10px;">
                            <img src="${base}/img/wrz.png">
                        </div>
                        <div class="status-identify">
                            <span style="color:#6E6E6E">王磊</span>
                            <br>
                            <p class="identify-over">已认证</p>
                            <div class="no-identify" style="display:none;">
                                <a href="https://www.wkzuche.com/user/auth.html"><span style="color:#F23732;">去认证</span></a>
                            </div>
                        </div>
                        <div class="main-rent-orders">
                            <a href="https://www.wkzuche.com/user/myorder.html">我的租车订单</a>
                        </div>
                        <div class="account-information">
                            <p style="padding-right:10px;">
                                <span style="float:left">账户余额￥0</span>
                                <a href="https://www.wkzuche.com/user/mycoupon.html"><span style="float:right">优惠券 <span style="color:#F23732">3张</span></span>
                                </a>
                            </p>
                            <p style="padding-right:10px;">
                                <span style="float:left">悟空币￥0</span>
                                <span style="float:right">积分 0</span>
                            </p>
                        </div>
                        <div class="vm">V3</div>
                    </div>
                </li>
                <li id="top_Help" onclick="document.location.href=&#39;/other/matter.html&#39;;return;">帮助中心</li>
                <li>400-0515-507</li>
            </ul>
        </div>
    </div>
</div>
<div class="simpleSpace"></div>
<script charset="utf-8" src="${base}/js/lxb.js"></script>
<script charset="utf-8" src="${base}/js/v.js"></script>
<script type="text/javascript" async="" src="${base}/js/66c0b3fb.js"></script>
<script src="${base}/js/262028.js" defer="" async=""></script>
<script src="${base}/js/hm.js"></script>
<script type="text/javascript" src="${base}/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="${base}/js/public.js"></script>
<script type="text/javascript" src="${base}/js/header.js"></script>
<script type="text/javascript">
    var CONTEXT_PATH = "";
    var HeaderUid = "13545192143";
    var userId = "11218343";
</script>
<div class="zc_pay_cover">
    <div class="pay-info">
        <img src="${base}/img/submit-success-icon.png" alt="">
        <p>
            <span class="sub_pay">订单提交成功 , 还差一步就抢到心爱的车 , 快去支付吧~</span>
            <span class="sub_time">请于<a id="order_aout_end_time"> 2018/06/13 17:16 </a>前完成支付</span>
        </p>
        <p class="pre_fee">预付租金:
            <a id="rent_amount">￥2685</a>
        </p>
        <div class="cl"></div>
    </div>
    <div class="pay-type">
        <p>支付方式</p>
        <ul class="typeUl">

            <li class="type_li_active" pay_method="6"><img class="wx_img" src="${base}/img/weixin-type-icon.png" alt="">微信支付</li>

            <li pay_method="7" class=""><img class="alipay_img" src="${base}/img/alipay-type-icon.png" alt="">支付宝支付</li>

            <li pay_method="12" class=""><img class="alipay_img" style="margin-top: -3px" src="${base}/img/union-card.png" alt="">银行卡支付</li>

            <li pay_useless="1" class="other_li" pay_method="8">
                <!--usable_img类为账户余额可用icon & cannot_img类为账户余额不可用icon-->
                <a class="account_img cannot_img"></a>
                <span>
				                    <a>账户余额支付</a>
				                    <a class="account_fee">(￥0可用)</a>
				                </span>
            </li>

        </ul>
        <div class="cl"></div>
        <a href="${base}/rentOrder/pay" style="text-decoration: none"><span class="go_pay_btn" id="go_pay_btn">
            立即支付</span></a>
        <#--<input data-v-d83f0836="" type="hidden" id="pay_url" value="${base}/rentOrder/pay">-->
        <#--<span class="go_pay_btn" id="go_pay_btn">立即支付</span>-->
</div>
</div>
<form id="pay_form" method="post" target="_blank">
<input type="hidden" name="amount" id="amount" value="2685">
<input type="hidden" name="orderid" id="orderid" value="10235943">
<input type="hidden" name="type" id="type" value="PAY">
<input type="hidden" name="token" id="token" value="1354519214311218343-kgiGhsO0fkG047nGg6QI">
<input type="hidden" name="pay_type" id="pay_type" value="3">
<input type="hidden" name="runtype" id="runtype" value="PC">
<input type="hidden" name="pay_method" id="pay_method" value="6">
<input type="hidden" name="trade_type" id="trade_type" value="NATIVE">
<input type="hidden" name="order_aout_end_time" value="2018/06/13 17:16">
<input type="hidden" name="body" id="body" value="悟空租车(WKDDZF)订单预付金支付">
</form>

<!-- 弹出层 -->
<#--<div class="mcover"></div>-->
<div class="dialog_order_timeout dialog_class" id="confirm">
    <h1>温馨提示</h1>
    <div class="dialog_info">
        <span id="confirm_msg"></span>
        <div>
            <p id="confirm_fun" style="cursor:pointer;" class="btn-style">确定</p>
        </div>
    </div>
</div>
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

<div class="loading_shuaxin" style="display: none">
    <img src="${base}/img/car.gif">
</div>

<div class="dialog_order_timeout dialog_class" id="dialog_order_timeout">
    <h1>订单超时 <span onclick="dialog_order_timeout_hide()"><img src="${base}/img/close_icon.png" alt=""></span></h1>
    <div class="dialog_info">
        <span>此订单已超时 , 请重新下单支付</span>
        <p id="dialog_order_timeout_success_fun">确定</p>
    </div>
</div>

<#--<div class="dialog_pay_choose dialog_class" id="dialog_pay_choose">-->
    <#--<h1>支付 <span onclick="dialog_pay_choose_hide();initPay();event.stopPropagation();"><img src="${base}/img/close_icon.png" alt=""></span></h1>-->
    <#--<div class="dialog_info pad_class">-->
        <#--<span class="tip_span">请您在新打开的页面进行支付，支付完成前请不要关闭该页面</span>-->
        <#--<a class="other_type" id="dialog_pay_choose_auth_fun">其他支付方式</a>-->
        <#--<a class="pay_finish" id="dialog_pay_choose_success_fun">已完成支付</a>-->
        <#--<div class="cl"></div>-->
    <#--</div>-->
<#--</div>-->

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
        $("#confirm").show();
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
            <a href="https://www.wkzuche.com/site/country_site.html"><img src="${base}/img/range.png" style="float:left"></a>
        </div>
        <div style="text-align:center">
            <a href="https://www.wkzuche.com/cartype/search.html"><img src="${base}/img/much-car.png"></a>
        </div>
        <div style="float:right">
            <a href="https://www.wkzuche.com/other/business_rule.html#rule1"><img src="${base}/img/good-service.png" style="float:right"></a>
        </div>
    </div>
</div>
<div class="zc_serve_default">
    <div class="ul_cover">
        <ul class="gyfw">
            <li class="li_head">关于服务</li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule1">服务时间</a>
            </li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule2">短租及可选服务</a>
            </li>
        </ul>
        <ul class="yd">
            <li class="li_head">预订指南</li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule4">预订规则</a>
            </li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule5">退改规则</a>
            </li>
        </ul>
        <ul class="qhc">
            <li class="li_head">取还车指南</li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule6">取车规则</a>
            </li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule7">还车规则</a>
            </li>
        </ul>
        <ul class="bx">
            <li class="li_head">保险及事故处理说明</li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule8">保险责任</a>
            </li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule9">事故处理说明</a>
            </li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule10">救援及备用车服务</a>
            </li>
        </ul>
        <ul class="js">
            <li class="li_head">费用标准</li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule11">标准服务收费</a>
            </li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule12">可选服务价格</a>
            </li>
            <li>
                <a href="https://www.wkzuche.com/other/business_rule.html#rule13">其他服务说明</a>
            </li>
        </ul>
    </div>
    <div style="clear: both;"></div>
</div>
<div style="clear: both;"></div>
<div class="zc_foot zc_foot_background" style="padding-top: 0;">
    <div class="foot_cover zc_main">
        <p class="html_link" style="border-top: none;">
            <a href="https://www.wkzuche.com/other/about.html">关于我们<span>|</span></a>
            <a href="https://www.wkzuche.com/cartype/search.html">短租自驾<span>|</span></a>
            <a href="https://www.wkzuche.com/other/matter.html">帮助中心<span>|</span></a>
            <a href="https://www.wkzuche.com/media/index.html">媒体报道<span>|</span></a>
            <a href="https://www.wkzuche.com/other/recruitment.html">加入我们</a>
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
<!--     360统计代码 -->
<script>
    (function(b, a, e, h, f, c, g, s) {
        b[h] = b[h] || function() {
            (b[h].c = b[h].c || []).push(arguments) };
        b[h].s = !!c;
        g = a.getElementsByTagName(e)[0];
        s = a.createElement(e);
        s.src = "//s.union.360.cn/" + f + ".js";
        s.defer = !0;
        s.async = !0;
        g.parentNode.insertBefore(s, g)
    })(window, document, "script", "_qha", 262028, false);
</script>
<script type="text/javascript" src="${base}/js/ssyh.js"></script>
<script type="text/javascript" src="${base}/js/jquery.cookie.js"></script>

<div class="zc_tool">
    <ul class="ulbox">
        <li id="tool_Order" class="libox p-re">
            <a class="abox" href="https://www.wkzuche.com/user/myorder.html" target="_blank">
                <span class="zc_order_i"></span>订<br>单
            </a>

            <div class="zc_ordertooltipe tooltipe_class logined" style="right: 38px; display: none;">
                <div class="p-re" style="display: block; right: 38px;">
                    <div class="rightsj" style="display: block; right: -8px;">◆</div>
                    <p onclick="document.location.href=&#39;/user/myorder.html&#39;" class="myorder">我的订单</p>
                </div>
            </div>

        </li>
        <li id="tool_wallet" class="libox p-re">
            <a href="https://www.wkzuche.com/user/personal.html" target="_blank" class="abox">
                <span class="zc_wallet_i wallet_active"></span>钱<br>包
            </a>

            <div class="zc_wallettooltipe tooltipe_class logined" style="display: none;">
                <div class="p-re" style="display: none;">
                    <div class="rightsj" style="display: none; right: -8px;">◆</div>
                    <div class="my_wallet" style="display: none;">
                        <h2>我的钱包</h2>
                        <ul>
                            <li>
                                <span>账户余额</span>
                                <span class="number_span">￥0</span>
                            </li>
                            <li>
                                <span>悟空币</span>
                                <span class="number_span">￥0</span>
                            </li>
                            <li>
                                <span>优惠券</span>
                                <span class="number_span" id="goMycoupon" style="cursor: pointer;">3张</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <input type="hidden" id="available_amount" value="0">
            <input type="hidden" id="wkcoin" value="0">
            <input type="hidden" id="coupon" value="3">

        </li>

        <li id="tool_service">
            <a href="javascript:void(0);" class="customService"><span class="zc_service_i"></span></a>
            <div class="zc_foottooltipe" style="display: none;">
                <div class="p-re" style="display: none;">
                    <div class="rightsj" style="display: none; right: -8px;">◆</div>
                    <font class="customService" style="cursor:pointer">在线客服</font>
                </div>
            </div>
        </li>
        <li id="tool_Help">
            <a href="https://www.wkzuche.com/other/matter.html" target="_blank"><span class="zc_help_i"></span></a>
            <div class="zc_foottooltipe" style="display: none;">
                <div class="p-re" onclick="window.open(&#39;/other/matter.html&#39;)" style="display: none;">
                    <div class="rightsj" style="display: none; right: -8px;">◆</div>
                    <font style="cursor:pointer"> 帮助中心</font>
                </div>
            </div>
        </li>
        <!--         <li><a href="javascript:void(0);"><span class="zc_share_i"></span></a> -->
        <!--             <div class="zc_foottooltipe"> -->
        <!--                 <div class="p-re"> -->
        <!--                     <div class="rightsj">◆</div> -->
        <!--                     分享 -->
        <!--                 </div> -->
        <!--             </div> -->
        <!--         </li> -->
        <!-- 		 <li style="margin-top: 28px"><a href="http://cn.mikecrm.com/YBz0Wou" target="_blank"><span class="zc_share_i"></span></a>
    <div class="zc_foottooltipe">
        <div class="p-re" onclick="window.open('http://cn.mikecrm.com/YBz0Wou')">
            <div class="rightsj">◆</div>
                <font style="cursor:pointer"> 问卷</font>
        </div>
    </div>
</li> -->
        <li>
            <a href="https://www.wkzuche.com/pay/pay.html#" style="border-bottom: none;"><span class="zc_top_i"></span></a>
            <div class="zc_foottooltipe" style="right: 38px; display: none;">
                <div class="p-re" style="display: none; right: 38px;">
                    <div class="rightsj" style="display: none; right: -8px;">◆</div>
                    返回顶部
                </div>
            </div>
        </li>
    </ul>
</div>

<script type="text/javascript" src="${base}/js/tool.js"></script>
<script type="text/javascript">
    $(function() {
        //初始化智齿咨询组件实例
        var zhiManager = (getzhiSDKInstance());
        //再调用load方法
        zhiManager.on("load", function() {
            zhiManager.initBtnDOM();
        });
        zhiManager.set('customBtn', 'true');
        zhiManager.set('customMargin', 50);
        $('#goMycoupon').click(function() {
            location.href = '/user/mycoupon.html';
        });
    });
</script>
<script type="text/javascript" src="${base}/js/pay.js"></script>
<script src="${base}/js/entrance.js" id="zhichiScript" class="customService"></script>
<script type="text/javascript">
    var yinlian_webserver = "https://www.wkzuche.com/acp";
</script>

<div id="zhichiBtnBox" style="position: fixed; z-index: 2147483583; box-shadow: rgba(15, 66, 76, 0.25) 0px 0px 14px 0px; width: 60px; height: 60px; border-radius: 50%; background-color: rgb(231, 83, 73); background-image: url(&quot;//www.sobot.com/chat/frame/imgs/icon.png&quot;); background-repeat: no-repeat; background-position: 18px -58px; right: 40px; bottom: 20px; display: none;">
    <a hidefocus="" id="zhichiBtn" style="position:relative;text-decoration: none; outline: none; font-family: Microsoft Yahei, Arial, Helvetica; color: #fff; font-size: 16px; display: inline-block; margin: 0; padding: 0; border: none; line-height:43px; float:none;width:100%;height:100%;border-radius:50%;"><span class="zc-advice-icon-btn-title" style="box-shadow: rgba(107, 113, 114, 0.15) 0px 2px 4px 0px; border: 1px solid rgb(235, 239, 240); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica; color: rgb(85, 85, 86); font-size: 13px; margin: 0px; text-align: right; background: rgb(255, 255, 255); position: absolute; top: 15px; right: 70px; text-overflow: ellipsis; white-space: nowrap; word-break: normal; display: none; border-radius: 3px; padding: 0px 5px; height: 30px; line-height: 30px;">咨询在线客服</span></a><i style="position:absolute;top:0px;right:0px;padding:1px;line-height:20px;text-align:center;color:#fff;font-weight:bold;height:18px;min-width:18px;background-color:#ed5c5c;border-radius:18px;font-size:12px;display:none;font-style:normal;" id="zhichiCount"></i></div><iframe name="423992" height="0" width="0" src="${base}/js/mv.html" style="display: none;"></iframe><input type="hidden" name="log_id" id="log_id" value="101581219"></body>

</html>