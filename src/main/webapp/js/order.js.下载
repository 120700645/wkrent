﻿﻿﻿﻿var return_siteid;
var return_location={};
var songchesm_return_location={};//记录还车网点坐标，关闭上门取车之后，重置还车网点坐标
var return_address;
var basic_insurance =1;
var additional_insurance=1;
var wkcoin_pay;
var coupon_pay;
var use_coupon_id;
var site_location = {};
var songchesm_site_location = {};//记录取车网点坐标，关闭送车上门之后，重置取车网点坐标
var is_orther_city=false;
var wkcoin_avai_pay;
var send_service;
var send_service_mile;
var return_service;
var return_service_mile;
var site_address;
var discount_switch_choose = '';
var discount_amount;
var flag = false;
//取出渠道的cookie值
var ck = $.cookie('wkcookie_third');
var ckObject = eval("("+ ck +")");
var channel;
var isOrder;
var orderChannel;
var third;
if(ckObject != null && ckObject != undefined){
	channel = ckObject.channel;
	isOrder = ckObject.is_order;
	orderChannel = ckObject.channel_order;
	third = ckObject.third;
}
//控制多次生成订单标志
var orderAdd = false;
//未认证则需要填写认证信息标志
var isAuthed = false;
function init_return_site_id(backFun){
	if(car_type_storage.type !="offsite"){
		return_siteid = site_id;
	}
	getSites(backFun); 
}
function init_pages() {
	loadingUpShow();//正在加载loading遮罩层显示
	
	var type=car_type_storage.type;
	var car_lease="";
	if(start_time!=""||end_time!=""||start_time!=null||end_time!=null){
		car_lease="租期: "+time_math(start_time,end_time);
	}
    var params = {};
    params.uid =uid ;
    params.car_type_id =car_type_id;
    params.siteid =site_id ;
    params.from_time = start_time;
    params.to_time = end_time;
    
    var paramJson = {};
    paramJson.param = JSON.stringify(params);
    paramJson.url = '/cartype/get_detail';
    connectserver("../common/dopost.html",paramJson, function(db){
    	
    	
    	//如网点没有取还车服务，隐藏取还车按钮
    	var fang = db.site.diff_site_service;
		if("DFSS_NONE" == fang){
			$("#songchesm_label").css('display','none');
			$("#quchesm_label").css('display','none');
		}else if("DFSS_RETURN" == fang){
			$("#songchesm_label").css('display','none');
		}else if("DFSS_TAKE" == fang){
			$("#quchesm_label").css('display','none');
		}
    	
    	if(db.code != 0){
    		loadingUpHide();
    		if(db.msg.indexOf("car_type_id is null")>=0){
    			confirm_cancel("请选择车型再下单",function(button){
					if(button == '确定' ){
						toSearchPage();
					}
				});
    			
    		}else{
    			confirm(db.msg);
    		}
    		
    		return ;
    	}
    	
		basic_insurance=db.pays.basic_insurance;
		additional_insurance=db.pays.additional_insurance;
    	if(db.location){
    		site_location=db.location;
	    	songchesm_site_location=db.location;
	    	return_location=db.location;
	    	songchesm_return_location=db.location;
    	}else{
    		site_location=db.site.location;
	    	songchesm_site_location=db.site.location;
	    	return_location=db.site.location;
	    	songchesm_return_location=db.site.location;
    	}
    	
    	//用户详情展示
    	var car_img_url="";
    	if(db.pics){
    		car_img_url=db.pics.pic1;
    		$("#car_img").css("background","url(\""+car_img_url+"\") no-repeat center");
	    	$("#car_img").css("background-size","60%");
    	}
    	if(db.car_type_name){
    		$("#car_type_name").html(db.car_type_name+" <a>或同组车型</a>");//车型
    	}
    	if(db.basics.transmission_name&&db.basics.displacement
    		&&db.basics.capacity&&db.basics.level_name){
    		var car_type_msg=db.basics.transmission_name+"|"+db.basics.displacement+"|可载"+db.basics.capacity+"人|"+db.basics.carriage;
	    	$("#car_type_msg").text(car_type_msg);//车型基本信息
    	}
    	if(db.site.name && type!="offsite"){
    		$("#site_name_hc").text(city_name+" "+db.site.name);//还车网点
    		console.log("init_site_name:"+city_name+" "+db.site.name);
    	}
    	if(db.site.name){
    		$("#site_name").text(city_name+" "+db.site.name);//网点名称
    	}
    	if(db.site.address && type!="offsite"){
    		$("#site_address_hc").val(db.site.address);//还车地址
    	}
    	if(db.site.address){
    		$("#site_address").val(db.site.address);//网点地址
    		site_address=db.site.address;
    	}
	    var start_time_html = start_time.substring(0,11) + sessionStorage.getItem("start_week") + ' ' + start_time.substring(11,16);
	    var end_time_html = end_time.substring(0,11) + sessionStorage.getItem("end_week") + ' ' + end_time.substring(11,16);
    	$("#start_time").text(start_time_html);//开始时间
    	$("#end_time").text(end_time_html);//结束时间
    	$("#car_lease").text(car_lease);//租期
    	init_optional_services(db.optional_service);//初始化可选服务
    	init_return_site_id(function(){
    		if($("#site_name_hc").html().trim() == ''){
    			loadingUpHide();//正在加载loading遮罩层隐藏
    			confirm("为了方便我们为您服务，请选择还车网点",function(){
    				$(".change-site").click();
    			});
    			return;
    		}
    		init_order_calc();
    	});
    	//设置订单按钮悬浮位置
    	setSubmitPostion();
    	loadingUpHide();//正在加载loading遮罩层隐藏
    });
    
}

function init_order_calc(){
	var params = {};
	 	params.uid =uid ;
	 	params.car_type_id =car_type_id;
	    params.start_time =start_time ;
	    params.end_time =end_time ;
	    params.basic_insurance=basic_insurance;//基本保险
	    params.additional_insurance=additional_insurance;//附加险
	    params.siteid=site_id;
		
	    if(channel != null && channel !=undefined && isOrder == 1){
	    	params.channel = orderChannel;
	    }else{
	    	params.channel="PC";
	    }
	    if(third != null && third != undefined){
	    	params.third = third;
	    }
	    
	    if(send_service!=undefined&&send_service!=""){
	    	params.send_service=send_service;
	    }
	    if(send_service_mile!=undefined&&send_service_mile!=""){
	    	params.send_service_mile=send_service_mile;
	    }
		if(return_service!=undefined&&return_service!=""){
	    	params.return_service=return_service;
	    }
	    if(return_service_mile!=undefined&&return_service_mile!=""){
	    	params.return_service_mile=return_service_mile;
	    }
	    params.return_siteid=return_siteid;
	    params.type="INSERT";
	    
    var optional_service=get_optional_service();//获取可选服务
        params.optional_service=optional_service;
    var insured=get_insured_list();
    	params.insured=insured;
    var paramJson = {};
	    paramJson.param = JSON.stringify(params);
	    paramJson.url = '/order/calc';
	    
    connectserver("../common/dopost.html",paramJson, function(db){
    	if(db.code != 0){
    		if(db.msg.indexOf("最短1个小时起租")>=0){
    			confirm_cancel(db.msg,function(button){
					if(button == '确定' ){
						toSearchPage();
					}
				});
    			
    		}else{
    			confirm(db.msg);
    		}
    		return ;
    	}
    	wkcoin_avai_pay=db.wkcoin_avai_pay;//可用悟空币
		init_order_cost(db);//初始化“订单费用”栏目
		init_order_wkcoin(db);//初始化悟空币、优惠券
		_total(db);
    });
}

