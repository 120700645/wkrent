<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0040)https://www.wkzuche.com/order/order.html -->
<html lang="en">

<head>
<#assign base=rc.contextPath />
    <base id="base" href="${base}">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>完善订单</title>

    <link rel="icon" href="https://static.wkzuche.com/www/images/facicon.ico">
    <link rel="stylesheet" href="${base}/css/common.css">
    <link rel="stylesheet" href="${base}/css/order.css">
    <link rel="stylesheet" href="${base}/css/other.css">
    <link rel="stylesheet" href="${base}/css/personal.css">
    <link rel="stylesheet" href="${base}/css/common.css">
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

                <li onclick="document.location.href=&#39;/user/personal.html&#39;;return;" id="header_uid">132****0854</li>
                <li style="margin-left: 6px" onclick="document.location.href=&#39;https://sso.wkzuche.com/member/logout.do?url=&#39;+encodeURIComponent(document.location.href)+&#39;&amp;uid=13212780854&#39;;return;">[ 退出 ]</li>

                <li id="top_mine" style="padding: 0" onclick="document.location.href=&#39;/user/personal.html&#39;;return;">
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
<div class="zc-order-cover">
    <div class="zc-order-header">
        <div class="header-1 mr-div">
            <p class="car-img" id="car_img" style="background: url(&quot;https://img.wkzuche.com/car/type/6/694d7f45-1a5b-4f97-8d13-43d306812937.jpg&quot;) center center / 60% no-repeat;"></p>
            <p>
                <span style="font-size: 14px;color: #f23732;margin-bottom : 20px">系统所选车辆型号及颜色仅供参考</span>
                <span class="span-type" id="car_type_name">别克 凯越 <a>或同组车型</a></span>
                <span class="span-config" id="car_type_msg">自动|1.5L|可载5人|三厢车</span>
                <!-- 					<span class="span-days" id="car_lease"></span> -->
                <a href="${base}/carType/search" style="text-decoration: none"><span class="span-btn">重新选车</span></a>
            </p>
        </div>
        <div class="header-r">
            <div class="header-2 mr-div">
                <p>
                    <span class="span-qc">取车</span>
                    <!-- 按钮触发弹出框 -->
                    <label id="songchesm_label" class="span-switch" style="display: none;"><span>送车上门</span>
                        <i class="switch-default" id="songchesm"></i>
                    </label>
                </p>
                <p>
                    <img src="${base}/img/icon1.png" alt="取车时间">
                    <span class="span-main" id="start_time">2018-06-06 周三 13:00</span>
                </p>
                <p>
                    <img src="${base}/img/icon2.png" alt="取车网点">
                    <span class="span-other" id="site_name">北京 西直门店</span>
                </p>
                <p>
                    <img src="${base}/img/icon3.png" alt="取车地址">
                    <input class="span-other" type="text" id="site_address" placeholder="请选择送车上门地址" readonly="readonly">
                </p>
            </div>
            <div class="header-3">
                <p>
                    <span class="span-qc">还车</span>
                    <label id="quchesm_label" class="span-switch" style="display: none;"><span>上门取车</span>
                        <i class="switch-default" id="quchesm"></i>
                    </label>
                </p>
                <p>
                    <img src="${base}/img/icon1.png" alt="还车时间">
                    <span class="span-main" id="end_time">2018-06-08 周五 13:00</span>
                </p>
                <p>
                    <img src="${base}/img/icon2.png" alt="还车网点">
                    <span class="span-other"><span class="site_change" id="site_name_hc" site_id="11_site_049">西直门店</span>
							<a class="change-site">更改</a>
							</span>
                </p>
                <p>
                    <img src="${base}/img/icon3.png" alt="还车地址">
                    <input class="span-other" id="site_address_hc" placeholder="请选择上门取车地址" readonly="readonly">
                </p>
            </div>
        </div>
        <div class="cl"></div>
    </div>
    <script type="text/javascript">
        $(function () {
//            var length = $("#di_1").html();
            var clickNumber = 0;
            $("#che_1").click(function () {

                if (clickNumber % 2 == 0) {
                    $(this).addClass("check-i");
                    $("#di_1").text(200);
                    totalPrice();
                } else {
                    $(this).removeClass("check-i");
                    $("#di_1").text(0);
                    totalPrice();
                }
                clickNumber++;
            })
        })
    </script>
    <script type="text/javascript">
        function totalPrice() {
            var sum=336;
            $(".che").each(function () {
                sum += parseInt($(this).text());

            })
            $(".total_amount").text(sum);
        }
    </script>
    <script type="text/javascript">
        $(function () {
            var clickNumber=0;
            $("#che_2").click(function () {

                if(clickNumber%2==0){
                    $(this).addClass("check-i");
                    $("#di_2").text(50);
                    totalPrice();

                }else{
                    $(this).removeClass("check-i");
                    $("#di_2").text(0);
                    totalPrice();
                }
                clickNumber ++;
            })
        })
    </script>
    <script type="text/javascript">
        $(function () {
            var clickNumber=0;
            $("#che_3").click(function () {

                if(clickNumber%2==0){
                    $(this).addClass("check-i");
                    totalPrice();
                }else{
                    $(this).removeClass("check-i");
                    totalPrice();
                }
                clickNumber ++;
            })
        })
    </script>
    <script type="text/javascript">
        $(function () {
            var clickNumber=0;
            $("#che_4").click(function () {

                if(clickNumber%2==0){
                    $(this).addClass("check-i");
                    $("#di_4").text(20);
                    $(".tour-insurance-list").show();
                    totalPrice();
                }else{
                    $(this).removeClass("check-i");
                    $("#di_4").text(0);
                    $(".tour-insurance-list").hide();
                    totalPrice();
                }
                clickNumber ++;
            })
        })
    </script>
    <script type="text/javascript">
        $(function () {
            var clickNumber=0;
            $("#che_5").click(function () {

                if(clickNumber%2==0){
                    $(this).addClass("check-i");
                    $(".coupon-cover").show();

                }else{
                    $(this).removeClass("check-i");
                    $(".coupon-cover").hide();
                }
                clickNumber ++;
            })
        })
    </script>
    <div class="zc-order-other">
        <div class="option-serve" id="optional_services">

            <p class="title-p">可选服务</p>
            <ul class="serve_ul">
                <li type="type_2" value="INS_ADDITIONAL">
                    <i id="che_1"></i>
                    <span>车损无忧服务<img class="prompt_img" src="${base}/img/explain-icon.png" alt="车损无忧服务说明"></span>
                    <a id="di_1" class="che">0</a>
                    <div class="triangle_border">
                        <div class="popup" style="left: 140px;"><span><em></em></span>客户购买车损无忧服务后，无需承担保险理赔范围内的车辆维修损失。<br>￥50/天</div>
                    </div>
                </li>
                <li type="type_1" value="undefined"><i id="che_2"></i><span>第三者责任险补充险<img class="prompt_img" src="${base}/img/explain-icon.png" alt="第三者责任险补充险说明"></span>
                    <a id="di_2" class="che">0</a>
                    <div class="triangle_border">
                        <div class="popup" style="left: 182px;"><span><em></em></span>车辆因意外事故致使他人身亡或财产直接损失，50万/100万元以内保险公司核定理赔100%<br>￥25/天</div>
                    </div>
                </li>
                <div class="third-insurance-list" style="display: none;">
                    <p><i value="INS_THIRDPARTY_50"></i><span>第三者责任险补充险增至50万￥25/天</span></p>
                    <p><i value="INS_THIRDPARTY_100"></i><span>第三者责任险补充险增至100万￥50/天</span></p>
                </div>
                <li type="type_2" value="INS_PASSENGER"><i id="che_3"></i><span>车上人员责任险补充险<img class="prompt_img" src="${base}/img/explain-icon.png" alt="车上人员责任险补充险说明"></span>
                    <a id="di_3" class="che">0</a>
                    <div class="triangle_border">
                        <div class="popup" style="left: 196px;"><span><em></em></span>车辆因意外事故造成车上人员人身伤亡，最高赔付10万元/人/座<br>￥25/天</div>
                    </div>
                </li>
                <li type="type_3" value="INS_TRAVEL_ACCIDENT"><i id="che_4"></i><span>旅游人身意外险<img class="prompt_img" src="${base}/img/explain-icon.png" alt="旅游人身意外险说明"></span>
                    <a id="di_4" class="che">0</a>
                    <div class="triangle_border">
                        <div class="popup" style="left: 154px;"><span><em></em></span>旅游途中若遭受意外伤害，最高赔付意外医疗5万元/人，若发生意外身故、伤残最高赔付10万元/人<br>￥10/人/天</div>
                    </div>
                </li>
                <div class="tour-insurance-list" style="display: none;">
                    <div class="list-cover">
                        <div id="bbr_table">
                            <p>
                                <a class="sort-a gray-a" id="bbr_id1">1</a><span class="block-span" id="bbr_name1"> 王磊</span><span id="bbr_card_no1"> 420222199201161416</span><input hidden="true" id="bbr_phone1" value="13212780854">
                                <a class="btn-a" onclick="del_p($(this).parent(&#39;p&#39;))">删除</a>
                            </p>
                        </div>
                        <div class="list-add">
                            <a id="addInsure">+ 添加被保人</a> <span id="bbr_total">还可添加8人</span></div>
                    </div>
                    <div class="cl"></div>
                </div>
            </ul>
        </div>
        <div class="option-beused" id="wkcon_coupon">
            <p class="title-p">可使用优惠<img class="beused_img" onclick="imgClickShow(&#39;.beused_img&#39;)" src="${base}/img/input_up.png" alt=""><span id="wkcon_coupon_total" class="beused-fee"></span></p>
            <ul class="beused-ul">
                <li><i class="coupon_i" style="margin-top: 14px;"  id="che_5"></i><span>使用优惠券(<font id="coupon_num">4</font>张可用)</span></li>
                <div class="coupon-cover">
                    <p class="prev" style="display: block;"></p>
                <#list couponList as c>
                <#--coupon-model mr check-status-->
                    <div id="20503002" class="coupon-model mr">
                        <div>
                            <p class="amount"><span>￥</span><span>${c.couponDiscount}</span></p>
                            <div class="effective_time">
                                <p>有效期</p>
                                <p>${c.couponStartTime?string('yyyy-MM-dd')}至${c.couponEndTime?string('yyyy-MM-dd')}</p>
                            </div>
                        </div>
                        <p title="${c.couponRule}">${c.couponRule}</p>
                    </div>
                </#list>
                <#--<#list couponList as c>-->
                <#--<div class="coupon_item">-->
                <#--<div>-->
                <#--<p class="amount"><span>￥</span><span>${c.couponDiscount}100</span></p>-->
                <#--<div class="effective_time">-->
                <#--<p>有效期</p>-->
                <#--<p>${c.couponStartTime?string('yyyy-MM-dd')}至${c.couponEndTime?string('yyyy-MM-dd')}</p>-->
                <#--</div>-->
                <#--</div>-->
                <#--<p title="租期两天以上可享，不能同其他类型优惠券共同使用">${c.couponRule}租期两天以上可享，不能同其他类型优惠券共同使用</p>-->
                <#--</div>-->
                <#--</#list>-->
                <#--<div id="20503003" class="coupon-model mr">-->
                <#--<div>-->
                <#--<p class="amount"><span>￥</span><span>50</span></p>-->
                <#--<div class="effective_time">-->
                <#--<p>有效期</p>-->
                <#--<p>2018-6-2至2018-8-31</p>-->
                <#--</div>-->
                <#--</div>-->
                <#--<p title="仅限抵用租金,不与套餐等其他优惠同时使用">仅限抵用租金,不与套餐等其他优惠同时使用</p>-->
                <#--</div>-->
                <#--<div id="20503004" class="coupon-model mr">-->
                <#--<div>-->
                <#--<p class="amount"><span>￥</span><span>30</span></p>-->
                <#--<div class="effective_time">-->
                <#--<p>有效期</p>-->
                <#--<p>2018-6-2至2018-8-31</p>-->
                <#--</div>-->
                <#--</div>-->
                <#--<p title="仅限抵用租金,不与套餐等其他优惠同时使用">仅限抵用租金,不与套餐等其他优惠同时使用</p>-->
                <#--</div>-->
                <#--<div id="20503005" class="coupon-model mr">-->
                <#--<div>-->
                <#--<p class="amount"><span>￥</span><span>20</span></p>-->
                <#--<div class="effective_time">-->
                <#--<p>有效期</p>-->
                <#--<p>2018-6-2至2018-8-31</p>-->
                <#--</div>-->
                <#--</div>-->
                <#--<p title="仅限抵用租金,不与套餐等其他优惠同时使用">仅限抵用租金,不与套餐等其他优惠同时使用</p>-->
                <#--</div>-->
                    <p class="next" style="display: block;"></p>
                </div>
            </ul>
        </div>
        <div class="order-fee">
            <p class="title-p">费用明细</p>
            <ul>
                <li><span>车辆租金</span>
                    <a id="car_price">236</a>
                </li>
                <li><span>基本保险(必选) <img class="prompt_img" src="${base}/img/explain-icon.png" alt="基本保险说明"></span>
                    <a id="basic_insurance">80</a>
                    <div class="triangle_border">
                        <div class="popup left1">
                            <span><em></em></span>车辆损失险;第三者责任险(20万元);车上人员责任险(1万/人/座)
                        </div>
                    </div>
                </li>
                <li>
                    <span>其他费用 <img class="other_fee_img" onclick="imgClickShow(&#39;.other_fee_img&#39;)" src="${base}/img/input_down.png" alt=""></span>
                    <a id="other_amount_all">20</a>
                </li>
                <div class="other-fee">
                    <p>
                        <span>手续费</span>
                        <a id="poundage_amount">20</a>
                    </p>
                    <p>
                        <span>夜间服务费 ( 21:00至次日早上8:00之间取车或还车需支付50元/次夜间服务费 )</span>
                        <a id="night_service_amount">￥0</a>
                    </p>
                    <p>
                        <span>送车上门费</span>
                        <a id="send_service_amount">0</a>
                    </p>
                    <p>
                        <span>上门取车费</span>
                        <a id="return_service_amount">0</a>
                    </p>
                    <p>
                        <span>异地还车费</span>
                        <a id="crosscity_service_amount">0</a>
                    </p>
                    <!-- 						<p> -->
                    <!-- 							<span>退改费</span><a id="penalty_amount">￥</a> -->
                    <!-- 						</p> -->
                    <!-- 						<p> -->
                    <!-- 							<span>其他</span><a id="other_amount">￥</a> -->
                    <!-- 						</p> -->
                </div>
                <li id="discount_li" style="display: none;"><span>活动优惠</span>
                    <a id="discount_amount">0</a>
                </li>
                <div class="cl"></div>
            </ul>
        </div>
        <div class="cl"></div>
        <div class="gray-space"></div>
        <div class="order-submit-info scroll-class">
            <p class="share-p">
                订单合计 <span class="total_amount">336</span>
            </p>
            <p class="share-p">
                可使用优惠 <span id="coupon_pay_co">0</span>
            </p>
            <p class="share-p">
                应付金额 <span class="total_amount">336</span>
            </p>
            <a href="${base}/rentOrder/submit" style="text-decoration: none"><p class="submit-btn btn-style" id="pcsubmit">提交订单</p></a>
        </div>
    </div>
    <div class="zc-order-footer">
        <p>订单须知</p>
        <ol>
            <li>1、确保您持有本人信用卡，本人二代有效身份证，本人有效地方驾驶证正副本。</li>
            <li>2、手续费是为您办理租车手续的人工费、场地费等；普通网点20元、机场及高铁网点35元。</li>
            <li>3、您可以使用优惠券，部分活动、节假日订单不适用优惠券。</li>
            <li>4、部分门店提供送车上门/上门取车服务，请您预订后与门店先行沟通确认，门店将视人员、车辆调配情况尽量为您提供服务。</li>
            <li>5、提交订单后须在45分钟内预付订单费用，否则订单会自动取消；成功预付费用后视为预订成功。</li>
            <li>6、取车前2小时（含）内或取车时间以后，因客户原因取消订单，客户需承担订单首日租金作为违约金，违约金最高不超过150元（亦不超过订单总金额）。</li>
            <li>注：活动及节假日订单的取消规则以平台实时公布为准。</li>
            <li>7、更多服务或问题请咨询24小时客服热线400-0515-507，或查看底部业务规则说明。</li>

        </ol>
    </div>
