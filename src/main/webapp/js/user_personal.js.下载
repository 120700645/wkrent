//获取最新订单列表
function user_get_new_order(uid) {
	loadingUpShow();
    var params = {};
    params.uid = uid;
    params.page_size = '2';
    params.sord = 'desc';
    params.orderType = 'ORDER_SHORT';
    params.page = '1';
    params.status = '4';
    params.sidx = 'createdStamp';
    params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/order/get_orders';
    connectserver("../common/dopost.html",postDate, function(db){
    	if(db.code != 0){
    		confirm(db.msg);
    		loadingUpHide();
    		return ;
    	}
    	if(db.orders.length < 1){
    		$("#no_order_div").show();
    		$("#order_div").hide();
    		loadingUpHide();
    	}else{
    		$("#order_div").show();
    		$("#no_order_div").hide();
    		for(var i=0; i<db.orders.length; i++){
    			var order_tr = '';
    			var orders = db.orders[i];
    				order_tr += '<tr>';
    				order_tr += '<td class="personal_order_ft">';
    				order_tr += '<img src="'+orders.pic+'">';
    				order_tr += '<p>订单号 : '+orders.orderid+'</p>';
    				order_tr += '</td>';
    				order_tr += '<td>';
    				order_tr += '<p>';
    				order_tr += '<b>'+orders.type+'</b>';
    				if(orders.status >= 5 ){
    					order_tr += '<span>车牌号-'+orders.number+'</span>';
    				}else{
    					order_tr += '<span>或同组车型</span>';
    				}
    				order_tr += '</p>';
    				order_tr += '<p>';
    				order_tr += '<span>取</span>';
    				order_tr += '<i></i>';
    				order_tr += '<span>还</span>';
    				order_tr += '</p>';
    				order_tr += '<div>';
    				order_tr += '<strong>'+orders.start_time+'</strong>';
    				order_tr += '<b>';
//    				order_tr += '<i>'+orders.city+'</i> ';
    				order_tr += '<em>'+orders.address+'</em>';
    				order_tr += '</b>';
    				order_tr += '</div>';
    				order_tr += '<div>';
    				order_tr += '<strong>'+orders.end_time+'</strong>';
    				order_tr += '<b>';
//    				order_tr += '<i>'+orders.city+'</i> ';
    				order_tr += '<em>'+orders.return_address+'</em>';
    				order_tr += '</b>';
    				order_tr += '</div>';
    				order_tr += '</td>';
    				order_tr += '<td>';
    				order_tr += '<p>￥'+orders.total_amount+'</p>';
    				order_tr += '<span orderid="'+orders.orderid+'" uid="'+uid+'">费用明细</span>';
    				order_tr += '</td>';
    				order_tr += '<td>';
    				order_tr += '<p>'+orders.status_name+'</p>';
    				order_tr += '</td>';
    				if(orders.status == 2 || orders.status >=5){
    					order_tr += '<td style="padding-top:50px;">';
    				}else{
    					order_tr += '<td>';
    				}
    				if(orders.status == 1 ){
    					order_tr += '<b onclick="formSubmit(\''+orders.orderid+'\')">支付预付租金</b>';
    				}
					order_tr += '<p class="gengduocaozuo" style="position: relative;">更多操作';
    				order_tr += '<img src="'+ www +'/images/personal/gengduo.png" class="saoma" style="display: none">';
    				order_tr += '</p></br>';
    				if(orders.status != 2 && orders.status <5){
    					order_tr += '<span class="order_cancellation" orderid="'+orders.orderid+'">取消订单</span>';
    				}
    				order_tr += '</td>';
    				order_tr += '</tr>';
    				$("#new_order").append(order_tr);
    		}
    		loadingUpHide();
    		order_cancellation_click();
    	}
    });
}