function change_site_init(){
	var params = {};
	    params.uid =uid ;
	    params.car_type_id =car_type_id;
	    params.start_time =start_time ;
	    params.end_time =end_time ;
	    params.basic_insurance=basic_insurance;//基本保险
	    params.additional_insurance=additional_insurance;//附加险
	    params.siteid=site_id;
	    
	    if(channel != null && channel !=undefined && isOrder == 1){
	    	params.channel = orderChannel;
	    }else{
	    	params.channel="PC";
	    }
	    if(third != null && third != undefined){
	    	params.third = third;
	    }
	    if(send_service_mile!=undefined&&send_service_mile!=""){
	    	params.send_service_mile=send_service_mile;
	    }
	    if(return_service_mile!=undefined&&return_service_mile!=""){
	    	params.return_service_mile=return_service_mile;
	    }
    var coupons=[];
	    if(use_coupon_id!=null&&use_coupon_id!=undefined&&use_coupon_id!=""){
	    	coupons[0]=use_coupon_id;//选用优惠券id
		    params.coupons=coupons;
		    params.coupon_pay=coupon_pay;
	    }
	    if($(".beused-ul li i").eq(0).hasClass("check-i")){
	    	params.wkcoin_pay=wkcoin_avai_pay;//悟空币抵用
	    }
	    params.return_siteid=return_siteid;
	    params.type="INSERT";
    var optional_service=get_optional_service();//获取可选服务
        params.optional_service=optional_service;
	    
    var insured=get_insured_list();
    	params.insured=insured;
    	
    var paramJson = {};
	    paramJson.param = JSON.stringify(params);
	    paramJson.url = '/order/calc';
    connectserver("../common/dopost.html",paramJson, function(db){
    	if(db.code != 0){
			confirm(db.msg);
    		return ;
    	}
    	if(db.send_service_amount&&db.send_service_amount!=0){
    		send_service=db.send_service_amount;
    	}
    	if(db.return_service_amount&&db.return_service_amount!=0){
    		return_service=db.return_service_amount;
    	}
		init_order_cost(db);//初始化“订单费用”栏目
		_total(db);
    });
}


function _wk_coupon_id(){//获取优惠券处理
	//优惠券
	if($(".coupon_i").length > 0 && $(".coupon_i").hasClass("check-i")){
		for(var o=0; o<$(".coupon-cover div.coupon-model ").length; o++){
            var _wk_coupon=$(".coupon-cover div.coupon-model").eq(o);
            if($(_wk_coupon).hasClass("check-status")) {
                //选中悟空币
            	use_coupon_id=_wk_coupon[0].id;
            } 
        }
	}
    
	var params = {};
    params.uid =uid ;
    params.car_type_id =car_type_id;
    params.start_time =start_time ;
    params.end_time =end_time ;
    params.basic_insurance=basic_insurance;//基本保险
    params.additional_insurance=additional_insurance;//附加险
    params.siteid=site_id;
    params.return_siteid=return_siteid;
    params.type="INSERT";
    
    if(channel != null && channel !=undefined && isOrder == 1){
    	params.channel = orderChannel;
    }else{
    	params.channel="PC";
    }
    if(third != null && third != undefined){
    	params.third = third;
    }
    if(send_service!=undefined&&send_service!=""){
    	params.send_service=send_service;
    }
    if(send_service_mile!=undefined&&send_service_mile!=""){
    	params.send_service_mile=send_service_mile;
    }
    if(return_service!=undefined&&return_service!=""){
    	params.return_service=return_service;
    }
    if(return_service_mile!=undefined&&return_service_mile!=""){
    	params.return_service_mile=return_service_mile;
    }
    var coupons=[];
    if(use_coupon_id!=null&&use_coupon_id!=undefined&&use_coupon_id!=""){
    	coupons[0]=use_coupon_id;//选用优惠券id
	    params.coupons=coupons;
	    params.coupon_pay=coupon_pay;
    }
    	
    if($(".beused-ul li i").eq(0).hasClass("check-i")){
   	 	params.wkcoin_pay=wkcoin_avai_pay;//悟空币抵用
    }
    var optional_service=get_optional_service();//获取可选服务
    params.optional_service=optional_service;
    var insured=get_insured_list();
	params.insured=insured;
	//处理优惠活动参数
	discount_params(params);
    var paramJson = {};
    paramJson.param = JSON.stringify(params);
    paramJson.url = '/order/calc';
    connectserver("../common/dopost.html",paramJson, function(db){
    	if(db.code != 0){
    		confirm(db.msg);
    		return ;
    	}
    	show_discount_amount(db);
    	_total(db);
    });
}

function show_discount_amount(db){//显示活动优惠金额
    if($('.coupon_i').hasClass('check-i')){
    	if(db.discount_desc){
    		$('.discount_i').siblings("span").text(db.discount_amount_name+"("+db.discount_desc+")");
    	}else{
    		$('.discount_i').siblings("span").text(db.discount_amount_name);
    	}
    	$('#discount_amount').text("￥"+db.discount_amount);
    }
    if(flag){
    	$('.discount_i').siblings("strong").text("￥"+db.discount_amount);
    	$('#discount_amount').text("￥"+db.discount_amount);
    }
}

