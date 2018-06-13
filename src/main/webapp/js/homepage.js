var isOut = true;
var count = 0;
var changeCItyNameFlag = "from";
var cityInputId = "";
$(function() {
	//头部首页链接显示黑色
	globalBottomOpen();
	//初始化轮播图
	initSwiper();
	$("#global_bottom_open").trigger("click");
	$("#fromCityName").click(function(e) {
		$(this).parent('.city_self_driving').addClass('add-border-style');
		cityListShow("#fromCityName");
		changeCItyNameFlag = "from";
		cityInputId = "#fromCityName";
		count++;
		$(".dot_query").hide();
		e = e || window.event;
		e.stopPropagation();
	})
	$(".city_classify li").click(function(e) {
		var index = $(this).index();
		$(".city_details li").hide();
		$(".city_classify li").css("border-bottom", "1px solid transparent");
		$(this).css("border-bottom", "1px solid #cb2b1f");
		$(".city_details").find("li:eq(" + index + ")").show();
		e = e || window.event;
		e.stopPropagation();
	});
	$(".city_b_c span").click(function() {
		$("#fromCityName").val($(this).html());
		$("#popup_pane").hide();
	});

	$(document).off().on('click', '', function(e) {
		e = e || window.event;
		$('#popup_pane').hide();
		$('.city_self_driving').removeClass('add-border-style');
		$('.contents').hide();
		if (isOut) {
			$('.dot_query').hide();
			$('.yd-still-city').hide();
		}
		$('#pinck_up_list ul[name=dianji]').css('border', '');
		$('#pinck_up_dot ul[name=dot]').css('border', '');
		$('.pinck_up_list_div').css('border', '');
		$('.time-box input').css('border', '');
		$('.time-box').css('border', '');
		$('.arrowClass').removeClass('add-border-style');
		$('.search-nav').find("div:eq(1)").addClass('addborder');
	});

	// 取车网点
	$('.dot_query').find('div').hide();
	$('.dot_query').find('div').eq(0).show();
	$('.dot_query').find('div').eq(1).show();
	$('.query').on('click', 'p', function(e) {
		$('.query p').css('border', 'none');
		$(this).css('border-bottom', '1px solid #d64339');
		$('.dot_query').find('div').hide();
		$('.dot_query').find('div').eq(0).show();
		$('.dot_query').find('div').eq(e.target.attributes.index.value).show();
		e = e || window.event;
		e.stopPropagation();
	})
	$('.dot_query ul').off().on('click', 'li', function(e) {
		e = e || window.event;
		$('.dot_query ul li').each(function(i) {
			$(this).css({
				'background' : '',
				'color' : ''
			});
		})
		$(this).css({
			'background' : '#cb2b1f',
			'color' : '#fff'
		});
	});

	$('.address_query').on('focus', 'input', function() {
		if ($(this).prop('value') == '请输入目的地/位置/关键词') {
			$(this).prop({
				'value' : ''
			})
			$(this).css('border', '1px solid #f23732')
		}
	});

	$('.address_query').on('blur', 'input', function(e) {
		if ($(this).prop('value') == '') {
			$(this).prop({
				'value' : '请输入目的地/位置/关键词'
			})
			$(this).css('border', '');
		}
		e = e || window.event;
		e.stopPropagation();
	});
	$('.address_query').on('click', 'input', function(e) {
		e = e || window.event;
		e.stopPropagation();
	});

	$('.dot_query').hide();
	$('#pinck_up_dot').on('click', 'ul[name=dot]', function(e) {
		$(this).css('border', '1px solid #f23732');
		$('.dot_query').show();

		$('#popup_pane').hide();
		$('.contents').hide();
		$('.price').hide();
		$('#pinck_up_list ul[name=dianji]').css('border', '');
		$('.pinck_up_list_div').css('border', '');
		$('.time-box input').css('border', '');

		$('.popup').show();
		$('.city_liandong').show();
		e = e || window.event;
		e.stopPropagation();
	})
	$('.dot_query').off().on('click', '.dot_query_add li', function(e) {
		$('#pinck_up_dot>ul li').html($(this).html());
		sessionStorage.setItem("site_id", $(this).attr("site_id"));
		site_id = '';
		$('.dot_query_add li').each(function(i) {
			$(this).css({
				'color' : '#60606c'
			});
		});

        var thisClass = $(this).attr("id");
        $(".dot_query").find("." + thisClass).each(function(i) {
            $(this).css({
                'color': '#cb2b1f'
            });
        });
		$(this).css('color', '#cb2b1f');
		$('.dot_query').hide();
	})
	// 热门推荐城市切换
	$('.zc-recommend-carlist').hide();
	$('.zc-recommend-carlist').eq(0).show();
	$('.zc-hot-recommend').off().on('click', 'li', function(e) {
		$('.zc-hot-recommend li').removeClass('switch');
		$(this).addClass('switch');
		var index = $(this).index();
		$('.zc-recommend-carlist').hide();
		$('.zc-recommend-carlist').eq(index).show();
		addSpaceClass(index);
	})

	// 切换租车自驾和异地还车
	$('.search-nav').off().on('click', 'div', function(e) {
		var index = $(this).index();
		$('.search-nav div').removeClass('nav-item-style');
		$(this).addClass('nav-item-style');
		if (index === 0) {
			$('#yd_take_label').hide();
			$('#yd_still_label').hide();
			$('.city_self_driving').show();
			$('.search-nav').find("div:eq(1)").addClass('addborder');
		} else {
			$('#yd_take_label').show();
			$('#yd_still_label').show();
			$('.city_self_driving').hide();
			$('.search-nav').find("div:eq(0)").addClass('addborder');
		}
	})

	// 异地还车取车城市弹框
	$('#yd_take_label').off().on('click', '', function(e) {
		$('.yd-still').hide();
		$('.yd-take').show();
	})

	// 异地还车取车城市弹框
	$('#yd_still_label').off().on('click', '', function(e) {
		$('.yd-take').hide();
		if($('#takeCityName').val() == ''){
			confirm("请先选择取车城市");
			return;
		}
		$('.yd-still').show();
	})
	
	$(".zc-slogan-modular div").find("figure:eq(0)").click(function(){
		window.open("site/country_site.html");
	});
	$(".zc-slogan-modular div").find("figure:eq(1)").click(function(){
		window.open("cartype/search.html");
	});
	$(".zc-slogan-modular div").find("figure:eq(2)").click(function(){
		window.open("other/business_rule.html#rule1");
	});
	
});

