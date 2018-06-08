function getSites(backFunc) {
	areaMap.clear();
	var params = {};
	var location = {};
	var postDate = {};
	params.take_siteid=site_id;
	var re_city=car_type_storage.return_cityname;
	var type=car_type_storage.type;
	
	var zc_menu_li_l=$(".zc_menu li").length;
	for(var o=0; o<zc_menu_li_l; o++){
        $(".zc_menu li").eq(o).removeClass("homecur");
    }
	if(re_city!=null&&re_city!=""&&re_city!=undefined&&type=="offsite"){//异地异点还车
		$(".zc_menu li").eq(2).addClass("homecur");//控制页面顶部，“首页”“同城自驾”“异地还车”高亮显示。
    	params.return_city=re_city;
	}else if(type=="local"){//同城修改还车网点
		params.return_city=city_name;
		$(".zc_menu li").eq(1).addClass("homecur");
	}
	params = JSON.stringify(params);
	postDate.param = params;
	postDate.url = '/site/get_sites';

	connectserver("../common/dopost.html", postDate, function(db) {
		if(db.code == 0) {
			var sites = db.sites;
			/*
			 * init_pages已经初始化过，如果是异地还车，则默认选择异地城市第一个网点作为异地还车网点
			 * 修改还车网点
			 * 
			 * */
			if(re_city!=null&&re_city!=""&&re_city!=undefined&&type=="offsite"&&sites.length>0){
				$("#songchesm_label").css('display','none');
				$("#quchesm_label").css('display','none');
				console.log("site_name_hc:"+sites[0].name);
				$("#site_name_hc").text(re_city+" "+sites[0].name);//还车网点
		    	$("#site_address_hc").val(sites[0].address);//还车地址
		    	return_location=sites[0].location;
		    	return_siteid=sites[0].siteid;
		    	is_orther_city=true;
			}
			sites_all=db.sites;
			if(site_id == '') {
				site_id = sites[0].siteid;
			}
			for(var i = 0; i < sites.length; i++) {
				var site = sites[i];
				if(areaMap.containsKey(site.area)) {
					var area = {};
					area.key = site.area;
					area.value = areaMap.get(site.area) + getSiteStr(site);
					areaMap.replaceByKey(site.area,area);
				}else {
					areaMap.put(site.area,getSiteStr(site));
				}
			}
			var areaTitles = "";
			for(var i = 0; i < areaMap.keys().length; i++) {
				areaTitles += '<li id="' + areaMap.keys()[i] + '" onclick="areaSelected(\'dot_query_add\',\'' + areaMap.keys()[i] +'\',\'' +areaMap+ '\');">' + areaMap.keys()[i] + '</li>';
			}
			$("#siteSelect ul").html('');
			$("#dot_query_add").html('');
			$("#siteSelect ul").html(areaTitles);
			$("#siteSelect ul li").eq(0).click();

			if(type=="offsite"){
				for(var i = 0; i < areaMap.keys().length; i++) {
					var mySiteStr = areaMap.get(areaMap.keys()[i]);
					if(mySiteStr.indexOf(return_siteid) > 0) {
						//console.log(areaMap.keys()[i]);
						$("#"+areaMap.keys()[i]).click();
						$("#"+return_siteid).click();
					}
				}
			}else{
				for(var i = 0; i < areaMap.keys().length; i++) {
					var mySiteStr = areaMap.get(areaMap.keys()[i]);
					if(mySiteStr.indexOf(site_id) > 0) {
						//console.log(areaMap.keys()[i]);
						$("#"+areaMap.keys()[i]).click();
						$("#"+site_id).click();
					}
				}
			}

			if(backFunc){
				backFunc();
			}
			change_turn_site();//取车网点弹出框
		}else {
			
		}
	});
}