function _wk_coupon_cancel(){//取消获取优惠券处理
	if($(".coupon_i").length > 0 && $(".coupon_i").hasClass("check-i")){
		for(var o=0; o<$(".coupon-cover div.coupon-model ").length; o++){
            var _wk_coupon=$(".coupon-cover div.coupon-model").eq(o);
            if($(_wk_coupon).hasClass("check-status")) {
                //选中悟空币
            	use_coupon_id=_wk_coupon[0].id;
            }
        }
	}else{
		use_coupon_id="";
	}
	var params = {};
    params.uid =uid ;
    params.car_type_id =car_type_id;
    params.start_time =start_time ;
    params.end_time =end_time ;
    params.basic_insurance=basic_insurance;//基本保险
    params.additional_insurance=additional_insurance;//附加险
    params.siteid=site_id;
    params.return_siteid=return_siteid;
    params.type="INSERT";
    
    if(channel != null && channel !=undefined && isOrder == 1){
    	params.channel = orderChannel;
    }else{
    	params.channel="PC";
    }
    if(third != null && third != undefined){
    	params.third = third;
    }
    if(send_service!=undefined&&send_service!=""){
    	params.send_service=send_service;
    }
    if(send_service_mile!=undefined&&send_service_mile!=""){
    	params.send_service_mile=send_service_mile;
    }
    if(return_service!=undefined&&return_service!=""){
    	params.return_service=return_service;
    }
    if(return_service_mile!=undefined&&return_service_mile!=""){
    	params.return_service_mile=return_service_mile;
    }
    var coupons=[];
	if(use_coupon_id!=null&&use_coupon_id!=undefined&&use_coupon_id!=""){
    	coupons[0]=use_coupon_id;//选用优惠券id
	    params.coupons=coupons;
	    params.coupon_pay=coupon_pay;
    }
	if($(".beused-ul li i").eq(0).hasClass("check-i")){
		params.wkcoin_pay=wkcoin_avai_pay;//悟空币抵用
	}
    
    var optional_service=get_optional_service();//获取可选服务
    params.optional_service=optional_service;
    var insured=get_insured_list();
	params.insured=insured;
	//处理优惠活动参数
	discount_params(params);

	var paramJson = {};
    paramJson.param = JSON.stringify(params);
    paramJson.url = '/order/calc';
    connectserver("../common/dopost.html",paramJson, function(db){
    	if(db.code != 0){
    		confirm(db.msg);
    		return ;
    	}
    	_total(db);
    });
}

function _optional_service_click(){//可选服务，选中取消改变价格
	var params = {};
    params.uid =uid ;
    params.car_type_id =car_type_id;
    params.start_time =start_time ;
    params.end_time =end_time ;
    params.basic_insurance=basic_insurance;//基本保险
    params.additional_insurance=additional_insurance;//附加险
    params.siteid=site_id;
    
    if(channel != null && channel !=undefined && isOrder == 1){
    	params.channel = orderChannel;
    }else{
    	params.channel="PC";
    }
    if(third != null && third != undefined){
    	params.third = third;
    }
    if(send_service!=undefined&send_service!=""){
    	params.send_service=send_service;
    }
    if(send_service_mile!=undefined&&send_service_mile!=""){
    	params.send_service_mile=send_service_mile;
    }
    if(return_service!=undefined&&return_service!=""){
    	params.return_service=return_service;
    }
    if(return_service_mile!=undefined&&return_service_mile!=""){
    	params.return_service_mile=return_service_mile;
    }
    params.return_siteid=return_siteid;
    params.type="INSERT";
    var coupons=[];
    if(use_coupon_id!=null&&use_coupon_id!=undefined&&use_coupon_id!=""){
    	coupons[0]=use_coupon_id;//选用优惠券id
	    params.coupons=coupons;
    }
    if($(".beused-ul li i").eq(0).hasClass("check-i")){
   	 	params.wkcoin_pay=wkcoin_avai_pay;//悟空币抵用
    }
    var optional_service=get_optional_service();//获取可选服务
    params.optional_service=optional_service;
    var insured=get_insured_list();
	params.insured=insured;
	//处理优惠活动参数
	discount_params(params);
    var paramJson = {};
    paramJson.param = JSON.stringify(params);
    paramJson.url = '/order/calc';
    connectserver("../common/dopost.html",paramJson, function(db){
    	if(db.code != 0){
    		confirm(db.msg);
    		return ;
    	}
    	var optional_service_list=[];
    	var osl=0;
    	if(db.optional_service){
    		optional_service_list=db.optional_service;
    		osl=optional_service_list.length;
    	}
    	$(".serve_ul li>a").text("￥0");
    	for(var l=0;l<osl;l++){
    		$(".serve_ul li[value=" + optional_service_list[l].id + "]>a").text("￥" + optional_service_list[l].amount);
    	}
    	_total(db);
    });
}

function _total(db){
	coupon_pay=db.coupon_pay;
	if(db&&db.wkcoin_pay){
		wkcoin_pay=db.wkcoin_pay;
	}
	if(db&&db.wkcoin_avai_pay){
		wkcoin_avai_pay=db.wkcoin_avai_pay;
	}
	if(db&&db.discount_amount || db.discount_amount==0){
		discount_amount=db.discount_amount
	}

	if(db.discount_amount_name){
		if(db.discount_desc){
			$('.discount_i').siblings("span").text(db.discount_amount_name+"("+db.discount_desc+")");
		}else{
			$('.discount_i').siblings("span").text(db.discount_amount_name);
		}
		$('.discount_i').siblings("strong").text('￥' + db.discount_amount);
		$('#discount_amount').text('￥' + db.discount_amount);
	}
	if(db.discount_switch == true){
		$(".discount_i").removeClass("check-i").addClass("check-i");
	}
	if(db.discount_amount != 0){
		$("#total_amount").text("￥"+(db.total_amount+Math.abs(db.discount_amount)));//合计
		$("#coupon_pay_co").text("￥"+(db.coupon_pay + db.wkcoin_pay + db.discount_amount));//优惠券立减
	}else{
		$("#total_amount").text("￥"+db.total_amount);//合计
		$("#coupon_pay_co").text("￥"+(db.coupon_pay+db.wkcoin_pay));//优惠券立减
	}
	if(db&&db.more_pay){
		$("#more_pay").text("￥"+db.more_pay);//应付
	}else{
		$("#more_pay").text("￥0");//应付
	}
}

function init_order_cost(db){//初始化“订单费用”栏目
	var car_price="￥";//租金
	car_price+=db.rent_amount;
	$("#car_price").text(car_price);//车辆租金
	$("#basic_insurance").text("￥"+db.insurance_amount);//基本保险费
	var other_amount_all=db.night_service_amount+db.send_service_amount+db.return_service_amount
			+db.penalty_amount+db.poundage_amount+db.other_amount+db.crosscity_service_amount;
	$("#other_amount_all").text("￥"+other_amount_all);//其他费用合计
	$("#night_service_amount").text("￥"+db.night_service_amount);//夜间服务费
	$("#send_service_amount").text("￥"+db.send_service_amount);//送车上门费
	$("#return_service_amount").text("￥"+db.return_service_amount);//上门取车
	$("#crosscity_service_amount").text("￥"+db.crosscity_service_amount);//异地还车费
	$("#penalty_amount").text("￥"+db.penalty_amount);//退改费
	$("#poundage_amount").text("￥"+db.poundage_amount);//手续费
	$("#other_amount").text("￥"+db.other_amount);//其他
	if(db.discount_amount){
		$("#discount_amount").text("￥"+db.discount_amount);//活动：优惠立减
	}
}

