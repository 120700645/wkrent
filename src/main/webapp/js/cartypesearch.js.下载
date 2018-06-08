function getCarsByTypes(type, backfun) {
	var params = {};
	
	if(type == 'local') {
		if(sessionStorage.getItem("site_id")) {			
			params.siteid = sessionStorage.getItem("site_id");
		}
	}
	if(type == 'offsite') {
		//异地还车
		if(!checkInOffSite())
			return;
		params.return_city = sessionStorage.getItem("return_cityname");
	}
	params.city = sessionStorage.getItem("city_name");
	var location = {};
	location.lng = sessionStorage.getItem("lng");
	location.lat = sessionStorage.getItem("lat");
	params.location =location;
	var fromTime = $("#from_time").val();
	if(fromTime) {
		var fromStamp = $("#from_stamp").val();
		if(!fromStamp) {
			fromStamp = "00:00"
		}
		params.from_time = fromTime.trim() + " " + fromStamp.trim();
		sessionStorage.setItem("from_time",params.from_time);
	}
	var toTime = $("#to_time").val();
	if(toTime) {
		var toStamp = $("#to_stamp").val();
		if(!toStamp) {
			toStamp = "00:00"
		}
		params.to_time = toTime.trim() + " " + toStamp.trim();
		sessionStorage.setItem("to_time",params.to_time);
	}
	//类型筛选拼接
	if($('#choice_car figcaption').eq(0).hasClass("selected")) {
		sessionStorage.setItem("categories", 0);
	}else {
		var conditions = [];
		var categoryParam = [];
		var categories = "";
		for(var i = 1; i < $('#choice_car figcaption').length; i++) {
			if($('#choice_car figcaption').eq(i).hasClass("selected")) {
				var category = {};
				category.id = "categories";
				category.value = $('#choice_car figcaption').eq(i).attr("category");
				categoryParam.push(category);
				categories += i + ",";
			}
		}
		sessionStorage.setItem("categories", categories.substr(0, categories.length - 1));
		var item = {};
		item.param = categoryParam;
		conditions.push(item);
		params.conditions = conditions;
	}
	//品牌筛选拼接
	if($('#choice_car td').eq(0).hasClass("carmodels-btn-style")) {
		sessionStorage.removeItem("brands");
	}else {
		var brands = [];
		for(var i = 0; i < $('#choice_car td').length; i++) {
			if($('#choice_car td').eq(i).hasClass('carmodels-btn-style')) {
				brands.push($('#choice_car td').eq(i).html().trim());
			}
		}
		sessionStorage.setItem("brands", brands);
		params.brand = brands;
	}
	//热门推荐
	if(sessionStorage.getItem("hot_car_type_id")){
		params.car_type_id = sessionStorage.getItem("hot_car_type_id");
		sessionStorage.removeItem("hot_car_type_id")
	}
	//价格筛选拼接
	for(var i = 0; i < $('#choice_car i').length; i++) {
		if($('#choice_car i').eq(i).hasClass('selected')) {
			var min = $('#choice_car i').eq(i).attr("min");
			var max = $('#choice_car i').eq(i).attr("max");
			if(min) {
				params.min_price = min;
			}
			if(max) {
				params.max_price = max;				
			}
			sessionStorage.setItem("price_index", i);
		}
	}
	params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/cartype/search';
	connectserver(CONTEXT_PATH+"/common/dopost.html", postDate, backfun);
}

//获取车辆列表
function getCars(type) {
	getCarsByTypes(type, function(db) {
		loadingUpHide();
		if (db.code == 0) {
			var siteStr = '';
			var sites = db.sites;
			if (sites && sites.length > 0) {
				var site = sites[0];
				siteStr = getCarTypeStr(site);
			}

			var recommends = db.recommends;
			if(recommends && recommends.length > 0) {				
				siteStr += '<div style="clear: both;" class="more_dot">更多其他网点</div>';
			}			
			for (var i = 0; i < recommends.length; i++) {
				var site = recommends[i];
				siteStr = siteStr + getCarTypeStr(site, db.non_rent);
			}

			$('.dot_car_list_o_right').empty();
			$('.dot_car_list_o_right').html(siteStr);
			//为空提示语
			if (!sites || sites.length == 0) {
				$('.dot_car_list_o_right').prepend(getPromptHtml(db.msg));
			}
			addMapClick();
			addSiteActivities();
			$("#search_more").remove();
			if(db.site_ids && (recommends.length + sites.length) > 0) {
				site_ids = db.site_ids;
				$('<div class="dot_car_jiazaigengduo" id="search_more"><p onclick="getMoreCars(type);">加载更多</p></div>').insertAfter('.dot_car_localreturn_list');
			}
		} else {
			$('.dot_car_list_o_right').html(getPromptHtml("出了点小问题……"));
		}
		//定位到顶端
		$(window).scrollTop(0);
	});
}