function getSiteStr(site) {
	var siteStr = '<li area="'+ site.area_id + '" site_id="' + site.siteid + '" id="' + site.siteid + '">' + site.name + '</li>';
	if(site.icon_tags && site.icon_tags.length > 0) {
		for(var i = 0; i < site.icon_tags.length; i++) {
			if(site.icon_tags[i] == '品牌') {
				siteStr +='<img style="vertical-align: middle;padding-left: 3px;" src="'+static_webserver+'/images/outletsMaps/brand.png">';
			}else if(site.icon_tags[i] == '24h') {
				siteStr +='<img style="vertical-align: middle;padding-left: 3px;" src="'+static_webserver+'/images/outletsMaps/24h.png">';
			}else if(site.icon_tags[i] == '充电桩') {
				siteStr +='<img style="vertical-align: middle;padding-left: 3px;" src="'+static_webserver+'/images/outletsMaps/lightning.png">';
			}else if(site.icon_tags[i] == '机场'){
				siteStr +='<img style="vertical-align: middle;padding-left: 3px;" src="'+static_webserver+'/images/outletsMaps/plane.png">';	
			}else if(site.icon_tags[i] == '火车站'){
				siteStr +='<img style="vertical-align: middle;padding-left: 3px;" src="'+static_webserver+'/images/outletsMaps/tail.png">';
			}
			/*if(site.tags[i] == '充电桩') {
				siteStr = siteStr + '<strong>充电桩</strong>';
			}else if(site.tags[i] == '24h') {
				siteStr = siteStr + '<span>24h</span>';
			}else if(site.tags[i] == '品质') {
				siteStr = siteStr + '<b>品质</b>';
			}*/
		}
	}
	siteStr = siteStr + '<p class="address"><span>' + site.address + '</span><span>营业时间:' +  site.from_time + '--' + site.to_time + '</span></p>';
	siteStr += "<br/>";
	return siteStr;
}

function areaSelected(id,key,map) {
	$("#"+id).empty();
	$("#"+id).html(areaMap.get(key));
	console.log("#"+id+' li[site_id='+ $('.site_change').attr('site_id') +']');
	$("#"+id+' li[site_id='+ $('.site_change').attr('site_id') +']').css('color','#f23732')
	change_turn_site();//取车网点弹出框
}