function init_order_wkcoin(db){//初始化“优惠券/悟空币”栏目
	wkcoin_avai_pay=0;
	var avai_coupons=[];//优惠券
	var ac_l=0;
	if(db.wkcoin_avai_pay){
		wkcoin_avai_pay=db.wkcoin_avai_pay;	
	}
	if(db.avai_coupons){
		avai_coupons=db.avai_coupons;	
	}
	if(avai_coupons!=null&&avai_coupons!=undefined){
		ac_l=avai_coupons.length;
	}
	
	if((wkcoin_avai_pay!=0&&wkcoin_avai_pay!=null&&wkcoin_avai_pay!=undefined)||ac_l>0
			||(db.discount_hide == undefined || db.discount_hide == false )){//显示悟空币/优惠券栏目
		var lj_je="";
		var in_str="<p class=\"title-p\">可使用优惠<img class=\"beused_img\"onclick=\"imgClickShow('.beused_img')\"";
		in_str+="src=\""+static_webserver+"/images/index/input_up.png\" alt=\"\"><span id=\"wkcon_coupon_total\" class=\"beused-fee\"></span></p>";
		in_str+="<ul class=\"beused-ul\">";
		if(wkcoin_avai_pay!=0&&wkcoin_avai_pay!=null&&wkcoin_avai_pay!=undefined){
			in_str+="<li><i style=\"margin-top: 14px;\" class=\"check-i\"></i><span>使用悟空币("+wkcoin_avai_pay+"悟空币, 可抵"+wkcoin_avai_pay+".00元)</span></li>";
		}
		//活动优惠
		if(db.discount_hide == undefined || db.discount_hide == false){
			in_str += '<li>';
				in_str += '<i style="margin-top: 14px;"'
					if(db.discount_switch == true){
						in_str += ' class="discount_i check-i" ';
					}else{
						in_str += ' class="discount_i"';
					}
				in_str += '></i>';
				in_str += '<span>';
				in_str += db.discount_amount_name;
				if(db.discount_desc){
					in_str += ' (' + db.discount_desc + ')';
				}
				in_str += '</span>';
				in_str += '<b style="border: 1px solid ' + db.activity.tag_color + ';color:' + db.activity.tag_color + '" >' + db.activity.tag + '</b>';
				in_str += '<strong>￥' + db.discount_amount + '</strong>';
			in_str += '</li>';
			discount_switch_choose = 'ACTIVITY';
		}
		if(ac_l>0){
			in_str+='<li><i class=\"coupon_i\" style=\"margin-top: 14px;\" ></i><span>使用优惠券(<font id="coupon_num">'+ac_l+'</font>张可用)</span></li>';
			in_str+="<div class=\"coupon-cover\">";
			in_str+='<p class="prev" style="display: block;"></p>';
			var max_amount=0;
			var max_flag=true;
			for(var k=0;k<ac_l;k++){//两张一行，第一张 css有mr
				(max_amount<avai_coupons[k].amount) ? max_amount=avai_coupons[k].amount : max_amount=max_amount;
			}
			for(var k=0;k<ac_l;k++){//两张一行，第一张 css有mr
				if(max_amount==avai_coupons[k].amount&&max_flag){
					in_str += '<div id="' + avai_coupons[k].id + '" class="coupon-model mr check-status">';
					max_flag=false;
				}else {
					in_str += '<div id="' + avai_coupons[k].id + '" class="coupon-model mr">';
				}
						in_str += '<div>';
							in_str += '<p class="amount">';
								in_str += '<span>￥</span>';
								in_str += '<span>' + avai_coupons[k].amount + '</span>';
							in_str += '</p>';
							in_str += '<div class="effective_time">';
								in_str += '<p>有效期</p>';
								in_str += '<p>' + time_yMd(avai_coupons[k].start_date) + '至' + time_yMd(avai_coupons[k].expdate) + '</p>';
							in_str += '</div>';
						in_str += '</div>';
						in_str += '<p title="' + avai_coupons[k].description + '">' + avai_coupons[k].description + '</p>';
//					if(max_amount==avai_coupons[k].amount&&max_flag){
//						in_str += '<img src="' + static_webserver + '/images/order/coupon-choose.png" alt="" style="display: block;" >';
//					}else {
//						in_str += '<img src="' + static_webserver + '/images/order/coupon-choose.png" alt="" >';
//					}
				in_str += '</div>';
			}
			in_str += '<p class="next" style="display: block;"></p>';
			in_str+="</div>";
		}
		in_str+="</ul>";
	}
	//隐藏活动优惠
	if(db.discount_hide == true){
		$("#discount_li").hide();
	}
	$("#wkcon_coupon").append(in_str);
	init_wkb_onclick();//添加悟空币点击监听
	couponRoll();//添加悟空币左右滚动
	_wk_coupon_id();
}

function del_p(e){
	e.remove();
	var bbr_l=$("#bbr_table p").length;
	$("#bbr_total").text("还可添加"+(9-bbr_l)+"人");
	init_bbr();
	_optional_service_click();
}


function reset_p(e){
	var bbr_l=$("#bbr_table p").length;
	$("#bbr_total").text("还可添加"+(9-bbr_l)+"人");
}

function trim(str) {
	return str.replace(/(^\s+)|(\s+$)/g, "");
}

function  checkMobile(str) {
    var  re = /^1\d{10}$/;
    if (re.test(str)) {
       return true;
    } else {
    	return false;
    }
}

function  checkName(str,html_id) {
	var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\]/?~！@#￥……&*（）;—|{}【】‘；：”“'。，、？]");//允许输入点
    var sc=/[@#\$%\^<>&\*]+/g;
    if (pattern.test(str)) {
    	html_id.text("姓名只能是汉字字母或数字");
        return false;
    }
    if ($.trim(str) == "") {
    	html_id.text("请填写姓名");
        return false;
    }
    if (str.length > 12) {
    	html_id.text("姓名过长，请您重新输入");
        return false;
    }
    if (str.length < 2) {
    	html_id.text("姓名必须大于2个汉字");
        return false;
    } else if (sc.test(str)) {
    	html_id.text("姓名包含非法字符");
        return false;
    } else {
    }
    return true;
}