//获取订单详情
function get_order_detail(obj){
	var str = "<ol id='details_Charges'>";
	str += "<strong></strong>";
	str += "<b></b>";
	str += "<p>订单明细</p>";
	str += '<div class="details_div"></div>';
	str += '<div class="loading_personal" id="bill_loading">';
	str += '<img src="'+www+'/images/loading2.gif">';
	str += "</div>";
	str += "</ol>";
	obj.parent('td').next('td').append(str);
	
	var params = {};
	params.uid = obj.attr('uid');
	params.orderid = obj.attr('orderid');
	params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/order/get_detail';
	connectserver("../common/dopost.html",postDate, function(db){
		if(db.code != 0){
			confirm(db.msg);
			return ;
		}
		//费用明细
		var bill = db.bill;
	    var str = "";
			str += "<li><span>"+bill.rent_amount_name+"<b> ( ￥"+db.hour_price+"/小时 ￥"+db.avg_price+"/日均 ) </b></span><i>￥"+bill.rent_amount+"</i></li>";
			str += "<li><span>"+bill.insurance_amount_name+"<b> ( ￥"+db.hour_insurance+"/小时 ￥"+(db.basic_insurance + db.additional_insurance)+"/天 ) </b></span><i>￥"+bill.insurance_amount+"</i></li>";
			str += "<li><span>"+bill.poundage_amount_name+"</span><i>￥"+bill.poundage_amount+"</i></li>";
			str += addStr(bill.overtime_rent_amount_name,bill.overtime_rent_amount);
			str += addStr(bill.overtime_insurance_amount_name,bill.overtime_insurance_amount);
			if(bill.optional_service_amount > 0){
				if(bill.optional_service != undefined){
					for(var i=0; i<bill.optional_service.length;i++){
						str += addStr(bill.optional_service[i].name,bill.optional_service[i].amount);
					}
				}
			}
			str += addStr(bill.send_service_amount_name,bill.send_service_amount);
			str += addStr(bill.return_service_amount_name,bill.return_service_amount);
			str += addStr(bill.night_service_amount_name,bill.night_service_amount);
			str += addStr(bill.miles_amount_name,bill.miles_amount);
			str += addStr(bill.fuel_amount_name,bill.fuel_amount);
			str += addStr(bill.penalty_amount_name,bill.penalty_amount);
			str += addStr(bill.crosscity_service_amount_name,bill.crosscity_service_amount);
			str += addStr(bill.other_amount_name,bill.other_amount);
			str += addStr(bill.discount_amount_name,bill.discount_amount);
			if(db.status > 5){
				str += "<li class='heji'><span>"+bill.total_amount_name+"</span><i>￥"+bill.total_amount+"</i><strong></strong><b></b></li>";
			}else{
				str += "<li class='heji'><span>"+bill.total_amount_name+"<b> ( 此费用为预估费用,最终费用以实际消费为准 ) </b></span><i>￥"+bill.total_amount+"</i><strong></strong><b></b></li>";
			}
			str += addStrLast(bill.depost_pay_name,bill.depost_pay);
			str += addStrLast(bill.coupon_pay_name,bill.coupon_pay);
			str += addStrLast(bill.wkcoin_pay_name,bill.wkcoin_pay);
			str += addStrLast(bill.account_pay_name,bill.account_pay);
			str += addStrLastLast(bill.depost_pay,bill.coupon_pay,bill.wkcoin_pay,bill.account_pay);
			if(bill.third_pay != undefined && bill.third_pay != 0){
				str += "<li class='yufu' style='height:42px;line-height:40px'><span>"+bill.third_pay_name+"<b> ( 多退少补,多余费用确认结算后将原路返回 ) </b></span><i>￥"+bill.third_pay+"</i></li>";
			}
			str += "<li class='mingxi'><span style='float:left'>结算明细</span></li>";
			if(bill.third_pay != undefined && bill.third_pay != 0){
				str += "<li class='mingxi'><span>"+bill.third_pay_name;
				if(db.channel_name != undefined){
					str += "<b id='xiecheng'>"+db.channel_name+"</b>";
				}
				str += "</span><i>￥"+bill.third_pay+"</i></li>";
			}
			str += addStrMingxi(bill.deposit_pay_name,bill.deposit_pay);
			str += addStrMingxi(bill.coupon_pay_name,bill.coupon_pay);
			str += addStrMingxi(bill.wkcoin_pay_name,bill.wkcoin_pay);
			str += addStrMingxi(bill.account_pay_name,bill.account_pay);
			
			$("#bill_loading").hide();
			$("#details_Charges").append(str);
			addStrClass(db);
	});
}

