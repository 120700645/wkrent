
	//初始化页面参数及绑定的事件
	function initParam() {
		//---------------车辆类型筛选条件初始化-----------------------------
	    $('#choice_car figure').click(function() {
	    	//不限
	    	if($(this).find('figcaption').attr("category") == 'deselect'){
	    		clearFigcaption();
	    		$("#choice_car img:eq(0)").attr('src', $("#choice_car img:eq(0)").attr("selected_src"));
	            $("#choice_car figcaption:eq(0)").removeClass("selected").addClass("selected");
	    	}else{//其余类型
	            var selected_src = $(this).find('img').attr('selected_src');
	            var src = $(this).find('img').attr('src');
	            $(this).find('img').attr('src', selected_src);
	            if (src === selected_src) {
	                selected_src = selected_src.replace('_selected','');
	                $(this).find('img').attr('src', selected_src);
	                $(this).find('figcaption').removeClass("selected");
	            } else {
	                $(this).find('figcaption').addClass("selected");
	            }
	            $("#choice_car img:eq(0)").attr('src', $("#choice_car img:eq(0)").attr("selected_src").replace('_selected',''));
	            $("#choice_car figcaption:eq(0)").removeClass("selected");
	            if($('#choice_car figcaption[class=selected]').length == 0){
	            	$('#choice_car figure').eq(0).click();
	            	return;
	    		}
	    	}
	    	if(!isInit){
        		loadingUpShow();
				getCars(type);
        	}
	    })
	    if(categories) {
			var category_arr = categories.split(",");
			for(var i = 0; i < category_arr.length; i++) {
				var index = parseInt(category_arr[i]);
				$('#choice_car figure').eq(index).click();
			}
		}
		//------------------------------------------------------------
	    //---------------车辆品牌筛选条件初始化-----------------------------
	    $('#choice_car td').click(function(){
	    	if($(this).html() == '全部'){
		        $('#choice_car td').removeClass('carmodels-btn-style');
		        $(this).addClass('carmodels-btn-style')
	    	}else{
	    		$('#choice_car td').eq(0).removeClass('carmodels-btn-style');
	    		if($(this).hasClass('carmodels-btn-style')){
	    			$(this).removeClass('carmodels-btn-style');
	    		}else{
	    			 $(this).removeClass('carmodels-btn-style').addClass('carmodels-btn-style');
	    		}
	    		if($('#choice_car td[class=carmodels-btn-style]').length == 0){
	    			$('#choice_car td:eq(0)').click();
	    		}
	    	}
	    	if(!isInit){
        		loadingUpShow();
				getCars(type);
        	}
	    })
		if(brands) {
			var brands_arr = brands.split(",");
			for(var i = 0; i < brands_arr.length; i++) {
				$('#choice_car td[brand=' + brands_arr[i] + ']').click();
			}
		}
		//------------------------------------------------------------
		//---------------车辆价格筛选条件初始化-----------------------------
		var ps = $('#choice_car i');
	    for (var i = 0; i < ps.length; i++) {
	        $(ps).eq(i).click(function() {
	        	var price = $('.dot_car_list_o_left p b');
	        	$('.dot_car_list_o_left i').removeClass('selected');
	        	$(this).addClass('selected');
	        	if($(this).index() == 5){
	        		$(price).eq(4).css("background","url(" + static_webserver + "/images/search/day-price-selected1.jpg)no-repeat center");
	        		price.removeClass('selected');
	        		$(price).eq(5).addClass('selected');
	        	}else{
	        		$(price).eq(4).css("background","url(" + static_webserver + "/images/search/day-price-noselected.jpg)no-repeat center");
		 	        for (var i = 0; i < $(this).index(); i += 1 ) {
			            $(price).eq(i).addClass('selected');
			        }
			        for (var i = $(this).index(); i < $(price).length; i += 1 ) {
			            $(price).eq(i).removeClass('selected');
			            $(price).eq(0).addClass('selected');
			        }
	        	}
	        	if(!isInit){
	        		loadingUpShow();
					getCars(type);
	        	}
	        });
	    }
		if(price_index) {
			$('#choice_car i').eq(parseInt(price_index)).click();
		}
		//------------------------------------------------------------
	    //取还车时间初始化
	    if(!from_time) {
	    	from_time = getNDaysLater(1);
	    }
	    if(!to_time) {
	    	to_time = getNDaysLater(3);
	    }
	    
		setDate("from_time", from_time.substr(0,10));
		setStamp("from_stamp", from_time.substr(11,5));
		setDate("to_time", to_time.substr(0,10));
		setStamp("to_stamp", to_time.substr(11,5));

		getCars(type);
		isInit = false;
	}