//初始化轮播图
function initSwiper(){
	var cityId = 110000;
	if(sessionStorage.getItem("city_id")){
		cityId = sessionStorage.getItem("city_id");
	}
	var params = {};
	var postDate = {};
	params.city_id = cityId;
	params.publish_channel = 'WEBSITE';
	params = JSON.stringify(params);
	postDate.param = params;
	postDate.url = '/activities/ad/banner/get_city_activity';
	connectserver("../common/dopost.html", postDate, function(db) {
		if(db.code == 0) {
			var banners = db.banners;
			if(banners.length > 0){
				for (var i = 0; i < banners.length; i++) {
					$("#swiper_wrapper").append('<a class="swiper-slide swiper-wrapper-common" href="javascript:void(0)" onclick="window.open(\'' + banners[i].url + '\')" style="background-image:url(' + banners[i].pic + ')" ></a>');
				}
				for (var i = 0; i < banners.length; i++) {
					var swiper_pagination_html = '<span class="swiper-pagination-bullet';
					if(i == 0){
						swiper_pagination_html += ' swiper-pagination-bullet-active';
					}
					swiper_pagination_html += '"></span>';
					$("#swiper_pagination").append(swiper_pagination_html);
				}
			}
		    var swiper = new Swiper('.swiper-container', {
		        loop: false,
		        pagination: '.swiper-pagination',
		        paginationClickable: true,
		        autoplay: 5000,
		        autoplayDisableOnInteraction: false
		    });
		    if(banners.length == 1){
		    	swiper.lockSwipes();
		    }
		}else {
			
		}
	});
}

