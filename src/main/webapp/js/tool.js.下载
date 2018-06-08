$(".zc_tool li").each(function() {
	$(this).hover(function() {
		if (!$(this).find("div").is(":visible")) {
			$(".rightsj").show().animate({
				right : '-8px'
			});
			$(this).find("div").hide().css("right", "75px");
			$(this).find("div").show().not(".rightsj").animate({
				right : '38px'
			});
			$(this).siblings().find("div").hide();
		} else {
			$(this).find("div").hide();
		}
	}, function() {
		$(".tooltipe_class").hide();
		$(".zc_foottooltipe").hide();
	});
});

$(".zc_tool li").each(function() {
	$(this).find("div").hide();
});

// 钱包红点显示判断
if (($("#available_amount").val() != null && $("#available_amount").val() > 0)
		|| ($("#wkcoin").val() != null && $("#wkcoin").val() > 0)
		|| ($("#coupon").val() != null && $("#coupon").val() > 0)) {
	$(".zc_wallet_i").removeClass("wallet_default").addClass(
			"wallet_active");
}