//------------------- category start：车辆类型绑定的方法--------------------------------------	
//    var choseCars = $('.choice_car img');
//    function deselectCategories() {
//    	for(var i = 1; i < choseCars.length; i++) {
//			$(choseCars).eq(i).next().hide();
//            $(choseCars).eq(i).parent().css('border', '');
//		}
//		$(choseCars).eq(0).next().show();
//		$(choseCars).eq(0).parent().css('border', '2px solid #f23732');
//    }    
//    function selectCategory(item) {
//		$(choseCars).eq(0).next().hide();
//        $(choseCars).eq(0).parent().css('border', '');
//        
//        if ($(item).children('span').css('display') == 'none') {
//            $(item).children('span').show();
//            $(item).css('border', '2px solid #f23732');
//        }else {
//        	$(item).children('span').hide();
//            $(item).css('border', '');
//        }
//    }
//------------------- category end--------------------------------------
    
    function getNDaysLater(n) {
    	var originalDate = new Date();
    	var hourMinStr = '';
    	var hour = originalDate.getHours();
    	if(hour >= 22) {    		
    		originalDate.setDate(originalDate.getDate() + parseInt(n + 1));
    		hour = (parseInt(hour) - 22);
    	}else {
    		originalDate.setDate(originalDate.getDate() + parseInt(n));
    		hour = (parseInt(hour) + 2);
    	}
    	if(hour < 10) {
    		hour = '0' + hour;
    	}
    	hourMinStr = ' ' + hour + ':00';
    	var y = originalDate.getFullYear();
    	var m = originalDate.getMonth() + 1;
    	if(m < 10) {
    		m = "0" + m;
    	}
    	var d = originalDate.getDate();
    	if(d < 10) {
    		d = "0" + d;
    	}
    	return y + "-" + m + "-" + d + hourMinStr;
    }