function addStr(name,price){
	str = '';
	if(price != undefined && price != 0){
		str = "<li><span>"+name+"</span><i>￥"+price+"</i></li>";
	}
	return str;
}

function addStrLast(name,price){
	str = '';
	if(price != undefined && price != 0){
		str = "<li class='last'><span>"+name+"</span><i>￥"+price+"</i></li>";
	}
	return str;
}

function addStrMingxi(name,price){
	str = '';
	if(price != undefined && price != 0){
		str = "<li class='mingxi'><span>"+name+"</span><i>￥"+price+"</i></li>";
	}
	return str;
}

function addStrClass(db){
	if(db.status<6){
		$(".mingxi").hide();
		$(".last").show();
		$(".last_last").show();
		$(".yufu").show();
	}else{
		$(".mingxi").show();
		$(".last").hide();
		$(".last_last").hide();
		$(".yufu").hide();
	}
	var arr = $('.heji').nextAll();
    var num = 0;
    for(var i = 0;i<arr.length;i++){
        if($(arr).eq(i).css('display')=='none'){
        	num++;
        }
    }
    if(num==1){
        $('.heji').css('border-bottom','none');
        $('.heji').find('strong').hide();
        $('.heji').find('b').hide()
    }
}

function addStrLastLast(depost_pay,coupon_pay,wkcoin_pay,account_pay){
	
	depost_pay = depost_pay == undefined ? 0 : depost_pay;
	coupon_pay = coupon_pay == undefined ? 0 : coupon_pay;
	wkcoin_pay = wkcoin_pay == undefined ? 0 : wkcoin_pay;
	account_pay = account_pay == undefined ? 0 : account_pay;
	
	str = '';
	if( depost_pay != 0 || coupon_pay != 0 || wkcoin_pay != 0 || account_pay != 0){
		str = "<li class='last_last'><span>抵扣</span><i>￥"+ ( account_pay + wkcoin_pay + coupon_pay + depost_pay ) +"</i></li>";
	}else{
		str = "<li class='last_last'><span>抵扣</span><i>￥0</i></li>";
	}
	return str;
}

//获取订单计算信息
function get_calc(obj){
	loadingUpShow();
	var params = {};
    params.type = 'CANCEL';
    params.orderid = obj.attr('orderid');
    params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/order/calc';
    connectserver("../common/dopost.html",postDate, function(db){
    	loadingUpHide();
    	if(db.code != 0){
    		confirm(db.msg);
    		return ;
    	}
    	$("#penalty_amount_name").text(db.penalty_amount_name);
    	$("#penalty_amount").text("￥"+db.once_penalty_amount);
    	$('.button_t').attr("orderid",obj.attr('orderid'));
    	
    });
	
}

//取消订单提交
function order_delete(obj){
	
	var reason = $("#order_delete_reason").val();
	if(reason == ''){
		confirm('请选择取消原因');
		return
	}
	loadingUpShow();
	var params = {};
    params.type = 'CANCEL';
    params.orderid = obj.attr('orderid');
    params.reason = reason;
    params.uid = uid;
    params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/order/delete';
    
    connectserver("../common/dopost.html",postDate, function(db){
    	loadingUpHide();
    	if(db.code != 0){
    		confirm(db.msg);
    		return ;
    	}
    	confirm("取消订单成功",function(){
        	location.reload();
        });
    });
}

//跳转支付页面
function formSubmit(id){
	$("#order_id").val(id);
	$("#form_pay").submit();
}