function getMoreCarsByTypes(type, backfun) {
	var params = {};
	if(type == 'local') {
		if(sessionStorage.getItem("site_id")) {			
			params.siteid = sessionStorage.getItem("site_id");
		}
	}
	if(type == 'offsite') {
		//异地还车
		if(!checkInOffSite())
			return;
		params.return_city = sessionStorage.getItem("return_cityname");
	}
	params.site_ids = site_ids;
	params.city = sessionStorage.getItem("city_name");
	var location = {};
	location.lng = sessionStorage.getItem("lng");
	location.lat = sessionStorage.getItem("lat");
	params.location =location;
	var fromTime = $("#from_time").val();
	if(fromTime) {
		var fromStamp = $("#from_stamp").val();
		if(!fromStamp) {
			fromStamp = "00:00"
		}
		params.from_time = fromTime.trim() + " " + fromStamp.trim();
	}
	var toTime = $("#to_time").val();
	if(toTime) {
		var toStamp = $("#to_stamp").val();
		if(!toStamp) {
			toStamp = "00:00"
		}
		params.to_time = toTime.trim() + " " + toStamp.trim();
	}
	
	if(!($('#choice_car figcaption').eq(0).hasClass("selected"))) {
		var conditions = [];
		var categoryParam = [];
		var categories = "";
		for(var i = 1; i < $('#choice_car figcaption').length; i++) {
			if($('#choice_car figcaption').eq(i).hasClass("selected")) {
				var category = {};
				category.id = "categories";
				category.value = $('#choice_car figcaption').eq(i).attr("category");
				categoryParam.push(category);
				categories += i + ",";
			}
		}
		sessionStorage.setItem("categories", categories.substr(0, categories.length - 1));
		var item = {};
		item.param = categoryParam;
		conditions.push(item);
		params.conditions = conditions;
	}
	
	if(!$('#choice_car td').eq(0).hasClass("carmodels-btn-style")) {
		var brands = [];
		for(var i = 0; i < $('#choice_car td').length; i++) {
			if($('#choice_car td').eq(i).hasClass('carmodels-btn-style')) {
				brands.push($('#choice_car td').eq(i).html().trim());
			}
		}
		sessionStorage.setItem("brands", brands);
		params.brand = brands;
	}
	//热门推荐
	if(sessionStorage.getItem("hot_car_type_id")){
		params.car_type_id = sessionStorage.getItem("hot_car_type_id");
		sessionStorage.removeItem("hot_car_type_id")
	}
	for(var i = 0; i < $('#choice_car i').length; i++) {
		if($('#choice_car i').eq(i).hasClass('selected')) {
			var min = $('#choice_car i').eq(i).attr("min");
			var max = $('#choice_car i').eq(i).attr("max");
			if(min) {
				params.min_price = min;
			}
			if(max) {
				params.max_price = max;				
			}
		}
	}
	
	params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/cartype/search';
	connectserver(CONTEXT_PATH+"/common/dopost.html", postDate, backfun);
}