function add_bbr(){
	var lenP = $("#bbr_table p").length+1;
	var bbr_name=trim($("#bbr_name").val());
	var bbr_phone=trim($("#bbr_phone").val());
	var bbr_card_no=trim($("#bbr_card_no").val());
	var html_id=$("#bbr_err_msg");//错误信息显示
	if(bbr_name==null||bbr_name=='undefined'||bbr_name==""){
		html_id.text("姓名不能为空！");
		return;
	}else if(!checkName(bbr_name,html_id)){
		return;
	}
	if(bbr_phone==null||bbr_phone=='undefined'||bbr_phone==""){
		html_id.text("电话不能为空！");
		return;
	}else if(!checkMobile(bbr_phone)){
		html_id.text("电话不正确！");
		return;
	}
	var is_card= IdentityCodeValid(bbr_card_no,html_id);
	if( $(".serve_ul li").eq(2).find("i").hasClass("check-i")){
    	var bbr_l=$("#bbr_table p").length;
    	var bbr_ar;
	    for(var i=0;i<bbr_l;i++){
	    	bbr_ar=trim($("#bbr_card_no"+(i+1)).text());
	    	if(bbr_card_no==bbr_ar){
	    		html_id.text("该身份证号的被保人已存在 , 请确保并修改信息");
	    		return;
	    	}
	    }
    }
	if(!is_card){
		return;
	}else{
		var bbr_str="<p ><a class='sort-a gray-a' id=\"bbr_id"+lenP+"\">"+lenP+"</a><span class='block-span' id=\"bbr_name"+lenP+"\">"+bbr_name+
		"</span><span id=\"bbr_card_no"+lenP+"\"> "+bbr_card_no+"</span>" +
				"<input hidden=\"true\" id=\"bbr_phone"+lenP+"\" value=\""+bbr_phone+"\"><a class='btn-a' onClick='del_p($(this).parent(\"p\"))'>删除</a></p>";
		$("#bbr_table").append(bbr_str);
		$("#bbr_name").val("");
		$("#bbr_phone").val("");
		$("#bbr_card_no").val("");
		var bbr_l=$("#bbr_table p").length;
		$("#bbr_total").text("还可添加"+(9-bbr_l)+"人");
		init_bbr();
		_optional_service_click();
		html_id.text("");
		$(".mcover").hide();
		$(".zc-add-insure").hide();
	}
	bbr_add_hover();//添加被保人后，加上hover事件
}

function init_bbr(){
	var bbrs = $("#bbr_table>p");
	if(bbrs.length == 0)
		return;
	for (var i = 0; i < bbrs.length; i++) {
		var thisP = $("#bbr_table>p:eq("+ i +")");
		var index = i + 1;
		thisP.find("a:eq(0)").attr("id","bbr_id" + index);
		thisP.find("a:eq(0)").html(index);
		thisP.find("span:eq(0)").attr("id","bbr_name" + index);
		thisP.find("span:eq(1)").attr("id","bbr_card_no" + index);
		thisP.find("input:eq(0)").attr("id","bbr_phone" + index);
	}
}

$(".submit-btn").click(function(){
	if(orderAdd)
		return;
	//验证还车网点不为空
	if($("#site_name_hc").html().trim() == '')
		return;
	if(isAuthed){
		submit();
	}else{
		checkUserAuth(submit);
	}
})

function submit(){//订单提交
	orderAdd = true;
	var params ={};

    params.location =JSON.stringify(site_location);
    params.address=$("#site_address").val();
    params.return_siteid=return_siteid;
    params.return_location=JSON.stringify(return_location);
    params.return_address=$("#site_address_hc").val();
    params.start_time=start_time;
    params.end_time=end_time;
    params.fuel="2";//油费计算方式（1：按里程，2：原油位）
    params.bounds="0";//是否出京（0：不出，1：出）
    params.basic_insurance=basic_insurance;
    params.additional_insurance=additional_insurance;
    if(send_service!=null&&send_service!=""){
    	params.send_service=send_service;
    }
    if(send_service_mile!=null&&send_service_mile!=""){
    	params.send_service_mile=send_service_mile;
    }
    if(return_service!=null&&return_service!=""){
    	params.return_service=return_service;
    }
    if(return_service_mile!=null&&return_service_mile!=""){
    	params.return_service_mile=return_service_mile;
    }
    params.type="INSERT";
  
    var optional_service=get_optional_service();//获取可选服务
    params.optional_service=optional_service;
    //被保人个人
    var insured= get_insured_list();;
    params.insured=insured;
    if($(".coupon_i").eq(0).hasClass("check-i")){
        var coupons=[];
        if(use_coupon_id!=null&&use_coupon_id!=undefined&&use_coupon_id!=""){
        	coupons[0]=use_coupon_id;//选用优惠券id
    	    params.coupons=coupons;
    	    params.coupon_pay=coupon_pay;
        }
    }
    if($(".beused-ul li i").eq(0).hasClass("check-i")){
    	 params.wkcoin_pay=wkcoin_pay;//悟空币抵用
    	 params.wkcoin_avai_pay=wkcoin_avai_pay;
    }
    params.uid = uid;
    params.car_type_id = car_type_id;
    params.siteid = site_id;
	//处理优惠活动参数
	discount_params(params);
	//取出值得买cookie的值
	var ck = $.cookie('wkcookie_third');
	var ckObject = eval("("+ ck +")");
	var channel;
	var isOrder;
	var orderChannel;
	var third;
	if(ckObject != null && ckObject != undefined){
		channel = ckObject.channel;
		isOrder = ckObject.is_order;
		orderChannel = ckObject.channel_order;
		third = ckObject.third;
	}
    if(channel != null && channel !=undefined && isOrder == 1){
    	params.channel = orderChannel;
    }else{
    	params.channel="PC";
    }
    if(third != null && third != undefined){
    	params.third = third;
    }
    
    params.plan_id = "plan_id";
    var paramJson = {};
    paramJson.param = JSON.stringify(params);
    paramJson.url = '/order/add';
    loadingUpShow();
    connectserver("../common/dopost.html",paramJson, function(db){
    	if(db.code != 0){
    		loadingUpHide();
    		if(db.msg.indexOf("宝贝一秒被抢光了")>=0){
    			confirm_cancel(db.msg,function(button){
					if(button == '确定' ){
						toSearchPage();
					}
				});
			//您的会员等级与车辆不匹配，暂不可租
    		}else if(db.msg.indexOf("您的会员等级与车辆不匹配")>=0){
    			confirm_cancel(db.msg,function(button){
					if(button == '确定' ){
						toSearchPage();
					}
				});
			//您在同一时间内只能有1个未完成的订单，请完成后再预订新的车辆
    		}else if (db.msg.indexOf("您在同一时间内只能有1个未完成的订单")>=0){
    			confirm_cancel(db.msg,function(button){
					if(button == '确定' ){
						toSearchPage();
					}
				});
    		}else if(db.msg.indexOf("您需要通过实名认证才能预订此车辆，请耐心等候")>=0){
    			checkUserAuth(submit);
    			orderAdd = false;
    		}else{
    			confirm(db.msg);
    		}
    		return ;
    	}
    	if(db.code == 0){ 
    		$("#order_id").val(db.orderid);
    		setTimeout("$('#form_order').submit()",2000);
    		loadingUpHide();
    	}
    });
}

