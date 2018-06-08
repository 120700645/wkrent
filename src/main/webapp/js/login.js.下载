/**
 * Created by HuiYi on 2017/4/11.
 */
var timerVcode; //验证码 timer变量，控制时间
var jumpVcode; //成功后跳转 timer变量，控制时间
var vcodeCount = 29; //间隔函数，1秒执行
var jumpCount = 3; //间隔函数，1秒执行
var vcodeCurCount;//当前剩余秒数
var jumpCurCount;//当前剩余秒数
$(function () {
    $('.button-code').one('click','',function(e){
		sendMessage();
	});
    $('.login-btn').one('click','',function(e){
    	thisFormSubmit();
	});

	generateImageCode();
});
function validatePhone() {
	var uid = $("#uid").val();
	var picCode = $("#picCode").val();
	var mobileReg = /(^1\d{10}$)/;
	if(uid == null || uid == '' || uid == undefined) {
		errorShow("请填写手机号 !");
		return false;
	}
	if(!mobileReg.test(uid)) {
		errorShow("请输入正确的手机号码 ! ");
		return false;
	}
	if(picCode == null || picCode == '' || picCode == undefined) {
		errorShow("请填写图形验证码 !");
		return false;
	}
	return true;
}
function validateVcode() {
	var uid = $("#uid").val();
	var picCode = $("#picCode").val();
	var mobileReg = /(^1\d{10}$)/;
	if(uid == null || uid == '' || uid == undefined) {
		errorShow("请填写手机号 !");
		return false;
	}
	if(!mobileReg.test(uid)) {
		errorShow("请输入正确的手机号码 ! ");
		return false;
	}
	if(picCode == null || picCode == '' || picCode == undefined) {
		errorShow("请填写图形验证码 !");
		return false;
	}
	
	var vcode = $("#vcode").val();
	if(vcode == null || vcode == '' || vcode == undefined) {
		errorShow("请填写短信验证码 !");
		return false;
	}
	return true;
}
function sendMessage() {
	if(validatePhone()) {
		
	    var params = {};
	    params.phone = $("#uid").val();
	    params.pic_vcode = $("#picCode").val();
		$.ajax({
	        type: "post",
	        url: "../../../member/"+vcode_name,
	        cache: false,
	        error: function () {
	        },
	        jsonp: "callback",
	        data: params,
	        dataType: "json",
	        success: function(db){
    	    	if (db.code != 0) {
    	    		errorShow(db.msg);
    	    		$(".button-code").html("重新获取");
    	    		$('.button-code').off().one('click','',function(e){
    	    			sendMessage();
    	    		});
    	    		errorShow(db.msg);
			    	if(db.code == -1){
			    		generateImageCode();
	                }
    	    	}else {
    	    		vcodeCurCount = vcodeCount;
    	    		//设置button效果，开始计时
    	    		$(".button-code").html(vcodeCurCount + "s后重发");
    	    		timerVcode = window.setInterval(SetVcodeTime, 1000); //启动计时器，1秒执行一次
    	    	}
    	    }
    	    
	    });
	} else {
		$('.button-code').off().one('click','',function(e){
			sendMessage();
		});
	}
	
}
function watchChange(obj,type){
	var value = $(obj).val();
	$("#error_msg").hide();
	if(type == "phone"){
		if(value&&value.length == 11){
			var mobileReg = /(^1\d{10}$)/;
			if(!mobileReg.test(value)) {
				errorShow("请填写正确的手机号 !");
			}
		}
	}
	
}
//timer处理函数
function SetVcodeTime() {
	if (vcodeCurCount == 1) {             
        window.clearInterval(timerVcode);//停止计时器
        $(".button-code").html("重新获取");
		$('.button-code').off().one('click','',function(e){
			sendMessage();
		});
    }
    else {
    	vcodeCurCount--;
    	$(".button-code").html(vcodeCurCount + "s后重发");
    }
}

function thisFormSubmit() {
	if(validatePhone()) {
		if(validateVcode()){
			$("#login-form").ajaxSubmit({
				type:"post",
				dataType: 'json',
				url:"../../../member/www/login.do",
				success: function (res, statusText, xhr, $form) {
				    if(res.code == 0){
				    	 window.location.href=www_url;
				    }else{
				    	errorShow(res.msg);
				    	if(res.code == -1){
				    		generateImageCode();
		                }
						$('.login-btn').one('click','',function(e){
					    	thisFormSubmit();
						});
				    }
				},
				error: function(XmlHttpRequest, textStatus, errorThrown){
					errorShow("系统错误，请联系系统管理员");
					$('.login-btn').one('click','',function(e){
				    	thisFormSubmit();
					});
				} 
			});
		} else {
			$('.login-btn').one('click','',function(e){
		    	thisFormSubmit();
			});
		}
		
	} else {
		$('.login-btn').one('click','',function(e){
	    	thisFormSubmit();
		});
	}
}
function errorShow(msg){
	$("#error_msg").text(msg);
	$("#error_msg").show();
}


function generateImageCode() {
    $('#imageCode').css('background','url(/member/auth_image.do?time='+new Date().getTime()+')no-repeat left');
}