//获取车辆列表
function getMoreCars(type) {
	getMoreCarsByTypes(type, function(db) {
		loadingUpHide();
		if (db.code == 0) {
			var siteStr = '';
			var sites = db.sites;
			if (sites && sites.length > 0) {
				var site = sites[0];
				siteStr = getCarTypeStr(site);
			} else {
				var otherMsg = db.msg;
				if(otherMsg){
					$('.dot_car_list_o_right').prepend(getPromptHtml(otherMsg));
				}
			}

			var recommends = db.recommends;
			if(recommends && recommends.length > 0) {				
				siteStr += '<div style="clear: both;" class="more_dot">更多其他网点</div>';
			}			
			for (var i = 0; i < recommends.length; i++) {
				var site = recommends[i];
				siteStr = siteStr + getCarTypeStr(site,db.non_rent);
			}

			$('.dot_car_list_o_right .more_dot').eq(0).nextAll().remove();
			$('.dot_car_list_o_right .more_dot').remove();
			$('.dot_car_list_o_right').append(siteStr);
			addMapClick();
			addSiteActivities();
			$("#search_more").remove();
			search_more_times += 1;
//			if(search_more_times < 3) {
				$('<div class="dot_car_jiazaigengduo" id="search_more"><p>已经全部加载完毕</p></div>').insertAfter('.dot_car_localreturn_list');
//			}
		} else {
			var siteStr = "出了点小问题……";
			$('.dot_car_list_o_right').prepend(getPromptHtml(siteStr));
			$("#search_more").remove();
		}
	});
}
//拼接网店以及该网店的车辆
function getCarTypeStr(site, non_rent) {
	var return_cityname = sessionStorage.getItem("return_cityname");
//	console.log(site);
	var siteid = site.siteid;
	var siteStr = '<div class="dot_car_list_o_right_top">';
			siteStr += '<p class="dot-address">';
				siteStr += '<strong>' + site.name + ' </strong>';
				if(site.icon_tags && site.icon_tags.length > 0) {
					for(var i = 0; i < site.icon_tags.length; i++) {
						if(site.icon_tags[i] == '品牌') {
							siteStr +='<img style="vertical-align: middle;padding-right: 2px;margin-top:-3px;" src="'+static_webserver+'/images/outletsMaps/brand.png">';
						}else if(site.icon_tags[i] == '24h') {
							siteStr +='<img style="vertical-align: middle;padding-right: 2px;margin-top:-3px;" src="'+static_webserver+'/images/outletsMaps/24h.png">';
						}else if(site.icon_tags[i] == '充电桩') {
							siteStr +='<img style="vertical-align: middle;padding-right: 2px;margin-top:-3px;" src="'+static_webserver+'/images/outletsMaps/lightning.png">';
						}else if(site.icon_tags[i] == '机场'){
							siteStr +='<img style="vertical-align: middle;padding-right: 2px;margin-top:-3px;" src="'+static_webserver+'/images/outletsMaps/plane.png">';	
						}else if(site.icon_tags[i] == '火车站'){
							siteStr +='<img style="vertical-align: middle;padding-right: 2px;margin-top:-3px;" src="'+static_webserver+'/images/outletsMaps/tail.png">';
						}
					}
				}
				/*if(site.party_type == 'BRAND_JM') {
					siteStr += '<span>';
						siteStr += '品牌';
					siteStr += '</span> ';
				}
				if(site.from_time == '00:00' && site.to_time == '23:59'){
					siteStr +='<img style="vertical-align: middle;" src="'+static_webserver+'/images/outletsMaps/24h.png">';
					siteStr += '<span class="h">24h</span> ';
				}*/
				siteStr += '<i>营业时间 :</i> ';
				siteStr += '<em>' + site.from_time + '-' + site.to_time + ' </em>';
				siteStr += '<i>网点电话 :</i> ';
				siteStr += '<em>400-0515-507 </em> ';
			siteStr += '</p>';
			siteStr += '<p class="dot-map">';
				siteStr += '<i>网点地址 : </i>';
				siteStr += '<em style="font-size: 14px">' + site.address + ' </em>';
				siteStr += '<img style="vertical-align: middle;padding-right: 2px;" src="'+static_webserver+'/images/search/blue_map.png">';
				siteStr += '<strong ';
					siteStr += 'site_name="' + site.name + '" '
					siteStr += 'site_time="' +(site.from_time + '-' + site.to_time)+ '" '
					siteStr += 'site_address="' + site.address + '" '
					siteStr += 'site_lng="' + site.location.lng + '" '
					siteStr += 'site_lat="' + site.location.lat + '" '
					siteStr += 'site_phone="400-0515-507"'
				siteStr += '>查看地图</strong>';
			if(site.activities){
				if(site.activities.length > 0){
					siteStr += '<div class="spring-festival-activity">';
						siteStr += '<label>正在进行';
						siteStr += site.activities.length;
						siteStr += '</label>个活动  :</label>';
						for (var int = 0; int < site.activities.length; int++) {
							siteStr += '<div>';
								siteStr += '<i style="border:1px solid ' + site.activities[int].tag_color + ';color:' + site.activities[int].tag_color + '">';
									siteStr += site.activities[int].tag;
								siteStr += '</i>';
								siteStr += '<strong class="display-whole">';
									siteStr += '<strong>' + site.activities[int].description + '</strong>';
								siteStr += '</strong>';
							siteStr += '</div>';
						}
						siteStr += '<b index="0"></b>';
					siteStr += '</div>';
					siteStr += '<div class="occupy"></div>';
				}
			}
		siteStr += '</div>';
		siteStr += '<ul>';
		var carTypes = site.car_types;
		for (var i = 0; i < carTypes.length; i++) {
			var carType = carTypes[i];
			prices[carType.id] = carType.prices;
			siteStr = siteStr + '<li class="dot_car_list_o_li">';
			if(carType.pics && carType.pics.pic1) {
				siteStr = siteStr + '<img src="' + carType.pics.pic1 + '">';
			}else {
				siteStr = siteStr + '<img src="' + static_webserver + '/images/search/jiazaizhong.png">';
			}
				siteStr += '<div class="dot_car_list_o_divo">';
					siteStr += '<h4 title="' + carType.car_type_name + '">';
					if(carType.car_type_name.length > 10){
						siteStr += carType.car_type_name.substring(0,10) + '...';
					}else{
						siteStr += carType.car_type_name;
					}
					siteStr += '</h4>';
					if(carType.recommend) {
						siteStr += '<span></span>';
					}
					siteStr += '<ol style="width:186px">';
						siteStr += '<li>';
							if(carType.basics.carriage) {
								siteStr += carType.basics.carriage + '  |';
							}
						siteStr += '</li>';
						siteStr += '<li>';
							if(carType.basics.displacement) {
								siteStr += carType.basics.displacement + '  |';
							}
						siteStr += '</li>';
						siteStr += '<li>';
						if(carType.basics.transmission_name) {
							siteStr += carType.basics.transmission_name + '  |';
						}
						siteStr += '</li>';
						siteStr += '<li>';
						if(carType.basics.capacity) {
							siteStr += '可载' + carType.basics.capacity + '人';
						}
						siteStr += '</li>';
						siteStr += '';
						siteStr += '';
						siteStr += '';
					siteStr += '</ol>';
					if(carType.activities && carType.activities.length > 0) {
						for(var j = 0; j < carType.activities.length; j++) {
							siteStr += '<i style="border:1px solid ' + carType.activities[j].tagColor + ';color:' + carType.activities[j].tagColor + '">';
								siteStr += carType.activities[j].tag;
							siteStr += '</i>';
						}
					}
					if(carType.tags && carType.tags.length > 0) {
						for(var j = 0; j < carType.tags.length; j++) {
							var tag = carType.tags[j];
							siteStr += '<i>' + tag.tag + '</i>';
						}
					}
				siteStr += '</div>';
				siteStr += '<div class="dot_car_list_o_divt price-box">';
					siteStr += '<p>';
						siteStr += '<span>￥</span><i>' + carType.prices.avg + '</i><em>/日均</em>';
					siteStr += '</p>';
					siteStr += '<p class="prices" id="dot_car_list_o_divt_p" name="date-car" data="2017-3-21" onclick="getCarTypePrices(this,\'' + carType.car_type_id + '\', \'' + siteid + '\', event);">价格日历</p></div>';
				siteStr += '</div>';
				if(non_rent && non_rent == 1) {
					siteStr += '<div id="list_reserve" class="dot_car_list_o_divth btn-style" style="background:rgba(199,199,199,1)!important;">预订</div>';
				}else {			
					siteStr += '<div id="list_reserve" class="dot_car_list_o_divth btn-style" onclick="toOrderPages(\'' + carType.car_type_id + '\',\''+ siteid +'\',\'' + carType.city_name + '\',\'' + carType.city_id + '\',\'' + return_cityname + '\');">预订</div>';
				}
			siteStr += '</li>';
		}
		siteStr += '</ul>';
//	siteStr += '<p style="clear: both;"></p>';111
	return siteStr;
}