<#--<div class="mcover close_box" style="display: none;"></div>-->
    <!--<div class="dialog_order_timeout dialog_class" id="confirm">
        <h1>温馨提示 <span onclick="$(&quot;.mcover&quot;).hide();$(&quot;#confirm&quot;).hide();"><img src="${base}/img/close_icon.png" alt=""></span></h1>
        <div class="dialog_info">
            <span id="confirm_msg" style="width: 310px;margin:0 auto!important"></span>
            <div>
                <p id="confirm_fun" style="cursor: pointer;margin:25px auto">确定</p>
            </div>
        </div>
    </div>-->
<#--<div class="loading_shuaxin" style="display: none;">-->
<#--<img src="${base}/img/car.gif">-->
<#--</div>-->
    <div class="dialog_order_timeout dialog_class" id="confirm_cancel">
        <h1>温馨提示 <span onclick="$(&quot;.mcover&quot;).hide();$(&quot;#confirm_cancel&quot;).hide();toSearchPage();"><img class="close_box" src="${base}/img/close_icon.png" alt=""></span></h1>
        <div class="dialog_info">
            <span id="confirm_cancel_msg" style="width: 310px;margin:0 auto!important"></span>
            <div>
                <p id="confirm_cancel_fun" style="cursor: pointer;margin:25px auto">确定</p>
            </div>
        </div>
    </div>
    <!-- 添加被保人  弹出框 -->
    <div class="zc-add-insure">
        <h1>请您确保所填信息无误 , 以防理赔时产生纠纷 <i><img class="close_box" src="${base}/img/close_icon.png" alt=""></i></h1>
        <div class="input-cover">
            <input class="mb" id="bbr_name" type="text" placeholder="姓名">
            <input class="mb" id="bbr_phone" type="text" placeholder="电话">
            <input id="bbr_card_no" type="text" placeholder="身份证号">
        </div>
        <div class="check-box" id="bbr_err_msg"></div>
        <p onclick="add_bbr()">确定</p>
    </div>
    <!-- 百度map 弹出框 start-->
    <div class="theme-popover-mask" id="ditu_line"></div>
    <div class="theme-popover" id="ditu_box">
        <div class="theme-poptit">
            <a href="javascript:;" title="关闭" class="close" id="imgid_close">×</a>
            <p>请输入送车上门地址 <span>( 5公里以内30元，10公里以内60元 )</span></p>
        </div>
        <div class="theme-popbod">
            <div class="map-pre">
                <div id="r-result">
                    <p>
                        <i class="addr_search_default"></i>
                        <input type="text" class="serach_dafault" id="suggestId" size="20" placeholder="输入地址 , 匹配网点服务范围">
                        <img class="addr_clear_img" onclick="addr_clear_img_click(&#39;suggestId&#39;)" src="${base}/img/addr_val_clear_icon.png" alt="" style="display: none;">
                    </p>
                </div>
            </div>
            <div id="allmap"></div>
        </div>
        <div class="dialog_site_cover" id="map_alert" style="display: none;">已超出网点服务范围</div>
        <div class="dialog_site_cover" id="map_alert_songche_small" style="display: none;">请放大地图详细定位</div>
    </div>
    <div class="theme-popover" id="ditu_box_hc">
        <div class="theme-poptit">
            <a href="javascript:;" title="关闭" class="close" id="imgid_close_hc">×</a>
            <p>请输入送车上门地址 <span>( 5公里以内30元，10公里以内60元 )</span></p>
        </div>
        <div class="theme-popbod">
            <div class="map-pre">
                <div id="r-result_hc">
                    <p>
                        <i class="addr_search_default"></i>
                        <input type="text" class="serach_dafault" id="suggestId_hc" size="20" placeholder="输入地址 , 匹配网点服务范围">
                        <img class="addr_clear_img" onclick="addr_clear_img_click(&#39;suggestId_hc&#39;)" src="${base}/img/addr_val_clear_icon.png" alt="" style="display: none;">
                    </p>
                </div>
            </div>
            <div id="allmaphc" style="width: 380px; height: 100%; float: right;"></div>
        </div>
        <div class="dialog_site_cover" id="map_alert_hc" style="display: none;">已超出网点服务范围</div>
        <div class="dialog_site_cover" id="map_alert_quche_small" style="display: none;">请放大地图详细定位</div>
    </div>
    <!-- 百度map 弹出框 end -->
    <div class="dot_query custom-scroll scroll_class" style="height: 420px; top: 42%; display: none;" id="pinck_up_dot">
        <div class="query">
            <p index="1">行政区</p>
        </div>
        <div id="siteSelect">
            <ul>
                <li id="海淀区" onclick="areaSelected(&#39;dot_query_add&#39;,&#39;海淀区&#39;,&#39;[object Object]&#39;);" style="background: rgb(242, 55, 50); color: rgb(255, 255, 255);">海淀区</li>
            </ul>
            <ol class="dot_query_add" id="dot_query_add" style="width: 99%;">
                <li area="110108" site_id="11_site_049" id="11_site_049" style="color: rgb(242, 55, 50);">西直门店</li><img style="vertical-align: middle;padding-left: 3px;" src="${base}/img/brand.png">
                <p class="address"><span>北京海淀区西直门钻河中心底商1-125</span><span>营业时间:09:00--20:00</span></p><br></ol>
        </div>
    </div>
    <form action="https://www.wkzuche.com/pay/pay.html" method="post" id="form_order">
        <input type="hidden" id="order_id" name="orderid">
    </form>
