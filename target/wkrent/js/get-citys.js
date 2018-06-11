
function city_detail(backfun) {
	var params = {};
	params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/city/get_cities';
	connectserver(CONTEXT_PATH+"/common/dopost.html", postDate, backfun);
}

// 城市初始化
function getCities(backfun) {
	city_detail(function(db) {
		if (db.code == 0) {

			var cities = db.cfg_citys;
			var hots = db.hot_citys;
			// 按code第一个字母排序
			/*cities.sort(function(a, b) {
				var charA = a.code[0].charCodeAt();
				var charB = b.code[0].charCodeAt();
				return charA - charB;
			});*/

			var strHot = "";

			for (var i = 0; i < hots.length; i++) {
				var gps = JSON.stringify(hots[i].gps);
				var thisGps = hots[i].gps?hots[i].gps:{};
				var citystr = hots[i].city;
				if (citystr.length > 8) {
					strHot += "<span id='hot_" + cities[i].id + "'  title='" + citystr
							+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
							+ "' onclick='changeCity(\"" + citystr + "\","
							+ gps + "," + hots[i].id + ", this)'>"
							+ citystr.substring(0, 8) + ".." + "</span>";
				} else {
					strHot += "<span id='hot_" + cities[i].id + "'   title='" + citystr
					+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
							+ "' onclick='changeCity(\"" + citystr + "\","
							+ gps + "," + hots[i].id + ", this)'>" + citystr
							+ "</span>";
				}
			}
			$("#planHot").append(strHot);

			var strA = "";
			var strB = "";
			var strC = "";
			var strD = "";

			var strE = "";
			var strF = "";
			var strG = "";
			var strH = "";
			var strJ = "";

			var strK = "";
			var strL = "";
			var strM = "";
			var strN = "";
			var strP = "";
			var strQ = "";

			var strR = "";
			var strS = "";
			var strT = "";
			var strW = "";

			var strX = "";
			var strY = "";
			var strZ = "";

			for (var i = 0; i < cities.length; i++) {
				var curChar = cities[i].code[0];
				var gps = JSON.stringify(cities[i].gps);
				var thisGps = cities[i].gps?cities[i].gps:{};
				var citystr = cities[i].city;
				if (curChar == 'A') {
					if (citystr.length > 8) {
						strA += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strA += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'B') {
					if (citystr.length > 8) {
						strB += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strB += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'C') {
					if (citystr.length > 8) {
						strC += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strC += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'D') {
					if (citystr.length > 8) {
						strD += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strD += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'E') {
					if (citystr.length > 8) {
						strE += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strE += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'F') {
					if (citystr.length > 8) {
						strF += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ")'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strF += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ")'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'G') {
					if (citystr.length > 8) {
						strG += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strG += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'H') {
					if (citystr.length > 8) {
						strH += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strH += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'J') {
					if (citystr.length > 8) {
						strJ += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strJ += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'K') {
					if (citystr.length > 8) {
						strK += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strK += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'L') {
					if (citystr.length > 8) {
						strL += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strL += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'M') {
					if (citystr.length > 8) {
						strM += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strM += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'N') {
					if (citystr.length > 8) {
						strN += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strN += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'P') {
					if (citystr.length > 8) {
						strP += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strP += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'Q') {
					if (citystr.length > 8) {
						strQ += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strQ += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'R') {
					if (citystr.length > 8) {
						strR += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strR += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'S') {
					if (citystr.length > 8) {
						strS += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strS += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'T') {
					if (citystr.length > 8) {
						strT += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strT += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'W') {
					if (citystr.length > 8) {
						strW += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strW += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'X') {
					if (citystr.length > 8) {
						strX += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strX += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'Y') {
					if (citystr.length > 8) {
						strY += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strY += "<span id='city_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				} else if (curChar == 'Z') {
					if (citystr.length > 8) {
						strZ += "<span id='history_" + cities[i].id + "'  title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>"
								+ citystr.substring(0, 8) + ".." + "</span>";
					} else {
						strZ += "<span id='history_" + cities[i].id + "' title='" + citystr
								+ "' lat='" + thisGps.lat + "' lng='" + thisGps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\"" + citystr + "\","
								+ gps + "," + cities[i].id + ", this)'>" + citystr
								+ "</span>";
					}
				}
			}

			$("#planA").append(strA);
			$("#planB").append(strB);
			$("#planC").append(strC);
			$("#planD").append(strD);

			$("#planE").append(strE);
			$("#planF").append(strF);
			$("#planG").append(strG);
			$("#planH").append(strH);
			$("#planJ").append(strJ);

			$("#planK").append(strK);
			$("#planL").append(strL);
			$("#planM").append(strM);
			$("#planN").append(strN);
			$("#planP").append(strP);
			$("#planQ").append(strQ);

			$("#planR").append(strR);
			$("#planS").append(strS);
			$("#planT").append(strT);
			$("#planW").append(strW);

			$("#planX").append(strX);
			$("#planY").append(strY);
			$("#planZ").append(strZ);

			var cityHistory = localStorage.getItem("cityHistory");
			if (cityHistory) {
				var past = JSON.parse(cityHistory);
				var strPast = "";
				if (past) {
					for (var i = 0; i < past.length; i++) {
						var gps = JSON.stringify(past[i].gps);
						var thisGps = past[i].gps?past[i].gps:{};
						strPast += "<span id='city_" + past[i].id + "' title='" + past[i].name 
								+ "' lat='" + gps.lat + "' lng='" + gps.lng + "' city_id='" + cities[i].id
								+ "' onclick='changeCity(\""
								+ past[i].name + "\"," + gps + "," + past[i].id
								+ ", this)'>" + past[i].name + "</span>";
					}
					$("#planHistory").append(strPast);
				}
			}
			
			initLocalCity(backfun);
		} else {
		}
	});
}

function changeCity(cityName, gps, city_id, $this, unchangeSiteName,backfun) {
	sessionStorage.removeItem("gps");
	sessionStorage.setItem("gps", JSON.stringify(gps));
	sessionStorage.setItem("city_id", city_id);
	sessionStorage.setItem("city_name", cityName);
	sessionStorage.setItem("lat", gps.lat);
	sessionStorage.setItem("lng", gps.lng);
	if (cityName.length > 10) {
		cityName = cityName.substring(0, 10) + "..";
	}
	$("#pinck_up_list ul[name=dianji]").text("");
	$("#pinck_up_list ul[name=dianji]").text(cityName);
	$('#pinck_up_dot>ul li').html("");

	$('.city_details span').each(function() {
		$(this).removeClass('city_history_span');
	});
	$($this).addClass('city_history_span');
	//首页的取车城市和网点
	$("#fromCityName").val(cityName);
	$("#site_input").val("");

    //增加历史城市
	var historyCity = "<span id='city_" + city_id + "' onclick='changeCity(\""
	+ cityName + "\"," + gps + "," + city_id
	+ ", this)'>" + cityName + "</span>";
    var city ={};
    city.name = cityName;
    city.gps = gps;
    city.id = city_id;
    var cityHistory =localStorage.getItem("cityHistory");
    if(cityHistory != null){
    	var jsonarray = eval('('+cityHistory+')');
    	var notIn = "Y";
    	for(var i=0;i<jsonarray.length;i++){
        	if(jsonarray[i].id == city.id){
        		notIn = "N";
        	}
        }
    	if(notIn == "Y"){
    		$("#planHistory").append(historyCity);
    		jsonarray.push(city);
    	}
    }else{
    	var jsonarray = new Array();
		$("#planHistory").append(historyCity);
    	jsonarray.push(city);
    }
    localStorage.setItem("cityHistory",JSON.stringify(jsonarray));

    if(!unchangeSiteName) {
        sitename = '';
        sessionStorage.removeItem("site_name");
        site_id = "";
    	sessionStorage.removeItem("site_id");
    }
	getSites(backfun);
	$('#popup_pane').hide();
}

function initLocalCity(backfun){
	var localCityId = sessionStorage.getItem("city_id");
	var localCity = sessionStorage.getItem("city_name");
	if(!localCity){//如果没有调接口通过ip获取		
		var params = {};
		params.ip = ip;
		params = JSON.stringify(params);
		var postDate = {};
		postDate.param = params;
		postDate.url = '/browsing/ip_data/search';
		connectserver(CONTEXT_PATH+"/common/dopost.html", postDate, function(db) {
			if (db.code == 0) {
				localCity = db.city;
				if(!localCity) {//如果通过ip获取不到则取北京
					localCity = "北京";
				}
			}
		});
	}
	if(!localCity) {
		localCity = "北京";
	}

	var citieSpans = $(".city_details span");
	if(citieSpans.length > 0){
		var thisCityId = '';
		var thisCityName = '';
		var thisGps = {};
		var $this = '';
		for (var i = 0; i < citieSpans.length; i++) {
			var title = $(citieSpans[i]).attr("title");
			if(title.indexOf(localCity) >= 0||
					localCity.indexOf(title) >= 0	){
				thisCityId = $(citieSpans[i]).attr("city_id");
				thisCityName = title;
				$this = $(citieSpans[i]).get(0);
				thisGps.lat = sessionStorage.getItem("lat")?sessionStorage.getItem("lat"):$(citieSpans[i]).attr("lat");
				thisGps.lng = sessionStorage.getItem("lng")?sessionStorage.getItem("lng"):$(citieSpans[i]).attr("lng");
			}
		}
		changeCity(thisCityName, thisGps, thisCityId, $this, true, backfun);	
	}
	
//	if (typeof backfun === "function"){
//		backfun(); 
//    }
}
