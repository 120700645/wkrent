//投诉与建议提交
function user_feedback_apply() {
	
	var type = '';
	var orderid = '';
	$('.personal_right_choice li').each(function(){
		if($(this).hasClass('personal_right_choices')){
			type = $(this).text();
		}
	})
	
	if(type == ''){
		$("#personal_msg").show();
		return;
	}
	$("#personal_msg").hide();
	loadingUpShow();
    var params = {};
    params.uid = uid;
    params.type = type;
    params.feedback = $("#feedback").val();
    params.orderid = orderid;
    params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/user/feedback/apply';
    
    connectserver("../common/dopost.html",postDate, function(db){
    	loadingUpHide();
    	if(db.code != 0){
    		confirm(db.msg);
    		return ;
    	}
    	confirm('您的宝贵意见我们已收到，感谢您的反馈');
    	$('.personal_right_choice li').each(function(){
    		 $(this).removeClass('personal_right_choices');
    	})
    	$("#feedback").val("请在这里输入您的意见");
    	$("#feedback_number").text("200");
    	
    });
}