</div>
<!-- 实名认证  弹出框 -->
<div id="user_auth" class="dialog_order_auth dialog_class" style="width:411px;display:none">
    <h1>实名认证
        <span>
				<img class="close_box" src="${base}/img/close_icon.png" alt="">
			</span>
    </h1>
    <div class="dialog_info_style">
        <div class="true_name">
            真实姓名
            <input type="text" id="name" onblur="nameValidator();" onkeyup="nameValidator();">
            <p id="name_check1" style="display: none"></p>
        </div>
        <div class="true_id_card">
            身份证号
            <input type="text" id="id_no" onblur="id_noValidator();" onkeyup="id_noValidator();" maxlength="18">
            <p id="identity_check1" style="display:none"></p>
        </div>
        <div id="up_auth" class="subumit_auth_identfy">提交认证</div>
        <ul class="decimal-leading-zero">
            <li>根据国家相关法律规定，需要您先进行实名认证后，才能继续下单哦！</li>
            <li>认证通过后，您的等级会提升，认证资料越充分，等级提升越多哦~</li>
            <li>您的认证信息我们会好生保管不会泄露的，认证成功后的信息不会修改。</li>
        </ul>
    </div>
</div>
<!-- 实名认证  认证失败弹出框 -->
<div id="user_auth_fail" class="dialog_order_auth dialog_class" style="width:411px;display:none">
    <h1>实名认证
        <span>
				<img class="close_box" src="${base}/img/close_icon.png" alt="">
			</span>
    </h1>
    <div class="dialog_info_style">
        <div class="fail_auth_img">
            <img src="${base}/img/shibai.png">
            <div class="auth_fail_button"><span>认证未通过</span></div>
        </div>
        <div class="fail_auth_word">
            很抱歉，由于“身份证不清晰”，您的实名认证未通过， 您可以重新填写信息再次提交审核，如需帮助，请联系 400-0515-507。
        </div>
        <div id="up_again_auth" class="subumit_auth_identfy">重新认证</div>
    </div>