function addSpaceClass(index) {
	var carDetailCenter = $('.zc-recommend-carlist').eq(index).find('.zc-car-detail');
	for (var a = 0; a < carDetailCenter.length; a++) {
		if((a + 1)%3 == '0') {
			$(carDetailCenter).eq(a-1).addClass('zc-car-detail-difference');
		}
	}
}
function globalBottomOpen() {
	$("#global_bottom_open").click(function() {
		$(this).animate({
			left : '-100%'
		}, "slow");
		$("#global_bottom_dock").animate({
			left : '0'
		}, "slow");
	});
	$("#global_bottom_dock a").click(function() {
		$(this).parent().animate({
			left : '-100%'
		}, "slow");
		$("#global_bottom_open").animate({
			left : '-100%'
		}, "slow");
		$("#global_bottom_open").animate({
			left : '0'
		}, "slow");
	});
}
function setDivTab(divname, divcursel) {
	var linkDivLen = $("#city_tab_ul li").length;
	for (var i = 1; i <= linkDivLen; i++) {
		var menuLi = $("#" + (divname + i));
		var menuDivText = $("." + "divText_" + divname + "_" + i);
		if (i == divcursel) {
			menuLi.addClass("city_on");
			menuDivText.show();
		} else {
			menuLi.removeClass("city_on");
			menuDivText.hide();
		}
	}
}
function cityListShow(obj) {
	var left = Number($(".search_wrap").offset().left) + Number(20);
	$("#popup_pane").css({
		"top" : "259px",
		"left" : left
	});
	$("#popup_pane").addClass("city_list_show");
	$("#popup_pane").show();
	$(obj).removeClass("arrowClass");
}
function listNav() {
	$('#demoOne').listnav();
	$('.demo b').click(function(e) {
		e.preventDefault();
	});
}

function getNDaysLater(n) {
	var originalDate = new Date();
	var hourMinStr = '';
	var hour = originalDate.getHours();
	if (hour >= 22) {
		originalDate.setDate(originalDate.getDate() + parseInt(n + 1));
		hour = (parseInt(hour) - 22);
	} else {
		originalDate.setDate(originalDate.getDate() + parseInt(n));
		hour = (parseInt(hour) + 2);
	}
	if (hour < 10) {
		hour = '0' + hour;
	}
	hourMinStr = ' ' + hour + ':00';
	var y = originalDate.getFullYear();
	var m = originalDate.getMonth() + 1;
	if (m < 10) {
		m = "0" + m;
	}
	var d = originalDate.getDate();
	if (d < 10) {
		d = "0" + d;
	}
	return y + "-" + m + "-" + d + hourMinStr;
}

function toSearchLocalCar() {
	if($(".tc-nav-item:eq(0)").hasClass("nav-item-style")){		//同城自驾

	}else{														//异地还车

	}
	window.location.href = url;
}

// 推荐线路选车去玩
function changeTjCity(city) {
	$(".city_details span[title=" + city + "]").click();
	var url = "cartype/search.html";
	if(sessionStorage.getItem("city_id")){
		url = "cartype/search/"+sessionStorage.getItem("city_id")+".html";
		
	}
	location.href = url;
}

//初始化底部城市入口
function initCityIn(){
	var hotCityStr = "";
	$("#planHot span").each(function(){
		hotCityStr += $(this).attr("title") + '_';
	});
	$(".city_alphabet").each(function(){
		var index = $(this).find("p").text().toLowerCase();
		$(this).find("span").each(function(){
			if(hotCityStr.indexOf($(this).attr("title")) >= 0){
				$("#demoOne").append('<li class="ln-'+index+' listNavHide" hot="true"><a href=\'javascript:'+$(this).attr("onclick")+';location.href="cartype/search/'+$(this).attr("city_id")+'.html"\'>'+$(this).attr("title")+'租车</a></li>');
			}else{
				$("#demoOne").append('<li class="ln-'+index+' listNavHide"><a href=\'javascript:'+$(this).attr("onclick")+';location.href="cartype/search/'+$(this).attr("city_id")+'.html"\'>'+$(this).attr("title")+'租车</a></li>');
			}
		});
	});
	listNav();
}