$(function() {
    $(document).off().on('click','',function(e){
        e = e || window.event;
        $('#popup_pane').hide();
        $('.contents').hide();
        $('.price').hide();     	
        $('.yd-still-city').hide();
        $('#pinck_up_list ul[name=dianji]').css('border','');
        $('#pinck_up_dot ul[name=dot]').css('border','');
        $('.pinck_up_list_div').css('border','');
        $('.time-box input').css('border','');
        $('#to_stamp').removeClass('add-border-style');
        $('#from_stamp').removeClass('add-border-style');
    });
    $(".lastWeek").click(function(e){
        $(this).prev().trigger("click");
        $(this).parents('.pinck_up_list_div').css('border','1px solid #f23732');
        $('.contents').show();
        e = e || window.event;
        e.stopPropagation();
    });

    $(".city_classify li").click(function(e) {
        var index = $(this).index();
        $(".city_details li").hide();
        $(".city_classify li").css("border-bottom", "1px solid transparent");
        $(this).css("border-bottom", "1px solid #f23732");
        $(".city_details").find("li:eq(" + index + ")").show();
        e = e || window.event;
        e.stopPropagation();
    })
    var pinck_up_list; 
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
                'background': '',
                'color': ''
            });
        })
        $(this).css({
            'background': '#f23732',
            'color': '#fff'
        });
    });    
    $('.address_query, .pinck_up_list_div').on('focus', 'input', function() {
        if ($(this).prop('value') == '请输入目的地/位置/关键词') {
            $(this).prop({
                'value': ''
            })
            $(this).css('border', '1px solid #f23732')
        }
    });
    
    $('.address_query, .pinck_up_list_div').on('blur', 'input', function(e) {
        if ($(this).prop('value') == '') {
            $(this).prop({
                'value': '请输入目的地/位置/关键词'
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
    // 取车城市
    $('#pinck_up_list').on('click', 'ul[name=dianji]', function(e) {
        $('.contents').hide();
        $('.price').hide();       	
        $('.dot_query').hide();
        $('#pinck_up_dot ul[name=dot]').css('border','');
        $('.time-box input').css('border','');
        $('.time-box input').removeClass('add-border-style');
        $('.date-box .pinck_up_list_div').css('border','');
        
        $(this).css('border', '1px solid #f23732');
        $("#popup_pane").css({
            "top": "86px"
        });
        $('#popup_pane').show();
        $('.yd-still-city').hide();
		$('.yd-take').show();
		$(".yd-still-city").css({
	        "top": "86px"
	    });
        e = e || window.event;
        e.stopPropagation();
    })
    $('#pinck_up_dot').on('click', 'ul[name=dot]', function(e) {
        $(this).css('border', '1px solid #f23732');
        $('.dot_query').show();

        $('#popup_pane').hide();
        $('.contents').hide();
        $('.price').hide();
        $('#pinck_up_list ul[name=dianji]').css('border','');
        $('.pinck_up_list_div').css('border','');
        $('.time-box input').css('border','');
        $('.time-box input').removeClass('add-border-style');
        $('.yd-still-city').hide();
		$('.popup').show();
		$('.yd-still').show();
		$(".yd-still-city").css({
	        "top": "86px"
	    });
		e = e || window.event;
        e.stopPropagation();
    })
    $('.dot_query').off().on('click', '.dot_query_add li', function() {
        $('#pinck_up_dot>ul li').html($(this).html());
        sitename = '';
        sessionStorage.removeItem("site_name");
    	sessionStorage.setItem("site_id", $(this).attr("site_id"));
    	if($(this).attr("lat")) {    		
    		sessionStorage.setItem("lat",$(this).attr("lat"));
    	}
    	if($(this).attr("lng")) {
    		sessionStorage.setItem("lng",$(this).attr("lng"));
    	}
    	site_id = $(this).attr("site_id");
        $('.dot_query_add li').each(function(i) {
            $(this).css({
                'color': '#60606c'
            });
        });
        var thisClass = $(this).attr("id");
        $(".dot_query").find("." + thisClass).each(function(i) {
            $(this).css({
                'color': '#f23732'
            });
        });
        $(this).css('color', '#f23732');
        $('.dot_query').hide();
    })
    // ===================================
    function setImgSrc(l) {
        var i = l.getElementsByTagName("img");
        var j = l.parentElement.parentElement.id;
        for (var g = 0; g < i.length; g++) {
            var h = i[g];
            if (h.src == "") {
                var k = h.offsetLeft - l.scrollLeft;
                if (k > -h.clientWidth && k < document.body.clientWidth) {
                    h.src = h.getAttribute("img_src");
                    h.onload = function() {
                        this.style.backgroundImage = "url()";
                        guideImgLoad(this)
                    }
                }
            }
        }
    }
    //图片加载完之前显示替换图片
    function img_src() {
        var img = $('img');
        for (var i = 0; i < img.length; i++) {
            if ($(img).eq(i).attr('src') == '') {
                var img_src = $(img).eq(i).attr('img_src');
                $(img).eq(i).attr('src', img_src)
            }
        }
    }
    img_src();

    $('#dot_map').off().on('click', 'span', function() {
        $('.mcover').hide();
        $('#dot_map').hide();
    })

    $(window).scroll(function() {
        var scrollBottom = document.body.scrollHeight - $(window).scrollTop();
        if ($(window).scrollTop() > 142 && $('.dot_car_list_o').css('height').replace('px','') !== 675) {
            $('.dot_car_list_o_left').eq(0).css({
                position: 'fixed',
                top: 100
            })
            $('.dot_car_list_o_left').eq(1).show();
            $('.dot_car_list_o_left').eq(1).css({
                height: '675px'
            })
            if (scrollBottom < 1000) {
                $('.dot_car_list_o_left').eq(0).css({
                    position: 'absolute',
                    top: '',
                    bottom: 0,
                    height: '657px'
                })
            }
            
        } else {
            $('.dot_car_list_o_left').eq(0).css({
                position: '',
                top: ''
            })
            $('.dot_car_list_o_left').eq(1).hide();
        }
    })

})
//清除其余类型
function clearFigcaption(){
	$.each($('#choice_car img'),function(i,item){
		$(this).attr('src', $(this).attr("selected_src").replace('_selected',''));
	});
	$.each($('#choice_car figcaption'),function(i,item){
		$(this).removeClass("selected");
	});
}