</div>
<!-- <div id="user_auth_fail"  style="width:500px;height: 300px;position: absolute;top:500px;left: 300px;background:  yellow; z-index:100;display: none;">
认证失败：原因：（"<font id = "user_auth_fail_reason"></font>"）
<button onclick="go_user_auth()">重新认证</button>
</div> -->
<script type="text/javascript" src="${base}/js/api"></script>
<script type="text/javascript" src="${base}/js/getscript"></script>
<div style="clear: both;"></div>

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

<div class="zc_tool">
    <ul class="ulbox">
        <li id="tool_Order" class="libox p-re">
            <a class="abox" href="myorder.html" target="_blank">
                <span class="zc_order_i"></span>订<br>单
            </a>

            <div class="zc_ordertooltipe tooltipe_class logined" style="display: none;">
                <div class="p-re" style="display: none;">
                    <div class="rightsj" style="display: none;">◆</div>
                    <p onclick="document.location.href=&#39;/user/myorder.html&#39;" class="myorder">我的订单</p>
                </div>
            </div>

        </li>
        <li id="tool_wallet" class="libox p-re">
            <a href="personal.html" target="_blank" class="abox">
                <span class="zc_wallet_i wallet_active"></span>钱<br>包
            </a>

            <div class="zc_wallettooltipe tooltipe_class logined" style="display: none;">
                <div class="p-re" style="display: none;">
                    <div class="rightsj" style="display: none;">◆</div>
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
                                <span class="number_span" id="goMycoupon" style="cursor: pointer;">4张</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <input type="hidden" id="available_amount" value="0">
            <input type="hidden" id="wkcoin" value="0">
            <input type="hidden" id="coupon" value="4">

        </li>

        <li id="tool_service">
            <a href="javascript:void(0);" class="customService"><span class="zc_service_i"></span></a>
            <div class="zc_foottooltipe" style="display: none;">
                <div class="p-re" style="display: none;">
                    <div class="rightsj" style="display: none;">◆</div>
                    <font class="customService" style="cursor:pointer">在线客服</font>
                </div>
            </div>
        </li>
        <li id="tool_Help">
            <a href="https://www.wkzuche.com/other/matter.html" target="_blank"><span class="zc_help_i"></span></a>
            <div class="zc_foottooltipe" style="display: none;">
                <div class="p-re" onclick="window.open(&#39;/other/matter.html&#39;)" style="display: none;">
                    <div class="rightsj" style="display: none;">◆</div>
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
            <a href="https://www.wkzuche.com/order/order.html#" style="border-bottom: none;"><span class="zc_top_i"></span></a>
            <div class="zc_foottooltipe" style="display: none;">
                <div class="p-re" style="display: none;">
                    <div class="rightsj" style="display: none;">◆</div>
                    返回顶部
                </div>
            </div>
        </li>
    </ul>
