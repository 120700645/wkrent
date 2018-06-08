//姓名验证
function nameValidator(){
	var name = $("#name").val();
	if(name == ''){
		$("#name_check").text('姓名不可为空哦~');
		$("#name_check").show();
		return false;
	}
	var reg = /^([\u4e00-\u9fa5]{2,9}·[\u4e00-\u9fa5]{2,10}|[\u4e00-\u9fa5]{2,20})$/;
	if (reg.test(name) != true) {
		$("#name_check").text('姓名格式不正确哦~');
		$("#name_check").show();
		return false;
	}
	$("#name_check").hide();
	
	return true;
}

//身份证验证
function id_noValidator(){
	var id_no = $("#id_no").val();
	if(id_no == ''){
		$("#identity_check").text('身份证号不可为空哦~');
		$("#identity_check").show();
		return false;
	}
	var reg = /(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
	if (reg.test(id_no) != true) {
		$("#identity_check").text('身份证号格式不正确哦~');
		$("#identity_check").show();
		return false;
	}
	$("#identity_check").hide();
	return true;
}

function is_Validator(){
	if(nameValidator() && id_noValidator()){
		$("#auth_button").attr("style","background-color: #f23732;");
		$("#auth_button").attr("onclick","user_auth()");
	}else{
		$("#auth_button").attr("style","");
		$("#auth_button").attr("onclick","");
	}
}
//用户认证提交
function user_auth(){
	var name = $("#name").val();
	var id_no = $("#id_no").val();
	
	loadingUpShow();
	var params = {};
    params.name = name;
    params.id_no = id_no;
    params.uid = uid;
    
    params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/user/auth/apply';
    connectserver("../common/dopost.html",postDate, function(db){
    	loadingUpHide();
    	if(db.code != 0){
    		confirm(db.msg);
    		return ;
    	}
    	window.location.href=context_path + '/user/auth.html';
    });
	
}