function toOrderPages(carTypeId,siteid,city_name, city_id, return_cityname) {
	var url = CONTEXT_PATH+'/order/order.html';
	var car_type_storage = {};
	car_type_storage.car_type_id = carTypeId;
	car_type_storage.site_id = siteid;
	sessionStorage.setItem("city_name", city_name);
	sessionStorage.setItem("city_id", city_id);
	sessionStorage.setItem("start_week", $('#start_week').html().trim());
	sessionStorage.setItem("end_week", $('#end_week').html().trim());
	var fromTime = $("#from_time").val();
	if(fromTime) {
		var fromStamp = $("#from_stamp").val();
		if(!fromStamp) {
			fromStamp = "00:00"
		}
		car_type_storage.start_time = fromTime.trim() + " " + fromStamp.trim();
		sessionStorage.setItem("from_time", fromTime.trim() + " " + fromStamp.trim());
	}
	var toTime = $("#to_time").val();
	if(toTime) {
		var toStamp = $("#to_stamp").val();
		if(!toStamp) {
			toStamp = "00:00"
		}
		car_type_storage.end_time = toTime.trim() + " " + toStamp.trim();
		sessionStorage.setItem("to_time", toTime.trim() + " " + toStamp.trim());
	}
	car_type_storage.type = type;
	if(type == 'offsite') {
		car_type_storage.return_cityname = return_cityname;
	}
	sessionStorage.setItem("car_type_storage",JSON.stringify(car_type_storage));
	sessionStorage.setItem("site_id",siteid);
	if(!($('#choice_car figcaption').eq(0).hasClass("selected"))) {
		var categories = "";
		for(var i = 1; i < $('#choice_car figcaption').length; i++) {
			if($('#choice_car figcaption').eq(i).hasClass("selected")) {
				categories += i + ",";
			}
		}
		sessionStorage.setItem("categories", categories.substr(0, categories.length - 1));
	}

	if($('#choice_car td').eq(0).hasClass("carmodels-btn-style")) {
		sessionStorage.removeItem("brands");
	}else {
		var brands = [];
		for(var i = 0; i < $('#choice_car td').length; i++) {
			if($('#choice_car td').eq(i).hasClass('carmodels-btn-style')) {
				brands.push($('#choice_car td').eq(i).html().trim());
			}
		}
		sessionStorage.setItem("brands", brands);
	}
	//热门推荐
	if(sessionStorage.getItem("hot_car_type_id")){
		params.car_type_id = sessionStorage.getItem("hot_car_type_id");
		sessionStorage.removeItem("hot_car_type_id")
	}
	for(var i = 0; i < $('#choice_car i').length; i++) {
		if($('#choice_car i').eq(i).hasClass('selected')) {
			sessionStorage.setItem("price_index", i);
		}
	}
	window.location.href= url;
};