</div>

<script src="https://qiyukf.com/script/0442b7bd3684a6890427e5bd55b94070.js?hidden=true'"></script>

<script type="text/javascript">
    function online(){
        //alert("hello");
        //location.href = ysf.open();
        ysf.open({
            templateId:123
        });
    };
</script>
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
<script type="text/javascript" src="${base}/js/getSites.js"></script>
<script type="text/javascript" src="${base}/js/map.js"></script>
<script type="text/javascript" src="${base}/js/jquery.cookie.js"></script>
<script src="${base}/js/entrance.js" id="zhichiScript" class="customService"></script>
<script type="text/javascript">
    var static_webserver = "//static.wkzuche.com/www";
    var user_id = "11214904"; //数据id
    var uid = "13212780854";
    var u_name = "王磊";
    var u_card_no = "420222199201161416";
    var group_id = "null";
    var sites_all = [];
    var city_lat = sessionStorage.getItem("lat");
    var city_lng = sessionStorage.getItem("lng");

    var city_name = sessionStorage.getItem("city_name"); //城市
    var city_id = sessionStorage.getItem("city_id"); //城市id
    var areaMap = new Map();
    var car_type_storage = JSON.parse(sessionStorage.getItem("car_type_storage"));
    var start_time; //取车时间
    if(car_type_storage && car_type_storage.start_time) {
        start_time = (car_type_storage.start_time).substring(0, 16);
    } else {
        start_time = getNDaysLater(1);
    }
    var end_time;
    if(car_type_storage && car_type_storage.end_time) {
        end_time = (car_type_storage.end_time).substring(0, 16);
    } else {
        end_time = getNDaysLater(3);
    }
    var site_id = car_type_storage.site_id; //取车网点
    var car_type_id = car_type_storage.car_type_id; //车型id（车辆和车型有一个必传）
