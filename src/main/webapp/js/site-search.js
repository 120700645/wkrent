function getSites() {
	$(".area-outlets-map ul").html('');
	$(".outlets-maps-lists").show();
	var params = {};
	var location = {};
	location.lng = sessionStorage.getItem("lng");
	location.lat = sessionStorage.getItem("lat");
	params.city=sessionStorage.getItem("city_name");
	params.location = location;
	params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/site/get_sites';
	connectserver(CONTEXT_PATH+"/common/dopost.html", postDate, function(db) {
		if(db.code == 0) {
			var selectedFlag = false;
			areaMap.clear();
			siteMap.clear();
			var sites = db.sites;
			if(sites.length > 0) {
				/*if(!site_id){
					site_id = sites[0].siteid;
				}*/
				var TRAINSTATION_AIRPORT_STR = "";
				var siteArrTr =[];
				for(var i = 0; i < sites.length; i++) {
					var site = sites[i];
					/*if(site.siteid == site_id) {
						selectedFlag = true;
					}*/
					if(areaMap.containsKey(site.area)) {
						var area = {};
						area.key = site.area;
						area.value = areaMap.get(site.area) + getSiteStr(site,i);
						areaMap.replaceByKey(site.area,area);
						var siteArrt = siteMap.get(site.area);
						siteArrt.push(site);
						siteMap.removeByKey(site.area);
						siteMap.put(site.area,siteArrt);
					}else {
						areaMap.put(site.area,getSiteStr(site,i));
						var siteArr =[];
						siteArr.push(site);
						siteMap.put(site.area,siteArr);
					}
					
					if(site.category == 'TRAINSTATION' || site.category == 'AIRPORT') {
						TRAINSTATION_AIRPORT_STR += getSiteStr(site,i);
						siteArrTr.push(site);
						site_id = site.siteid
						selectedFlag = true;
					}
				}
				siteMap.put('TRAINSTATION_AIRPORT',siteArrTr);
				if(!selectedFlag) {
					site_id = sites[0].siteid;
				}
				var areaTitles = "";
				areaTitles = '<li id="TRAINSTATION_AIRPORT" onclick="areaSelected(\'dot_query_add_TRAINSTATION_AIRPORT\',\'TRAINSTATION_AIRPORT\',\'' + areaMap + '\',this,event);">机场/火车站/汽车站</li>';
				var sitesStr = "";
				for(var i = 0; i < areaMap.keys().length; i++) {
					areaTitles += '<li id="' + areaMap.keys()[i] + '" onclick="areaSelected(\'dot_query_add_' + areaMap.keys()[i] + '\',\''+areaMap.keys()[i]+'\',\'' +areaMap+ '\',this,event);">' + areaMap.keys()[i] + '</li>';
				}
				areaMap.put('TRAINSTATION_AIRPORT', TRAINSTATION_AIRPORT_STR);
				areaTitles = '<ul>' + areaTitles + '</ul>';
				$(".area-outlets-map ul").html('');
				$(".area-outlets-map").find("div").after(areaTitles);
				$(".outlets-lists ul").remove();
				$(".outlets-lists").find("div").after(initAllSites());
				for(var i = 0; i < areaMap.keys().length; i++) {
					var mySiteStr = areaMap.get(areaMap.keys()[i]);
					if(site_id && mySiteStr.indexOf(site_id) > 0) {
						$("#"+areaMap.keys()[i]).click();
					}
				}
				
			} else {
				$(".outlets-maps-lists").hide();
				$(".area-outlets-map").find("div").after('<ul>当前城市暂无网点</ul>');
			}
			
		}else {
			
		}
	});
}

function getSiteStr(site,index) {
  var name = site.name;
  if(name.length > 12){
	  name = name.substring(0,12)+"......";
  }
  var siteStr = '<li>';
  	siteStr +='<div class="map-sign">';
  		siteStr +='<div class="map-informations-title">';
  			siteStr +='<div class="coordinates-wrapper"></div>';
  			siteStr +='<span onclick="" area="'+ site.area_id + '" site_id="' + site.siteid + '" id="' + site.siteid 
  					+ '" lat="' + site.location.lat + '" lng="' + site.location.lng
  					+ '" class="' + site.siteid + '" title="'+site.name+'">'+name+'</span>';
  			siteStr +='<button onclick="searchcarlist(\''+site.siteid+'\')">预订</button>';
  		siteStr +='</div>';
  		siteStr +='<div class="map-informations">';
  			siteStr +='<p>';
	  			if(site.icon_tags && site.icon_tags.length > 0) {
	  				for(var i = 0; i < site.icon_tags.length; i++) {
	  					if(site.icon_tags[i] == '品牌') {
	  						siteStr +='<img src="'+static_webserver+'/images/outletsMaps/brand.png">';
	  					}else if(site.icon_tags[i] == '24h') {
	  						siteStr +='<img src="'+static_webserver+'/images/outletsMaps/24h.png">';
	  					}else if(site.icon_tags[i] == '充电桩') {
	  						siteStr +='<img src="'+static_webserver+'/images/outletsMaps/lightning.png">';
	  					}
	  				}
	  			}
	  			if(site.category == 'TRAINSTATION'){
	  				siteStr +='<img src="'+static_webserver+'/images/outletsMaps/tail.png">';
	  			}
	  			if(site.category == 'AIRPORT'){
	  				siteStr +='<img src="'+static_webserver+'/images/outletsMaps/plane.png">';	
	  			}
  			siteStr +='</p>';
  			siteStr +='<p style="color:#6E6E6E;font-size:14px;line-height:30px">' + site.address + '</p>';
  			siteStr +='<p style="color:#6E6E6E;font-size:12px;line-height:30px;margin-top: -6px">营业时间  : '+ site.from_time + '—' + site.to_time + '</p>';
  			siteStr +='<p style="color:#6E6E6E;font-size:12px">联系电话  : '+site.site_phone+'</p>';
  		siteStr +='</div>';
  	siteStr +='</div>';
  	siteStr +='</li>';
	return siteStr;
}


