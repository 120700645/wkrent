function getSites(backfun) {
	$("#siteSelect ul").html('');
	$("#dot_query_add").html('');
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
			var sites = db.sites;
			if(sites.length > 0) {
				if(!site_id){
					site_id = sites[0].siteid;
				}
				var TRAINSTATION_AIRPORT_STR = "";
				for(var i = 0; i < sites.length; i++) {
					var site = sites[i];
					if(site.siteid == site_id) {
						selectedFlag = true;
					}
					if(areaMap.containsKey(site.area)) {
						var area = {};
						area.key = site.area;
						area.value = areaMap.get(site.area) + getSiteStr(site);
						areaMap.replaceByKey(site.area,area);
					}else {
						areaMap.put(site.area,getSiteStr(site));
					}
					
					if(site.category == 'TRAINSTATION' || site.category == 'AIRPORT') {
						TRAINSTATION_AIRPORT_STR += getSiteStr(site);
					}
				}
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
				areaTitles = '<ul>' + areaTitles + '</ul>' + initAllSites();
				$("#siteSelect").empty();
				$("#siteSelect").html(areaTitles);
				if(!sitename) {
					for(var i = 0; i < areaMap.keys().length; i++) {
						var mySiteStr = areaMap.get(areaMap.keys()[i]);
						if(site_id && mySiteStr.indexOf(site_id) > 0) {
							$("#"+areaMap.keys()[i]).click();
							$("#"+site_id).click();
							if(site_id) {						
								$("."+site_id).click();
							}
						}
					}
				}else {
					 $('#site_input').val(sitename);
					 $('#pinck_up_dot>ul li').html(sitename);
				}
			} else {
				$("#siteSelect").empty();
			}
			
		}else {
			
		}
		if (typeof backfun === "function"){
			backfun(); 
	    }
	});
}

function getSiteStr(site) {
	var siteStr = '<li area="'+ site.area_id + '" site_id="' + site.siteid + '" id="' + site.siteid 
				+ '" lat="' + site.location.lat + '" lng="' + site.location.lng
				+ '" class="' + site.siteid + '">' + site.name + '</li>';
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
			}else if(site.tags[i] == '品质服务') {
				siteStr = siteStr + '<b>品质</b>';
			}*/
		}
	}
	siteStr = siteStr + '<p class="address"><span>' + site.address + '</span><span>营业时间:' + 
		site.from_time + '—' + site.to_time + '</span></p>';
	return siteStr;
}


//区域点击事件；
function areaSelected(id,key,map,$this,e) {
	$(".dot_query_add").hide();
	$("#"+id).show();

    $('.dot_query ul li').each(function(i) {
        $(this).css({
            'background': '',
            'color': ''
        });
    });
    $($this).css({
        'background': '#f23732',
        'color' '#fff':
    });
    e = e || window.event;
    /*该方法将停止事件的传播，阻止它被分派到其他 Document 节点。*/
    e.stopPropagation();
}

function initAllSites() {
	var sitesStr = '';
	for(var i = 0; i < areaMap.keys().length; i++) {
		sitesStr += '<ol class="dot_query_add" id="dot_query_add_' + areaMap.keys()[i] + '">';
		sitesStr += areaMap.get(areaMap.keys()[i]);
		sitesStr += '</ol>';
	}
	return sitesStr;
}

//百度地图查找
function initMap() {
	var map = new BMap.Map("l-map");
    map.centerAndZoom("北京", 14);//初始化地图,设置城市和地图级别。
//    map.centerAndZoom(sessionStorage.getItem("city_name"), 14);//初始化地图,设置城市和地图级别。
    var ac = new BMap.Autocomplete({//建立一个自动完成的对象
    	"input": "suggestId"
        ,"location": map
    });
    ac.addEventListener("onhighlight", function (e) {  //鼠标放在下拉列表上的事件
    	var str = "";
    	var _value = e.fromitem.value;
    	var value = "";
        if (e.fromitem.index > -1) {
        	value = _value.province + _value.city + _value.district + _value.street + _value.business;
        }
        str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
        value = "";
        if (e.toitem.index > -1) {
        	_value = e.toitem.value;
            value = _value.province + _value.city + _value.district + _value.street + _value.business;
        }
        str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
        //G("searchResultPanel").innerHTML = str;
    });
    
    ac.addEventListener("onconfirm", function (e) {//鼠标点击下拉列表后的事件
        var _value = e.item.value;
        searchByStationName(_value.business);

    });
    
    $("#l-map").hide();
    
    $("#clear_hitstroy").click(function () {
    	localStorage.removeItem("json_df");
        sessionStorage.removeItem("site_name");
        $(".histroy_body").empty(".histroy_position");
    });
    
  //历史地点记录
    function initposition() {
    	var json = localStorage.getItem("json_df");
        if (json != null) {
        	var json_df = JSON.parse(json);
            var str = "";
            for (var i = json_df.length-1; 0 <= i; i--) {
                if (json_df[i] != null) {
                    str += "<div  class='history-position' lng='" + json_df[i].lng_g + "' lat='" + json_df[i].lat_t + "' >" + json_df[i].name + "</div>";
                }
            }
            $(".histroy_body").append(str);
        }
    }
    
    var localSearch = new BMap.LocalSearch(map);
    localSearch.enableAutoViewport();
    function searchByStationName(val) {
    	map.clearOverlays();//清空原来的标注
        var keyword = val;
        var thisCityName = sessionStorage.getItem("city_name");
        if(!thisCityName) {
        	thisCityName = "北京市";
        }
//        localSearch.setLocation(thisCityName);
//        localSearch.search({"forceLocal":true,"customData":keyword});
        localSearch.search(keyword);
        localSearch.setSearchCompleteCallback(function (searchResult) {
        	var poi = searchResult.getPoi(0);
        	if (poi != null) {
        		coordinates(keyword, poi.point.lng, poi.point.lat);
        	} else {
        		alert("查询不到该地址，换个地址试试吧");
        	}
        });
        localSearch.setResultsHtmlSetCallback(function () {
        });
    }
    
    function coordinates(val, lng, lat) {
        var sitename = val;
        if (lng != null && lat != null) {
            sessionStorage.setItem("lng", lng);
            sessionStorage.setItem("lat", lat);  
        }
        sessionStorage.setItem("site_name", sitename);
        sessionStorage.removeItem("site_id");
        $('#pinck_up_dot ul[name=dot] li').html(sitename);
        $('#site_input').val(sitename);
        $(".dot_query").hide();
        history_postion(val, lng, lat);
    }
    
    function history_postion(val, lng, lat) {
        var json_df = localStorage.getItem("json_df");
        var json_data = {name: val, lng_g: lng, lat_t: lat};
        if (json_df == null) {
            var arr = new Array();
            arr.push(json_data);
            localStorage.setItem("json_df", JSON.stringify(arr));
        }else{
            var json = JSON.parse(json_df);
            json.push(json_data);
            json.removeRepeatAttr();
            localStorage.setItem("json_df", JSON.stringify(json));
        }
    }
    
  //去带数组内重复数据
    Array.prototype.removeRepeatAttr = function () {
    	var tmp = {}, a = this;
        for (var i = a.length-1; i>=0; i--) {
            if (!tmp[a[i].name]) {
                tmp[a[i].name] = !0;
            } else {
                a.splice(i, 1);
            }
        };
    };
}