function change_turn_site_obj(select_siteid){
	return_siteid=select_siteid;
	for(var s=0;s<sites_all.length;s++){
		if(sites_all[s].siteid==select_siteid){
			return_location=sites_all[s].location;
			songchesm_return_location=sites_all[s].location;
			
			/**************更改还车网点后重新初始化地图弹出框 start***************/
			var mapbhc=null;
	        var marker1_hc, infoWindow1_hc;
	        $("#map_alert_hc").css("display","none");
			$("#quchesm").click(function (){//地图弹出框---上门取车--还车
				var s=$("#quchesm").is(':checked');
				if(s){//选中的处理
					$("#site_address_hc").css("cursor","pointer");
					if($("#suggestId_hc").val()!=null&&$("#suggestId_hc").val()!=""){
						$("#suggestId_hc").val("");
					}
					$("#ditu_line").show();
					$("#ditu_box_hc").show();
			         
					if(!mapbhc) {
						mapbhc = new BMap.Map("allmaphc");// 创建Map实例
			            console.log("BMap.new_hc");
			    		if(songchesm_return_location){
			    			searchSiteWithSomeKilometers(songchesm_return_location.lng,songchesm_return_location.lat,10,mapbhc);
			    			mapbhc.centerAndZoom(new BMap.Point(songchesm_return_location.lng,songchesm_return_location.lat), 12);// 创建标注
			    		} else {
			    			mapbhc.centerAndZoom(city_name);
			    		}
			    		
			    		mapbhc.addControl(new BMap.MapTypeControl());  
			    		mapbhc.setCurrentCity(city_name);          
			    		mapbhc.enableScrollWheelZoom(true);          
			            
			    		// 先找到网点10公里范围内的所有网点，并且在地图上标注。
			    		function searchSiteWithSomeKilometers(lng,lat,threshold,mapbhc){
			    			mapbhc.clearOverlays();
			    			//画个半径为10公里的圆
			    			var circle = new BMap.Circle(new BMap.Point(lng, lat),parseInt(threshold)*1000,{strokeColor:"blue", strokeWeight:2, strokeOpacity:0.5});
			    			circle.setFillColor("yellow");
			    			circle.setFillOpacity(0.2);
			    			mapbhc.addOverlay(circle);
			    			/*//画个半径为5公里的圆
			    			var circle2 = new BMap.Circle(new BMap.Point(lng, lat),5*1000,{strokeColor:"blue", strokeWeight:2, strokeOpacity:0.5});
			    			circle2.setFillColor("yellow");
			    			circle2.setFillOpacity(0.2);
			    			mapbhc.addOverlay(circle2);*/
			    			var point = new BMap.Point(lng, lat);
			    			//var myIcon = new BMap.Icon(static_webserver+"/images/order/map_take_icon.png", new BMap.Size(23,25));
			    			var marker = new BMap.Marker(point);  // 创建标注
			    			marker.setZIndex(zIndex=10002);
			    			marker.setTop(true);
			    			//marker.setAnimation(BMAP_ANIMATION_BOUNCE);//跳动
			    			mapbhc.addOverlay(marker);               // 将标注添加到地图中
			    			marker.addEventListener("dragend", function(e){
			    				mapbhc.clearOverlays();
			    				searchSiteWithSomeKilometers(e.point.lng,e.point.lat,threshold,mapbhc)
			    			});
			    		}
			    		
			    		// 百度地图API功能 -------------------- start-----------
			    		var ac = new BMap.Autocomplete({"input" : "suggestId_hc","location" : mapbhc	});//建立一个自动完成的对象
			    		//ac.setInputValue($("#suggestId").val());

			    		ac.addEventListener("onhighlight", function(e) {//鼠标放在下拉列表上的事件
			    		var str = "";
			    			var _value = e.fromitem.value;
			    			var value = "";
			    			if (e.fromitem.index > -1) {
			    				value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
			    			}    
			    			str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
			    			value = "";
			    			if (e.toitem.index > -1) {
			    				_value = e.toitem.value;
			    				value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
			    			}    
			    			str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
			    			//$("#searchResultPanel").innerHTML = str;//生成下拉框
			    		}); 

			    		var myValue;
			    		ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
			    		var _value = e.item.value;
			    			myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
			    			setPlace();
			    		});

			    		function setPlace(){
			    			mapbhc.clearOverlays();    //清除地图上所有覆盖物
			    			function myFun(){
			    				var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果{lng:"",lat:""}
			    				
			    				searchSiteWithSomeKilometers(songchesm_return_location.lng,songchesm_return_location.lat,12,mapbhc);
			    				var pointA = new BMap.Point(songchesm_return_location.lng,songchesm_return_location.lat);  // 创建点坐标A--车辆网点坐标
			    				var pointB = new BMap.Point(pp.lng,pp.lat);  // 创建点坐标B--送车上门坐标
			    				
			    				var interval=(mapbhc.getDistance(pointA,pointB)/1000).toFixed(2);
			    				if(interval>10){
			    					$('#map_alert_hc').css('display','block');
			    					setTimeout("$('#map_alert_hc').css('display','none')",2000);
			    					return;
			    				}else{
			    					var myIcon = new BMap.Icon(static_webserver+"/images/order/map_take_icon.png", new BMap.Size(23,25));
			    					mapbhc.addOverlay(new BMap.Marker(pp,{icon:myIcon}));//添加标注
			    					return_location=pp;
			    					return_service_mile=interval;
			    					$("#site_address_hc").val($("#suggestId_hc").val());
			    					console.log($("#suggestId_hc").val());
			    					change_site_init();
			    					$('#ditu_line').hide();
			    			        $('#ditu_box_hc').hide();
			    				}
			    				//mapbhc.centerAndZoom(pp, 12);//设置地图中心
			    			}
			    			var local = new BMap.LocalSearch(mapbhc, {//智能搜索
			    				onSearchComplete: myFun
			    			});
			    			local.search(myValue);
			    		}
			    		// 百度地图API功能 -------------------- end -----------
			        }
				}else{//未选中的处理
					return_service="";
					return_location=songchesm_return_location;
					return_service_mile="";
					if(return_address!=null&&return_address!=""&&return_address!=undefined){
						$("#site_address_hc").val(return_address);
					}else if(site_address!=null&&site_address!=""&&site_address!=undefined){
						$("#site_address_hc").val(site_address);
					}
					$("#site_address_hc").css("cursor","");
					change_site_init();
				}
			});
			/**************更改还车网点后重新初始化地图弹出框 end***************/
			return_address=sites_all[s].address;
			$("#site_address_hc").val(sites_all[s].address);//还车地址
			return_address=sites_all[s].address;
		}
	}
}