//验证用户是否认证
function checkUserAuth(func){
	var params ={};
    params.uid = uid;
    var paramJson = {};
    paramJson.param = JSON.stringify(params);
    paramJson.url = '/user/get_detail';
    connectserver("../common/dopost.html",paramJson, function(db){
    	if(db.code != 0){
    		confirm(db.msg);
    		return;
    	}
    	if(db.code == 0){
    		if(db.auth.status == 'USER_NOAUTH' && db.auth.comments == null){
    			openUserAuth();
    			return;
    		}
    		if(db.auth.status == 'USER_NOAUTH' && db.auth.comments != null){
    			openUserAuthFail(db.auth.comments);
    			return;
    		}
    		if(func)
    			func();
    	}
    });
}

//姓名验证
function nameValidator(){
	var name = $("#name").val();
	if(name == ''){
		$("#name_check1").text('姓名不可为空哦~');
		$("#name_check1").show();
		return false;
	}
	var reg = /^([\u4e00-\u9fa5]{2,9}·[\u4e00-\u9fa5]{2,10}|[\u4e00-\u9fa5]{2,20})$/;
	if (reg.test(name) != true) {
		$("#name_check1").text('姓名格式不正确哦~');
		$("#name_check1").show();
		return false;
	}
	$("#name_check1").hide();
	
	return true;
}

