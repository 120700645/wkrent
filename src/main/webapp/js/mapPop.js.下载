$(function () {
	var mapb, marker1, infoWindow1;
	$(".span-switch i").click(function () {
       if($(this).hasClass("switch-default")) {
           $(this).removeClass("switch-default").addClass("switch-active");
       } else {
           $(this).removeClass("switch-active").addClass("switch-default");
           if(mapb){
        	   mapb.clearOverlays();//关闭时清除地图上的标注 
        	   mapb=null;
           }
           if(mapbhc){
        	   mapbhc.clearOverlays();
        	   mapbhc=null;
           }
       }
	});
	//提示语隐藏
    $("#map_alert").css("display","none");
    $("#map_alert_songche_small").css("display","none");
    $("#songchesm").click(function (){//地图弹出框---送车上门
    	var s=$("#songchesm").hasClass("switch-active");
		if(s){//选中的处理
			$("#site_address").css("cursor","pointer");
			if($("#suggestId").val()!=null&&$("#suggestId").val()!=""){
				$("#suggestId").val("");
			}
			$("#ditu_line").show();
			$("#ditu_box").show();
	         
			if(!mapb) {
	            // 百度地图API功能
	            mapb = new BMap.Map("allmap");// 创建Map实例
	    		if(songchesm_site_location){
	    			searchSiteWithSomeKilometers(songchesm_site_location.lng,songchesm_site_location.lat,10,mapb);
	    			mapb.centerAndZoom(new BMap.Point(songchesm_site_location.lng,songchesm_site_location.lat), 12);// 创建标注
	    		} else {
	    			mapb.centerAndZoom(city_name);
	    		}
	    		
	    		mapb.addControl(new BMap.MapTypeControl());   //添加地图类型控件
	    		mapb.setCurrentCity(city_name);          // 设置地图显示的城市 此项是必须设置的
	    		mapb.enableScrollWheelZoom(true);          // 开启鼠标滚轮缩放
	    		var myPoint;
	    		var geoc = new BMap.Geocoder();
	    		mapb.addEventListener("click", function(e){
	    			console.log(e.point.lng + ", " + e.point.lat);
	    			geoc.getLocation(e.point, function(rs){
	    				var addComp = rs.addressComponents;
	    				if(addComp.street == "" || addComp.streetNumber == ""){
	    					$('#map_alert_songche_small').css('display','block');
	    					setTimeout("$('#map_alert_songche_small').css('display','none')",2000);
	    					return;
	    				}
	    				
	    				myPoint = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
	    				console.log(myPoint);
		    			setPlaceByPoint();
	    			}); 
	    		});
	            
	    		// 先找到网点10公里范围内的所有网点，并且在地图上标注。
	    		function searchSiteWithSomeKilometers(lng,lat,threshold,mapb){
	    			mapb.clearOverlays();
	    			//画个半径为10公里的圆
	    			var circle = new BMap.Circle(new BMap.Point(lng, lat),parseInt(threshold)*1000,{strokeColor:"blue", strokeWeight:2, strokeOpacity:0.5});
	    			circle.setFillColor("yellow");
	    			circle.setFillOpacity(0.2);
	    			mapb.addOverlay(circle);
	    			/*//画个半径为5公里的圆
	    			var circle2 = new BMap.Circle(new BMap.Point(lng, lat),5*1000,{strokeColor:"blue", strokeWeight:2, strokeOpacity:0.5});
	    			circle2.setFillColor("yellow");
	    			circle2.setFillOpacity(0.2);
	    			mapb.addOverlay(circle2);*/
	    			var point = new BMap.Point(lng, lat);
	    			var marker = new BMap.Marker(point);  // 创建标注
	    			marker.setZIndex(zIndex=10002);
	    			marker.setTop(true);
	    			marker.setAnimation(BMAP_ANIMATION_BOUNCE);//跳动
	    			mapb.addOverlay(marker);               // 将标注添加到地图中
	    			marker.addEventListener("dragend", function(e){
	    				mapb.clearOverlays();
	    				searchSiteWithSomeKilometers(e.point.lng,e.point.lat,threshold,mapb)
	    			});
	    		}
	    		
	    		// 百度地图API功能 -------------------- start-----------
	    		var ac = new BMap.Autocomplete({"input" : "suggestId","location" : mapb	});//建立一个自动完成的对象

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
	    		}); 

	    		var myValue;
	    		ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
	    		var _value = e.item.value;
	    			myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	    			setPlace();
	    		});

	    		function setPlace(){
	    			mapb.clearOverlays();    //清除地图上所有覆盖物
	    			function myFun(){
	    				var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果{lng:"",lat:""}
	    				
	    				searchSiteWithSomeKilometers(songchesm_site_location.lng,songchesm_site_location.lat,12,mapb);
	    				var pointA = new BMap.Point(songchesm_site_location.lng,songchesm_site_location.lat);  // 创建点坐标A--车辆网点坐标
	    				var pointB = new BMap.Point(pp.lng,pp.lat);  // 创建点坐标B--送车上门坐标
	    				
	    				var interval=(mapb.getDistance(pointA,pointB)/1000).toFixed(2);
	    				if(interval>10){
	    					$('#map_alert').css('display','block');
	    					setTimeout("$('#map_alert').css('display','none')",2000);
	    					return;
	    				}else{
	    					var myIcon = new BMap.Icon(static_webserver+"/images/order/map_send_icon.png", new BMap.Size(23,25));
	    					mapb.addOverlay(new BMap.Marker(pp,{icon:myIcon}));//添加标注
	    					site_location=pp;
	    					send_service_mile=interval;
	    					$("#site_address").val($("#suggestId").val());
	    					console.log("send_service_mile:"+interval);
	    					change_site_init();
	    					$('#ditu_line').hide();
	    			        $('#ditu_box').hide();
	    					$('.tangram-suggestion-main').hide();
	    				}
	    				
	    			}
	    			var local = new BMap.LocalSearch(mapb, {//智能搜索
	    			  onSearchComplete: myFun
	    			});
	    			local.search(myValue);
	    		}
	    		
	    		function setPlaceByPoint(){
	    			mapb.clearOverlays();    //清除地图上所有覆盖物
	    			function myFun(){
	    				var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果{lng:"",lat:""}
	    				console.log(local.getResults().getPoi(0));
	    				
	    				searchSiteWithSomeKilometers(songchesm_site_location.lng,songchesm_site_location.lat,12,mapb);
	    				var pointA = new BMap.Point(songchesm_site_location.lng,songchesm_site_location.lat);  // 创建点坐标A--车辆网点坐标
	    				var pointB = new BMap.Point(pp.lng,pp.lat);  // 创建点坐标B--送车上门坐标
	    				
	    				var interval=(mapb.getDistance(pointA,pointB)/1000).toFixed(2);
	    				if(interval>10){
	    					$('#map_alert').css('display','block');
	    					setTimeout("$('#map_alert').css('display','none')",2000);
	    					return;
	    				}else{
	    					var myIcon = new BMap.Icon(static_webserver+"/images/order/map_send_icon.png", new BMap.Size(23,25));
	    					mapb.addOverlay(new BMap.Marker(pp,{icon:myIcon}));//添加标注
	    					site_location=pp;
	    					send_service_mile=interval;
	    					$("#site_address").val(local.getResults().getPoi(0).address);
	    					console.log("send_service_mile:"+interval);
	    					change_site_init();
	    					$('#ditu_line').hide();
	    			        $('#ditu_box').hide();
	    			        $('.tangram-suggestion-main').hide();
	    				}
	    				
	    			}
	    			var local = new BMap.LocalSearch(mapb, {//智能搜索
	    			  onSearchComplete: myFun
	    			});
	    			local.search(myPoint);
	    		}
	    		// 百度地图API功能 -------------------- end -----------
	        }
		}else{//未选中的处理
			send_service="";
			site_location=songchesm_site_location;
			send_service_mile="";
			if(site_address!=null&&site_address!=""&&site_address!=undefined){
				$("#site_address").val(site_address);
			}
			$("#site_address").css("cursor","");
			change_site_init();
		}
		if($("#suggestId").val()==null||$("#suggestId").val()==""){
			$("#suggestId").next().hide();
		}
	});
    
    $("#site_address").click(function (){//地图弹出框--送车上门---input
    	var s=$("#songchesm").hasClass("switch-active");
		if(s){//打开上门服务则可以点击input打开地图弹出框
			$("#ditu_line").show();
			$("#ditu_box").show();
	         
			if(!mapb) {
	            // 百度地图API功能
	            mapb = new BMap.Map("allmap");// 创建Map实例
	            console.log("BMap.new");
	    		if(songchesm_site_location){
	    			searchSiteWithSomeKilometers(songchesm_site_location.lng,songchesm_site_location.lat,10,mapb);
	    			mapb.centerAndZoom(new BMap.Point(songchesm_site_location.lng,songchesm_site_location.lat), 12);// 创建标注
	    		} else {
	    			mapb.centerAndZoom(city_name);
	    		}
	    		
	    		mapb.addControl(new BMap.MapTypeControl());   //添加地图类型控件
	    		mapb.setCurrentCity(city_name);          // 设置地图显示的城市 此项是必须设置的
	    		mapb.enableScrollWheelZoom(true);          // 开启鼠标滚轮缩放
	            
	    		// 先找到网点10公里范围内的所有网点，并且在地图上标注。
	    		function searchSiteWithSomeKilometers(lng,lat,threshold,mapb){
	    			mapb.clearOverlays();
	    			//画个半径为10公里的圆
	    			var circle = new BMap.Circle(new BMap.Point(lng, lat),parseInt(threshold)*1000,{strokeColor:"blue", strokeWeight:2, strokeOpacity:0.5});
	    			circle.setFillColor("yellow");
	    			circle.setFillOpacity(0.2);
	    			mapb.addOverlay(circle);
	    			/*//画个半径为5公里的圆
	    			var circle2 = new BMap.Circle(new BMap.Point(lng, lat),5*1000,{strokeColor:"blue", strokeWeight:2, strokeOpacity:0.5});
	    			circle2.setFillColor("yellow");
	    			circle2.setFillOpacity(0.2);
	    			mapb.addOverlay(circle2);*/
	    			var point = new BMap.Point(lng, lat);
	    			var marker = new BMap.Marker(point);
	    			marker.setZIndex(zIndex=10002);
	    			marker.setTop(true);
	    			marker.setAnimation(BMAP_ANIMATION_BOUNCE);//跳动
	    			mapb.addOverlay(marker);               // 将标注添加到地图中
	    			marker.addEventListener("dragend", function(e){
	    				mapb.clearOverlays();
	    				searchSiteWithSomeKilometers(e.point.lng,e.point.lat,threshold,mapb)
	    			});
	    		}
	    		
	    		// 百度地图API功能 -------------------- start-----------
	    		var ac = new BMap.Autocomplete({"input" : "suggestId","location" : mapb	});//建立一个自动完成的对象

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
	    		}); 

	    		var myValue;
	    		ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
	    		var _value = e.item.value;
	    			myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	    			setPlace();
	    		});

	    		function setPlace(){
	    			mapb.clearOverlays();    //清除地图上所有覆盖物
	    			function myFun(){
	    				var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果{lng:"",lat:""}
	    				console.log(local.getResults().getPoi(0));
	    				
	    				searchSiteWithSomeKilometers(songchesm_site_location.lng,songchesm_site_location.lat,12,mapb);
	    				var pointA = new BMap.Point(songchesm_site_location.lng,songchesm_site_location.lat);  // 创建点坐标A--车辆网点坐标
	    				var pointB = new BMap.Point(pp.lng,pp.lat);  // 创建点坐标B--送车上门坐标
	    				var interval=(mapb.getDistance(pointA,pointB)/1000).toFixed(2);//获取两点距离,保留小数点后两位
	    				if(interval>10){
	    					$('#map_alert').css('display','block');
	    					setTimeout("$('#map_alert').css('display','none')",2000);
	    					return;
	    				}else{
	    					var myIcon = new BMap.Icon(static_webserver+"/images/order/map_send_icon.png", new BMap.Size(23,25));
	    					mapb.addOverlay(new BMap.Marker(pp,{icon:myIcon}));//添加标注
	    					site_location=pp;
	    					send_service_mile=interval;
	    					$("#site_address").val($("#suggestId").val());
	    					change_site_init();
	    					$('#ditu_line').hide();
	    			        $('#ditu_box').hide();
	    			        $('.tangram-suggestion-main').hide();
	    				}
	    			}
	    			var local = new BMap.LocalSearch(mapb, {//智能搜索
	    			  onSearchComplete: myFun
	    			});
	    			local.search(myValue);
	    		}
	    		// 百度地图API功能 -------------------- end -----------
			}
		}
	});
	        
    $('.theme-popover-mask').click(function(){
        $('#ditu_line').hide();
        $('#ditu_box').hide();
        $('#ditu_box_hc').hide();
        var s=$("#songchesm").hasClass('switch-active');
    	if((send_service_mile==undefined||send_service_mile==""||send_service_mile==null)&&s){
    		$("#songchesm").removeClass("switch-active").addClass("switch-default");
    	}
    	var s1=$("#quchesm").hasClass('switch-active');
    	if((return_service_mile==undefined||return_service_mile==""||return_service_mile==null)&&s1){
    		$("#quchesm").removeClass("switch-active").addClass("switch-default");
    	}
    });
    
    $('#imgid_close').click(function(){
        $('#ditu_line').hide();
        $('#ditu_box').hide();
        var s=$("#songchesm").hasClass('switch-active');
    	if((send_service_mile==undefined||send_service_mile==""||send_service_mile==null)&&s){
    		$("#songchesm").removeClass("switch-active").addClass("switch-default");
    	}
    });
	        
    $('#imgid_close_hc').click(function(){
        $('#ditu_line').hide();
        $('#ditu_box_hc').hide();
        var s1=$("#quchesm").hasClass('switch-active');
    	if((return_service_mile==undefined||return_service_mile==""||return_service_mile==null)&&s1){
    		$("#quchesm").removeClass("switch-active").addClass("switch-default");
    	}
    });
	        
    var mapbhc;
    var marker1_hc, infoWindow1_hc;
    //地图提示语隐藏
    $("#map_alert_hc").css("display","none");
    $("#map_alert_quche_small").css("display","none");
    $("#quchesm").click(function (){//地图弹出框---上门取车--还车
		var s=$("#quchesm").hasClass('switch-active');
		if(s){//选中的处理
			$("#site_address_hc").css("cursor","pointer");
			if($("#suggestId_hc").val()!=null&&$("#suggestId_hc").val()!=""){
				$("#suggestId_hc").val("");
			}
			$("#ditu_line").show();
			$("#ditu_box_hc").show();
	         
			if(!mapbhc) {
				mapbhc = new BMap.Map("allmaphc");// 创建Map实例
	    		if(songchesm_return_location){
	    			searchSiteWithSomeKilometers(songchesm_return_location.lng,songchesm_return_location.lat,10,mapbhc);
	    			mapbhc.centerAndZoom(new BMap.Point(songchesm_return_location.lng,songchesm_return_location.lat), 12);// 创建标注
	    		} else {
	    			mapbhc.centerAndZoom(city_name);
	    		}
	    		
	    		mapbhc.addControl(new BMap.MapTypeControl());
	    		mapbhc.setCurrentCity(city_name);
	    		mapbhc.enableScrollWheelZoom(true);
	    		var myPoint;
	    		var geoc = new BMap.Geocoder();
	    		mapbhc.addEventListener("click", function(e){
	    			console.log(e.point.lng + ", " + e.point.lat);
	    			geoc.getLocation(e.point, function(rs){
	    				var addComp = rs.addressComponents;
	    				if(addComp.street == "" || addComp.streetNumber == ""){
	    					$('#map_alert_quche_small').css('display','block');
	    					setTimeout("$('#map_alert_quche_small').css('display','none')",2000);
	    					return;
	    				}
	    					
	    				myPoint = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
		    			setPlaceByPoint();
	    			}); 
	    		});
	            
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
	    			//var marker = new BMap.Marker(point,{icon:myIcon});  // 创建标注
	    			var marker = new BMap.Marker(point);  // 创建标注
	    			marker.setZIndex(zIndex=10002);
	    			marker.setTop(true);
	    			marker.setAnimation(BMAP_ANIMATION_BOUNCE);//跳动
	    			mapbhc.addOverlay(marker);               // 将标注添加到地图中
	    			marker.addEventListener("dragend", function(e){
	    				mapbhc.clearOverlays();
	    				searchSiteWithSomeKilometers(e.point.lng,e.point.lat,threshold,mapbhc)
	    			});
	    		}
	    		
	    		// 百度地图API功能 -------------------- start-----------
	    		var ac = new BMap.Autocomplete({"input" : "suggestId_hc","location" : mapbhc	});//建立一个自动完成的对象

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
	    				console.log(local.getResults().getPoi(0));
	    				
	    				searchSiteWithSomeKilometers(songchesm_return_location.lng,songchesm_return_location.lat,12,mapbhc);
	    				var pointA = new BMap.Point(songchesm_return_location.lng,songchesm_return_location.lat);  // 创建点坐标A--车辆网点坐标
	    				var pointB = new BMap.Point(pp.lng,pp.lat);  // 创建点坐标B--送车上门坐标
	    				
	    				console.log('从车辆网点到送车上门点的距离是：'
	    						+((mapbhc.getDistance(pointA,pointB)/1000).toFixed(2))+'公里。');  //获取两点距离,保留小数点后两位
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
	    			        $('.tangram-suggestion-main').hide();
	    				}
	    			}
	    			var local = new BMap.LocalSearch(mapbhc, {//智能搜索
	    			  onSearchComplete: myFun
	    			});
	    			local.search(myValue);
	    		}
	    		
	    		function setPlaceByPoint(){
	    			mapbhc.clearOverlays();    //清除地图上所有覆盖物
	    			function myFun(){
	    				var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果{lng:"",lat:""}
	    				console.log(local.getResults().getPoi(0));
	    				
	    				searchSiteWithSomeKilometers(songchesm_return_location.lng,songchesm_return_location.lat,12,mapbhc);
	    				var pointA = new BMap.Point(songchesm_return_location.lng,songchesm_return_location.lat);  // 创建点坐标A--车辆网点坐标
	    				var pointB = new BMap.Point(pp.lng,pp.lat);  // 创建点坐标B--送车上门坐标
	    				
	    				console.log('从车辆网点到送车上门点的距离是：'
	    						+((mapbhc.getDistance(pointA,pointB)/1000).toFixed(2))+'公里。');  //获取两点距离,保留小数点后两位
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
	    					$("#site_address_hc").val(local.getResults().getPoi(0).address);
	    					console.log(local.getResults().getPoi(0).address);
	    					change_site_init();
	    					$('#ditu_line').hide();
	    			        $('#ditu_box_hc').hide();
	    			        $('.tangram-suggestion-main').hide();
	    				}
	    			}
	    			var local = new BMap.LocalSearch(mapbhc, {//智能搜索
	    			  onSearchComplete: myFun
	    			});
	    			local.search(myPoint);
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
		if($("#suggestId_hc").val()==null||$("#suggestId_hc").val()==""){
			$("#suggestId_hc").next().hide();
		}
	});
    
    $("#site_address_hc").click(function (){//地图弹出框---上门取车--input
    	var s=$("#quchesm").hasClass('switch-active');
		if(s){//打开上门服务则可以点击input打开地图弹出框
			$("#ditu_line").show();
			$("#ditu_box_hc").show();
	         
			if(!mapbhc) {
	            // 百度地图API功能
				mapbhc = new BMap.Map("allmaphc");// 创建Map实例
	    		if(songchesm_return_location){
	    			searchSiteWithSomeKilometers(songchesm_return_location.lng,songchesm_return_location.lat,10,mapbhc);
	    			mapbhc.centerAndZoom(new BMap.Point(songchesm_return_location.lng,songchesm_return_location.lat), 12);// 创建标注
	    		} else {
	    			mapbhc.centerAndZoom(city_name);
	    		}
	    		
	    		mapbhc.addControl(new BMap.MapTypeControl());   //添加地图类型控件
	    		mapbhc.setCurrentCity(city_name);          // 设置地图显示的城市 此项是必须设置的
	    		mapbhc.enableScrollWheelZoom(true);          // 开启鼠标滚轮缩放
	            
	    		// 先找到网点10公里范围内的所有网点，并且在地图上标注。
	    		function searchSiteWithSomeKilometers(lng,lat,threshold,mapbhc){
	    			mapbhc.clearOverlays();
	    			//画个半径为10公里的圆
	    			var circle = new BMap.Circle(new BMap.Point(lng, lat),parseInt(threshold)*1000,{strokeColor:"blue", strokeWeight:2, strokeOpacity:0.5});
	    			circle.setFillColor("yellow");
	    			circle.setFillOpacity(0.2);
	    			mapbhc.addOverlay(circle);
	    			var point = new BMap.Point(lng, lat);
	    			//var myIcon = new BMap.Icon(static_webserver+"/images/order/map_take_icon.png", new BMap.Size(23,25));
	    			//var marker = new BMap.Marker(point,{icon:myIcon});  // 创建标注
	    			var marker = new BMap.Marker(point);  // 创建标注
	    			marker.setZIndex(zIndex=10002);
	    			marker.setTop(true);
	    			marker.setAnimation(BMAP_ANIMATION_BOUNCE);//跳动
	    			mapbhc.addOverlay(marker);               // 将标注添加到地图中
	    			marker.addEventListener("dragend", function(e){
	    				mapbhc.clearOverlays();
	    				searchSiteWithSomeKilometers(e.point.lng,e.point.lat,threshold,mapbhc)
	    			});
	    		}
	    		
	    		// 百度地图API功能 -------------------- start-----------
	    		var ac = new BMap.Autocomplete({"input" : "suggestId_hc","location" : mapbhc	});//建立一个自动完成的对象

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
	    		}); 

	    		var myValue;
	    		ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
	    		var _value = e.item.value;
	    			myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
	    			setPlace();
	    		});

	    		function setPlace(){
	    			mapb.clearOverlays();    //清除地图上所有覆盖物
	    			function myFun(){
	    				var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果{lng:"",lat:""}
	    				console.log(local.getResults().getPoi(0));
	    				
	    				searchSiteWithSomeKilometers(songchesm_return_location.lng,songchesm_return_location.lat,12,mapbhc);
	    				var pointA = new BMap.Point(songchesm_return_location.lng,songchesm_return_location.lat);  // 创建点坐标A--车辆网点坐标
	    				var pointB = new BMap.Point(pp.lng,pp.lat);  // 创建点坐标B--送车上门坐标
	    				var interval=(mapbhc.getDistance(pointA,pointB)/1000).toFixed(2);//获取两点距离,保留小数点后两位
	    				if(interval>10){
	    					$('#map_alert_hc').css('display','block');
	    					setTimeout("$('#map_alert_hc').css('display','none')",2000);
	    					return;
	    				}else{
	    					var myIcon = new BMap.Icon(static_webserver+"/images/order/map_take_icon.png", new BMap.Size(23,25));
	    					mapbhc.addOverlay(new BMap.Marker(pp,{icon:myIcon}));//添加标注
	    					site_location=pp;
	    					send_service_mile=interval;
	    					$("#site_address_hc").val($("#suggestId").val());
	    					change_site_init();
	    					$('#ditu_line').hide();
	    			        $('#ditu_box_hc').hide();
	    			        $('.tangram-suggestion-main').hide();
	    				}
	    			}
	    			var local = new BMap.LocalSearch(mapbhc, {//智能搜索
	    				onSearchComplete: myFun
	    			});
	    			local.search(myValue);
	    		}
	    		// 百度地图API功能 -------------------- end -----------
	        }
    	}
	});
});