//区域点击事件；
function areaSelected(id,key,map,$this,e) {
	$(".dot_query_add").hide();
	$("#"+id).show();
	showMap(key);
	var siteList= siteMap.get(key);
	$(".outlets-lists-title span").text(siteList.length);
	$("#dot_query_add_"+key+" li").each(function(index,e){
		var i = index+1;
		$(this).find("div").find("div").find("div").text(i);
		$(this).find("div>div>span").attr("onclick","clickSite(" + index + ")");
	});
    $('.area-outlets-map ul li').each(function(i) {
        $(this).css({
            /*'background': '',*/
            'color': '',
            'cursor':'pointer'
        });
    });
    $($this).css({
        /*'background': '#f23732',*/
        'color': '#f23732'
    });
    e = e || window.event;
    e.stopPropagation();
}

function initAllSites() {
	var sitesStr = '';
	for(var i = 0; i < areaMap.keys().length; i++) {
		sitesStr += '<ul class="dot_query_add" id="dot_query_add_' + areaMap.keys()[i] + '">';
		sitesStr += areaMap.get(areaMap.keys()[i]);
		sitesStr += '</ul>';
	}
	return sitesStr;
}


function showMap(key){
	map.clearOverlays();
	markers = [];
	points = [];
	var siteList= siteMap.get(key);
	var y;
	for(var i=0;i<siteList.length;i++){
		var lng = siteList[i].location.lng;
		var lat = siteList[i].location.lat;
		if(i == 0){
			y="y";
			addMarker(new BMap.Point(lng,lat),i,y);// 创建点坐标
		}else{
			y="n";
			addMarker(new BMap.Point(lng,lat),i,y);// 创建点坐标
		}
	}
}
// 编写自定义函数,创建标注
function addMarker(point,i,y){
	  var num = i+1;
	  var myIcon = "";
	  if(num < 40){
		  myIcon = new BMap.Icon(static_webserver+"/images/outletsMaps/map/"+num+".png", new BMap.Size(50,50));
	  }else{
		  myIcon = new BMap.Icon(static_webserver+"/images/outletsMaps/map/39.png", new BMap.Size(50,50));
	  }
	  
	  var marker = new BMap.Marker(point,{icon:myIcon});  // 创建标注
	  markers.push(marker);
	  points.push(point);

	  map.addOverlay(marker);// 将标注添加到地图中
	  if(y == 'y'){
		  marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
		  map.centerAndZoom(point,13);// 初始化地图，设置中心点坐标和地图级别
		  runMarker = marker;
	  }
	  var opts = {type: BMAP_NAVIGATION_CONTROL_SMALL}  //缩放控件
	  map.addControl(new BMap.NavigationControl(opts));
	  map.enableScrollWheelZoom(true);			//允许缩放地图
}
//清除跳动点
function delDong(siteKey,tlat,tlng){
	map.clearOverlays();
	var siteList= siteMap.get(siteKey);
	var y;
	for(var i=0;i<siteList.length;i++){
		var lng = siteList[i].location.lng;
		var lat = siteList[i].location.lat;
		if(lat == tlat && lng == tlng){
			y="y";
			addMarker(new BMap.Point(lng,lat),i,y);
		}else{
			y="n";
			addMarker(new BMap.Point(lng,lat),i,y);// 创建点坐标
		}
	}
}

//点击网点显示对应地图点
function clickSite(index){
	//清除跳动
	runMarker.setAnimation(null);
	//地图中心重新定位
	map.setCenter(points[index]);
	//点击的网点跳动
	markers[index].setAnimation(BMAP_ANIMATION_BOUNCE);
	//重新设置跳动点
	runMarker = markers[index];
}

function cms_news() {
	var params = {};
	params.class_name = '行业资讯';
	params.page = 1;
	params.page_size = 3;
	params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/cms_news/get_list';
	connectserver(CONTEXT_PATH+"/common/dopost.html", postDate, function(db){
		if (db.code == 0) {
			var arrNew = db.rows;
			for(var i=0;i<arrNew.length;i++){
				var li = $(".new-dynamic").find("li:eq("+i+")");
				li.find("a").attr("href",arrNew[i].url);
				li.find("img").attr("src",arrNew[i].pic);
				var title = arrNew[i].title;
				li.find("p:eq(0)").attr("title",title);
				if(title.length > 20){
					li.find("p:eq(0)").text(title.substring(0,20)+"...");
				}else{
					li.find("p:eq(0)").text(title);
				}
				li.find("p:eq(1)").text(arrNew[i].smalltext);
				li.find("p:eq(2)").text(arrNew[i].time);
			}
		}
	});
}
function industry(){
	window.location.href = CONTEXT_PATH +"/industry/index.html";
}
function toMatter(){
	window.location.href = CONTEXT_PATH +"/other/matter.html";
}