</script>
<script type="text/javascript" src="${base}/js/timeMath.js"></script>
<script type="text/javascript" src="${base}/js/order.js"></script>
<script type="text/javascript" src="${base}/js/mapPop.js"></script>

<iframe name="423992" height="0" width="0" src="${base}/js/mv.html" style="display: none;"></iframe>
<div id="zhichiBtnBox" style="position: fixed; z-index: 2147483583; box-shadow: rgba(15, 66, 76, 0.25) 0px 0px 14px 0px; width: 60px; height: 60px; border-radius: 50%; background-color: rgb(231, 83, 73); background-image: url(&quot;//www.sobot.com/chat/frame/imgs/icon.png&quot;); background-repeat: no-repeat; background-position: 18px -58px; right: 40px; bottom: 20px; display: none;">
    <a hidefocus="" id="zhichiBtn" style="position:relative;text-decoration: none; outline: none; font-family: Microsoft Yahei, Arial, Helvetica; color: #fff; font-size: 16px; display: inline-block; margin: 0; padding: 0; border: none; line-height:43px; float:none;width:100%;height:100%;border-radius:50%;"><span class="zc-advice-icon-btn-title" style="box-shadow: rgba(107, 113, 114, 0.15) 0px 2px 4px 0px; border: 1px solid rgb(235, 239, 240); font-family: &quot;Microsoft Yahei&quot;, Arial, Helvetica; color: rgb(85, 85, 86); font-size: 13px; margin: 0px; text-align: right; background: rgb(255, 255, 255); position: absolute; top: 15px; right: 70px; text-overflow: ellipsis; white-space: nowrap; word-break: normal; display: none; border-radius: 3px; padding: 0px 5px; height: 30px; line-height: 30px;">咨询在线客服</span></a><i style="position:absolute;top:0px;right:0px;padding:1px;line-height:20px;text-align:center;color:#fff;font-weight:bold;height:18px;min-width:18px;background-color:#ed5c5c;border-radius:18px;font-size:12px;display:none;font-style:normal;" id="zhichiCount"></i></div><input type="hidden" name="log_id" id="log_id" value="101421630"></body>

</html>