//头部
$(function (){
	
	$('.nav-letter-right li').eq(2).hover(function(){
		if(HeaderUid == 'null' || HeaderUid == null || HeaderUid == ''){
			$("#no-login").show();
		}else{
			user_detail();
			$("#over-login").show();
		}
	}, function(){
		if(HeaderUid == 'null' || HeaderUid == null || HeaderUid == ''){
			$("#no-login").hide();
		}else{
			$("#over-login").hide();
		}
	});
	
	
	/*$('.nav-letter-right li').eq(2).hover(function(){
		$(this).css({'backgroundColor':'white'});
		if(HeaderUid == 'null' || HeaderUid == null || HeaderUid == ''){
			$("#no-login").show();
		}else{
			user_detail();
			$("#over-login").show();
		}
	}, function(){
		$(this).css({'backgroundColor':'',"color":""});
		if(HeaderUid == 'null' || HeaderUid == null || HeaderUid == ''){
			$("#no-login").hide();
		}else{
			$("#over-login").hide();
		}
	});*/
	
	$(".no-identify span").click(function(){
		window.location.href = CONTEXT_PATH+"/user/auth.html";
	});
	
});

function user_detail() {
	var params = {};
	params.uid=parseInt(userId);
	params.id_type= "ID";
	params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/user/get_detail';
	connectserver(CONTEXT_PATH+ "/common/dopost.html", postDate, function(db){
		if(db.code == 0) {
			if(db.name){
				var uName = db.name;
				if(uName.length > 10){
					uName = uName.substr(0,10)+"...";
				}
				$(".status-identify").find("span:eq(0)").text(uName);
			}
			var status = db.auth.status;
			var comments = db.auth.comments;
			if(status == 'USER_AUTHED'){
				$(".identify-over").text("已认证");
			}else if(status == 'USER_AUTHING'){
				$(".identify-over").text("认证中");
			}else if(status == 'USER_NOAUTH' && comments == null){
				$(".identify-over").text("去实名认证");
				$(".identify-over").attr("style","color:#F23732;border: 1PX solid #F23732;");
				$(".no-identify").show();
			}else if(status == 'USER_NOAUTH' && comments != null){
				$(".identify-over").attr("style","color:#F23732;border: 1PX solid #F23732;");
				$(".identify-over").text("认证失败");
				$(".no-identify").show();
			}
			if(db.headimg_url){
				$(".main-img").html("<img src="+db.headimg_url+">");
			}
			$(".vm").text(db.rolename);
			$(".account-information").find("p:first-child").find("span:eq(0)").text("账户余额￥"+db.account.total_amount);
			$(".account-information").find("p:first-child").find("span:eq(1)").html("优惠券 <span style='color:#F23732'>"+db.account.coupon+"张</span>");
			$(".account-information").find("p:last-child").find("span:eq(0)").text("悟空币￥"+db.account.wkcoin);
			$(".account-information").find("p:last-child").find("span:eq(1)").html("积分 "+db.account.jf);
			
			
		}
	});
}





