//身份证验证
function id_noValidator(){
	var id_no = $("#id_no").val();
	if(id_no == ''){
		$("#identity_check1").text('身份证号不可为空哦~');
		$("#identity_check1").show();
		return false;
	}
	var reg = /(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
	if (reg.test(id_no) != true) {
		$("#identity_check1").text('身份证号格式不正确哦~');
		$("#identity_check1").show();
		return false;
	}
	$("#identity_check1").hide();
	return true;
}
$("#up_auth").click(function(){
	if(nameValidator() && id_noValidator()){
		user_auth();
	}
});
$("#up_again_auth").click(function(){
		closeUserAuthFail();
		openUserAuth();
});
//用户认证提交
function user_auth(){
	var name = $("#name").val();
	var id_no = $("#id_no").val();
	var params = {};
    params.name = name;
    params.id_no = id_no;
    params.uid = uid;
    
    params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/user/auth/apply';
    connectserver("../common/dopost.html",postDate, function(db){
    	closeUserAuth();
    	submit();
    });
}

//打开认证弹框
function openUserAuth(){
	$("#user_auth").show();
	$(".mcover").show();
}

//关闭认证弹框
function closeUserAuth(){
	$("#user_auth").hide();
	$(".mcover").hide();
}

//打开认证失败弹框
function openUserAuthFail(reason){
	$(".fail_auth_word").text("很抱歉，由于“"+reason+"”，您的实名认证未通过，您可以重新填写信息再次提交审核，如需帮助，请联系 400-0515-507。");
	$("#user_auth_fail").show();
	$(".mcover").show();
}

//关闭认证失败弹框
function closeUserAuthFail(){
	$("#user_auth_fail").hide();
	$(".mcover").hide();
}

//认证失败跳转认证
function go_user_auth(){
	$("#user_auth_fail").hide();
	openUserAuth();
}

function get_optional_service(){//获取可选服务
    var optional_service=[];
    var lenIServe = $(".serve_ul li").length;
    for(var i=0; i<lenIServe; i++){
        if( $(".serve_ul li").eq(i).find("i").hasClass("check-i")){
        	optional_service.push($(".serve_ul li").eq(i).attr("value"));
        } 
    }
    return optional_service;
}

function get_insured_list(){//旅游人生意外险，hu
	var insured=[];
    if( $(".serve_ul li[type=type_3]").find("i").hasClass("check-i")){
    	var bbr_l=$("#bbr_table p").length;
	    for(var i=0;i<bbr_l;i++){
	    	var oj={};
	    	oj.name=trim($("#bbr_name"+(i+1)).text());
	    	oj.phone=trim($("#bbr_phone"+(i+1)).val());
	    	oj.idcard_no=trim($("#bbr_card_no"+(i+1)).text());
	    	insured[i]=oj;
	    }
    } 
    return insured;
}
init_pages();
init_page_cs();
	
function change_turn_site(){//取车网点弹出框 初始化
	$('.dot_query ul li').eq(0).css({
        'background':'#f23732',
        'color':'#fff'
    });
    $('.dot_query ul').off().on('click','li',function(e){
        e = e || window.event;
        $('.dot_query ul li').each(function(i){
            $(this).css({
                'background':'',
                'color':''
            })
        });
        $(this).css({
            'background':'#f23732',
            'color':'#fff'
        })
    });
    $('.dot_query_add').off().on('click','li',function(e){
        e = e || window.event;
		$('.dot_query_add li').each(function(i){
			$(this).css({
				'color':'#000000'
			})
		});
        $(this).css('color','#f23732')
    });
    $('.dot_query_add li').on('click',function(){//还车网点，点击确定
        $('.site_change').html($(this).html());
        $('.site_change').attr('site_id',$(this).attr('site_id'));
        $('.dot_query').hide();
        $(".mcover").hide();
        change_turn_site_obj(this.id);
    });
}
    		
function init_page_cs() {
    
    $(".close_box").click(function () {
        $(".mcover").hide();
        $(".dot_query").hide();
        $(".zc-add-insure").hide();
        var dis=$("#confirm_cancel").css("display");
        if(dis=="block"){
        	toSearchPage();
        	$("#confirm_cancel").hide();
        }
		$("#confirm").hide();
        $("#bbr_name").val("");
		$("#bbr_phone").val("");
		$("#bbr_card_no").val("");
		$("#bbr_err_msg").text("");
		closeUserAuth();//关闭认证弹框
		closeUserAuthFail();//关闭认证失败弹框
    });

    $(".prompt_img").hover(function(){
        $(this).parent().parent().find("div.triangle_border").show();
    }, function () {
        $(this).parent().parent().find("div.triangle_border").hide();
    });
    $(".triangle_border").hover(function(){
        $(this).show();
    }, function () {
        $(this).hide();
    });

    $(".change-site").click(function () {
        $(".mcover").show();
        $(".dot_query").show().addClass("scroll_class");
    });
    
    $("#suggestId").focus(function () {
    	$(this).removeClass("serach_dafault").addClass("serach_active");
    	$(this).parent().find("i").removeClass("addr_search_default").addClass("addr_search_active");
    });
    $("#suggestId").keydown(function () {
    	$("#suggestId").next().show();
    });
    $("#suggestId").blur(function (){
    	$(this).addClass("serach_dafault").removeClass("serach_active");
    	$(this).parent().find("i").addClass("addr_search_default").removeClass("addr_search_active");
    	if($("#suggestId").val() == ""){
    		$("#suggestId").next().hide();
    	}
    });
    $("#suggestId_hc").focus(function () {
    	$(this).removeClass("serach_dafault").addClass("serach_active");
    	$(this).parent().find("i").removeClass("addr_search_default").addClass("addr_search_active");
    });
    $("#suggestId_hc").keydown(function () {
    	$("#suggestId_hc").next().show();
    });
    $("#suggestId_hc").blur(function (){
    	$(this).addClass("serach_dafault").removeClass("serach_active");
    	$(this).parent().find("i").addClass("addr_search_default").removeClass("addr_search_active");
    	if($("#suggestId_hc").val() == ""){
    		$("#suggestId_hc").next().hide();
    	}
    });
}

function addr_clear_img_click(id){
    $("#"+id).val("");
    $(".addr_clear_img").hide();
}

function bbr_add_hover(){
    var lenP = $(".tour-insurance-list p").length;
    for(var m=0; m<lenP; m++){
        $(".tour-insurance-list p").eq(m).hover(function () {
            $(this).addClass("hover-p");
            $(this).find("a.gray-a").removeClass("gray-a").addClass("hover-sort-a");
            $(this).find("a.btn-a").addClass("hover-color");
            $(this).find("span").addClass("hover-color");
            $(this).siblings().removeClass("hover-p");
            $(this).siblings().find("a.hover-sort-a").removeClass("hover-sort-a").addClass("gray-a");
            $(this).siblings().find("a.btn-a").removeClass("hover-color");
            $(this).siblings().find("span").removeClass("hover-color");
        });
    }
}

function init_wkb_onclick(){//优惠券，点击处理
	var lenCouponModel = $(".coupon-cover div.coupon-model").length;
    for(var o=0; o<lenCouponModel; o++){
    	$(".coupon-cover div.coupon-model").eq(o).click(function () {
            $(this).addClass("check-status").find("img").show();
            $(this).siblings().removeClass("check-status").find("img").hide();
            _wk_coupon_id();
        });
    }
    var lenI = $(".beused-ul li").length;
    for(var i=0; i<lenI; i++){
        $(".beused-ul li i").eq(i).click(function () {
            if($(this).hasClass("check-i")){//取消
                $(this).removeClass("check-i");
                if($(this).hasClass("coupon_i")) {
                    $(".coupon-cover").hide();
                    discount_switch_choose = '';
                }
                if($(this).hasClass("discount_i")){
                	discount_switch_choose = '';
                }
                _wk_coupon_cancel();
            } else {//选中
                $(this).addClass("check-i");
                if($(this).hasClass("coupon_i")) {
                    $(".coupon-cover").show();
                    discount_switch_choose = 'COUPON';
                    if($('.discount_i').hasClass('check-i')){
                    	$('.discount_i').removeClass("check-i");
                    	$('.discount_i').siblings("strong").text("￥0");
                    }
                }
                if($(this).hasClass("discount_i")){
                	discount_switch_choose = 'ACTIVITY';
                	 $(".coupon-cover").hide();
                	 if($('.coupon_i').hasClass('check-i')){
                     	$('.coupon_i').removeClass("check-i");
                     	flag = true;
                     }
                }
                _wk_coupon_id();
            }
        });
    }
}



var num = 2;
function imgClickShow(ele){
    num++;
    if( num % 2){
        $(ele).attr("src",""+static_webserver+"/images/index/input_up.png");
        if($(ele).hasClass("other_fee_img")) {
            $(".other-fee").show();
        } else if($(ele).hasClass("beused_img")) {
            $(".beused-ul").show();
        }
    } else {
        $(ele).attr("src",""+static_webserver+"/images/index/input_down.png");
        if($(ele).hasClass("other_fee_img")) {
            $(".other-fee").hide();
        } else if($(ele).hasClass("beused_img")) {
            $(".beused-ul").hide();
        }
    }
    _optional_service_click();//展开悟空币，优惠券时默认选中
}

$('.span-btn').on('click',function(){
	toSearchPage();
});

function toSearchPage() {
	var url;
	if(is_orther_city){
		url = '../cartype/offsite.html';//异地还车
	}else{
		url = '../cartype/search.html';
		//加盟商专题
		if(group_id != "" && group_id != null && group_id != "null"){
			url = "../group/search/"+group_id+".html";
		}
	}
	
	var car_type_storage=sessionStorage.getItem("car_type_storage");
	sessionStorage.setItem("car_type_storage",JSON.stringify(car_type_storage));
	console.log(JSON.stringify(car_type_storage));
	is_orther_city=false;
	window.location.href= url;
};

function confirm(msg,successFun){
	$('.mcover').show();
	$("#confirm").show();
	$("#confirm_msg").text(msg);
	$("#confirm_fun").off().on("click",function(e){
		e = e || window.event;
		$(".mcover").hide();
		$("#confirm").hide();
		if(successFun != undefined){
			successFun()
		}
		e.stopPropagation();
	});
}

function confirm_cancel(msg,successFun){
	$('.mcover').show();
	$("#confirm_cancel").show();
	$("#confirm_cancel_msg").text(msg);
	var button = '';
	$("#confirm_cancel_fun").off().on("click",function(e){
		e = e || window.event;
		$(".mcover").hide();
		$("#confirm_cancel").hide();
		button = '确定';
		successFun(button);
		e.stopPropagation();
	});
	$("#confirm_cancel_remove").off().on("click",function(e){
		e = e || window.event;
		$(".mcover").hide();
		$("#confirm_cancel").hide();
		button = '取消';
		successFun(button);
		e.stopPropagation();
	});
}

function loadingUpShow(){
	$(".loading_shuaxin").show();
	$(".mcover").show();
}

function loadingUpHide(){
	$(".loading_shuaxin").hide();
	$(".mcover").hide();
}

//初始化可选服务
function init_optional_services(optionServices){
	if(optionServices == undefined || optionServices == ""){
		$("#optional_services").hide();
		return;
	}
	var servicesHtml = '';
	for (var i = 0; i < optionServices.length; i++) {
		if(optionServices[i].type==1){
			servicesHtml += getType1ForOptionService(optionServices[i]);
		}else if(optionServices[i].type==2){
			servicesHtml += getType2ForOptionService(optionServices[i]);
		}else if(optionServices[i].type==3){
			servicesHtml += getType3ForOptionService(optionServices[i]);
		}
	}
	$(".serve_ul").html(servicesHtml);
	//可选服务增加监听
	setOptionServiceEvent();
}

//可选服务类型1
function getType1ForOptionService(option){
	var html = '';
	html += getCommonForOptionService(option,1);
	html += '<div class="third-insurance-list" style="display: none;">';
	for (var i = 0; i < option.options.length; i++) {
		html += '<p>';
		html += '<i value="' + option.options[i].id + '"></i>';
		html += '<span>' + option.options[i].name + option.options[i].price + '</span>';
		html += '</p>';
	}
	html += '</div>';
	return html;
}

//可选服务类型2
function getType2ForOptionService(option){
	var html = '';
	html += getCommonForOptionService(option,2,option.id);
	return html;
}

//可选服务类型3
function getType3ForOptionService(option){
	var html = '';
	html += getCommonForOptionService(option,3,option.id);
	html += '<div class="tour-insurance-list" style="display: none;">';
		html += '<div class="list-cover">';
			html += '<div id="bbr_table">';
			html += '</div>';
			html += '<div class="list-add">';
				html += '<a id="addInsure">+ 添加被保人</a> <span id="bbr_total">还可添加9人</span>';
			html += '</div>';
			html += '</div>';
			html += '<div class="cl"></div>';
		html += '</div>';
	html += '</div>';
	return html;
}

//可选服务公共部分
function getCommonForOptionService(option,type,id){
	var html = '';
		html += '<li type="type_' + type + '" value="' + id + '">';
		if(option.selected == 1){
			html += '<i class="check-i"></i>';
		}
		if(option.selected == 0){
			html += '<i></i>';
		}
		html += '<span>' + option.name + '<img class="prompt_img" src="' + static_webserver + '/images/order/explain-icon.png" alt="' + option.name + '说明"></span>';
		html += '<a>￥0</a>';
		html += '<div class="triangle_border">';
			html += '<div class="popup">';
				html += '<span><em></em></span>';
				html += option.description;
				html += '<br/>';
				html += option.price;
			html += '</div>';
		html += '</div>';
	html += '</li>';
	return html;
}

//可选服务增加监听
function setOptionServiceEvent(){
	$(".serve_ul li").each(function(){
		var li = $(this);
		//提示框left属性添加
		console.log(li.find(">span").width());
		li.find(".popup").css("left",li.find(">span").width() + 35);
		//问号移上去显示提示框
		li.find(".prompt_img").hover(function(){
			li.find(".triangle_border").show();
		},function(){
			li.find(".triangle_border").hide();
		});
		li.find(".triangle_border").hover(function(){
			li.find(".triangle_border").show();
		},function(){
			li.find(".triangle_border").hide();
		});
		setIClick(li);
	})
    $("#addInsure").click(function () {//添加被保人 弹出框
    	var bbr_l=$("#bbr_table p").length;
    	if(bbr_l>=9){//如果被保人数等于9则不弹出被保人添加框
    		return;
    	}
        $(".mcover").show();
        $(".zc-add-insure").show();
    });
	//默认添加当前登录人
	if(u_card_no && u_card_no != null && u_card_no != ''){
		var html = '';
		html += '<p>';
			html += '<a class="sort-a gray-a" id="bbr_id1">1</a>';
			html += '<span class="block-span" id="bbr_name1"> ' + u_name +'</span>';
			html += '<span id="bbr_card_no1"> '+ u_card_no + '</span>'
			html += '<input hidden="true" id="bbr_phone1" value="' + uid + '">';
			html += '<a class="btn-a" onClick="del_p($(this).parent(\'p\'))">删除</a>';
		html += '</p>';
		$("#bbr_table").append(html);
    	bbr_add_hover();//被保人添加元素后，添加hover事件
    	reset_p();
	}
}

//可选服务按钮点击
function setIClick(li){
	if(li.attr("type") == "type_1"){
		li.next().find("i").click(function(){
			li.next().find("i").removeClass("checked-i");
			$(this).removeClass("checked-i").addClass("checked-i");
			li.attr("value",$(this).attr("value"));
			_optional_service_click();
		})
	}
	
	li.find(">i").click(function(){
		if($(this).hasClass("check-i")){
			$(this).removeClass("check-i");
			if(li.attr("type") == "type_1"){
				li.next().hide();
				li.next().find("i").removeClass("checked-i");
			}
			if(li.attr("type") == "type_3"){
				li.next().hide();
			}
		}else{
			$(this).addClass("check-i");
			if(li.attr("type") == "type_1"){
				li.next().show();
				li.next().find("i").removeClass("checked-i");
				li.next().find("i:eq(0)").removeClass("checked-i").addClass("checked-i");
				li.attr("value",li.next().find("i:eq(0)").attr("value"));
			}
			if(li.attr("type") == "type_3"){
				li.next().show();
			}
		}
		_optional_service_click();
	});
}

//优惠券左移右移
function couponRoll(){
	var lenCouponModel = $(".coupon-cover div.coupon-model").length;
	$('.prev').off().on('click', '', function() {
        var count = '';
        for(var i = 0; i < lenCouponModel; i++) {
            if ($(".coupon-cover div.coupon-model").eq(i).css('display') === 'block') {
                count = i;
                if (count !== 0) {
                    for (var n = count; n < (count + 3); n++) {
                        $(".coupon-cover div.coupon-model").eq(n).hide();
                    }
                    for (var a = (count - 3); a < count; a++) {
                        $(".coupon-cover div.coupon-model").eq(a).show();
                    }
                }
                return
            }
        }
    })
    $('.next').off().on('click', '', function() {
        var count = '';
        for(var i = 0; i < lenCouponModel; i++) {
            if ($(".coupon-cover div.coupon-model").eq(i).css('display') === 'block') {
                count = i;
                if (count < lenCouponModel-3) {
                    for (var n = (count + 3); n < (count + 6); n++) {
                        $(".coupon-cover div.coupon-model").eq(n).show();
                    }
                    for (var a = count; a < (count + 3); a++) {
                        $(".coupon-cover div.coupon-model").eq(a).hide();
                    }
                }
                return
            }
        }
    })
}
//提交订单按钮悬浮
$(window).scroll(function() {
	setSubmitPostion();
});
//设置订单按钮悬浮位置
function setSubmitPostion(){
	const scrollH = $(window).scrollTop();
	if (scrollH <= 600) {
		$(".order-submit-info").addClass("scroll-class");
	} else {
		$(".order-submit-info").removeClass("scroll-class");
	}
}
//优惠活动操作calc传值
function discount_params(params){
	if($('.discount_i').length == 0)
		return;
	//判断优惠活动操作还是优惠券操作
	if(discount_switch_choose == ''){//优惠活动操作
		params.switch = [];
	}else{//优惠券操作
		params.switch = [discount_switch_choose];
	}
}