//初始化热门推荐车型
function initRemmends(){
	var params = {};
	var postDate = {};
	params = JSON.stringify(params);
	postDate.param = params;
	postDate.url = '/recommend/api/city';
	connectserver("../common/dopost.html", postDate, function(db) {
		if(db.code == 0) {
			var city = db.city;
			if(city.length == 0)
				return;
			var healhtml = '';
			var bodyHtml = '';
			for (var int = 0; int < city.length; int++) {
				if(int == 0){
					healhtml += '<li class="switch"';
				}else{
					healhtml += '<li';
				}
				healhtml += ' index="'+ int +'" city_id="'+ city[int].city_id +'" city_name="'+ city[int].city_name +'">';
				healhtml += city[int].city_name;
				healhtml += '</li>';
				bodyHtml += '<div class="zc-recommend-carlist">';
				bodyHtml += '</div>';
			}
			$("#recommend_citys").append(healhtml);
			$(".zc-hot-recommend").after(bodyHtml);
			$("#recommend_citys li").click(function(){
				initRecommendDetail($(this).attr("index"),$(this).attr("city_id"),$(this).attr("city_name"));
			});
			$("#recommend_citys li:eq(0)").click();
		}else {
			
		}
	});
}

//通过城市获取对应的热门车型
/*function initRecommendDetail(index,city_id,city_name){
	var carList = $(".zc-recommend-carlist:eq("+index+")");
	if(carList.html().trim() != '')
		return;
	var params = {};
	var postDate = {};
	params.start = from_time;
	params.end = to_time;
	params.city_id = city_id;
	params = JSON.stringify(params);
	
	postDate.param = params;
	postDate.url = '/recommend/api/cartype';
	connectserver("../common/dopost.html", postDate, function(db) {
		if(db.code == 0) {
			var carListHtml = '';
			if(db.carType.length == 0){
				carListHtml += '<img src="'+static_webserver+'/images/index/recommend.jpg">';
			}else{
				var noCarLength = 6 - db.carType.length;
				for (var int = 0; int < db.carType.length; int++) {
					carListHtml += '<div class="zc-car-detail avail-click" city_id="' + city_id + ' "city_name="' + city_name + ' " site_id="' + db.carType[int].site_id + '" brand_name="' + db.carType[int].brand_name + '" series_name="' + db.carType[int].series_name + '" car_type_id="' + db.carType[int].car_type_id + '" >';
						carListHtml += '<div><img img_src="' + static_webserver + '/mages/search/jiazaizhong.png" src="'+ db.carType[int].pic1_URL +'"></div>';
						carListHtml += '<div class="dot_car_list_o_divo">';
							carListHtml += '<h4>' + db.carType[int].series_name + '</h4>';
							carListHtml += '<ol>';
								carListHtml += '<li> ' + db.carType[int].displacement + db.carType[int].transmission_name + '|</li>';
								carListHtml += '<li> ' + db.carType[int].capacity + '座|</li>';
								carListHtml += '<li> ' + db.carType[int].level_name + ' </li>';
							carListHtml += '</ol>';
						carListHtml += '</div>';
						carListHtml += '<div class="dot_car_list_o_divt">';
							carListHtml += '<p>';
								carListHtml += '<span>￥</span><i>' + db.carType[int].avg_price + '</i><em>/日均</em>';
							carListHtml += '</p>';
						carListHtml += '</div>';
					carListHtml += '</div>';
				}
				for (var int = 0; int < noCarLength; int++) {
					carListHtml += '<div class="zc-car-detail">';
						carListHtml += '<div>';
							carListHtml += '<img img_src="' + static_webserver + '/images/search/jiazaizhong.png" src="' + static_webserver + '/images/search/jiazaizhong.png">';
						carListHtml += '</div>';
					carListHtml += '</div>';
				}
			}
			carList.append(carListHtml);
			carList.find(".avail-click").click(function(){
				sessionStorage.setItem("site_id",$(this).attr("site_id"));
				sessionStorage.setItem("city_id",$(this).attr("city_id"));
				sessionStorage.setItem("city_name",$(this).attr("city_name"));
				sessionStorage.setItem("price_index",0);
				sessionStorage.setItem("categories",0);
				sessionStorage.setItem("hot_car_type_id",$(this).attr("car_type_id"));
				location.href = "cartype/search.html";
			});
			addSpaceClass(index);
		}else {
			
		}
	});
}*/