//得到提示div文本
function getPromptHtml(msg){
	var html = '';
	html += '<div class="prompt">';
	html += '<img src="' + static_webserver + '/images/search/prompt-icon.png">';
	html += '<p>' + msg + '</p>';
	html += '</div>';
	return html;
}

//点击地图显示
function addMapClick(){
	$.each($('.dot_car_list_o_right').find('.dot-map'),function(i,item){
		$(this).find('strong').unbind();
		$(this).find('strong').click(function(){
			$('#dot_map_site_name').html($(this).attr('site_name'));
			$('#dot_map_site_time').html($(this).attr('site_time'));
			$('#dot_map_site_phone').html($(this).attr('site_phone'));
			$('#dot_map_site_address').html($(this).attr('site_address'));
			$('#dot_map_init').attr("lng",$(this).attr('site_lng'));
			$('#dot_map_init').attr("lat",$(this).attr('site_lat'));
			var iframe_url = '';
			iframe_url += '/cartype/map.html';
			iframe_url += '?site_name=' + $(this).attr('site_name');
			iframe_url += '&lng=' + $(this).attr('site_lng');
			iframe_url += '&lat=' + $(this).attr('site_lat');
			$('#dot_map_iframe').attr('src',iframe_url);
		    $('.mcover').show();
		    $('#dot_map').show();
		});
	});
}
//网点活动显示
function addSiteActivities(){
	$.each($('.spring-festival-activity b'),function(i,item){
		$(this).unbind();
		$(this).hover(function(){
	        $(this).parent().removeClass('spring-activity-position').addClass('spring-activity-position');
	        $(this).parent().next().removeClass('occupy');
	        $(this).parent().find('div>strong').removeClass('display-whole').addClass('display-whole');
	    },function(){
	    	$(this).parent().next().removeClass('occupy').addClass('occupy');
	    	$(this).parent().removeClass('spring-activity-position');
	    	$(this).parent().find('div>strong').removeClass('display-whole').addClass('display-whole');
	    	$(this).parent().find('div>strong').removeClass('display-whole').addClass('display-whole');
	    	$(this).parent().find('div>strong:eq(0)').removeClass('display-whole');
	    });
		// 判断活动是否超过一行
		$(this).hide();
		$(this).parent().css('height','auto');
		var clamp = Math.round($(this).parent().height()/parseFloat($(this).parent().css('line-height')));
//		console.log("***"+clamp+"***"+$(this).parent().height()/parseFloat($(this).parent().css('line-height'))+"***"+$(this).parent().css('line-height')+"***"+$(this).parent().height());
		if(clamp > 1) {
			$(this).parent().css('height','30px');
			$(this).parent().find('div>strong:eq(0)').removeClass('display-whole');
			$(this).show();
	    }
		
	});
    // ==========================================================================================
}
function get_activity_b_height(obj){
	var height = 0;
	$.each($(obj),function(i,item){
		height += $(this).height();
	})
	return height;
}
function get_activity_b_line_height(obj){
	var height = 0;
	$.each($(obj),function(i,item){
		height += $(this).css('line-height');
	})
	return height;
}
