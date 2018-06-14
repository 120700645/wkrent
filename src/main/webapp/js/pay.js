/**
 * Created by HuiYi on 2017/4/11.
 */
var extendMsg = "车辆一眨眼就没啦 , 确定要放弃付款吗?";
$(function() {
	$(".typeUl li").click(function() {
		if (!$(this).attr("pay_useless")) {
			var lis = $(".typeUl li");
			for (var i = 0; i < lis.length; i++) {
				$(lis).eq(i).removeClass("type_li_active")
			}
			$(this).addClass("type_li_active")
			$("#pay_method").val($(this).attr("pay_method"));
		}
	});
	init();
});
/**
 * 初始化页面
 * 
 * @returns
 */
function init() {
	$("#pay_method").val($(".type_li_active").attr("pay_method"));
	initPay();
}

function initPay() {
	$("#go_pay_btn").off().one('click', '', function() {
		pay();
	});
}
function pay() {
	var pay_method = $("#pay_method").val();
	var pay_form = document.getElementById("pay_form");
	if (pay_method == 6) {// 微信
		pay_form.action = "weixin_scan_pay.html";
		pay_form.submit();
		tip();
	} else if (pay_method == 7) {// 支付宝
		pay_form.action = yinlian_webserver + "/order_pay.do";
		pay_form.submit();
		tip();
	} else if (pay_method == 5) {// 银联
		pay_form.action = yinlian_webserver + "/order_pay.do";
		pay_form.submit();
		tip();
	} else if (pay_method == 12) {// 易宝
		pay_form.action = yinlian_webserver + "/order_pay.do";
		pay_form.submit();
		tip();
	} else if (pay_method == 8) {// 余额
		pay_form.action = "account_pay.html";
		pay_form.submit();
		tip();
	} else {
		confirm("请选择支付方式！", function() {
			initPay();
		});
	}
}

function tip() {
	dialog_pay_choose(function() {
		initPay();
	}, function() {
		extendMsg = null;
		document.location.href = '../user/myorder.html';
	});
}