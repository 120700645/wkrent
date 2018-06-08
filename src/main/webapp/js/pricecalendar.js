		var dateAfter = function (date1,date2){
		    var strs1 =  date1.toString().split('-'); //字符分割
		    var strs2 =  date2.toString().split('-'); //字符分割
		    var y1 = parseInt(strs1[0]);
		    var y2 = parseInt(strs2[0]);
		    if(y1>y2){return 1;}else if(y1<y2){return -1;}else{}
		    var m1 = parseInt(strs1[1]);
		    var m2 = parseInt(strs2[1]);
		    if(m1>m2){return 1;}else if(m1<m2){return -1;}else{}
		    var d1 = parseInt(strs1[2]);
		    var d2 = parseInt(strs2[2]);
		    if(d1>d2){return 1;}else if(d1<d2){return -1;}else{}
		    return 0;
		};
		//获取当天价格
		var getDayPrice = function(date, carTypeId) {
//			var carTypePrice = prices[carTypeId];
//			var carTypePrice = carTypePrice;
			var otherPrices = carTypePrice.others;
			if(otherPrices && otherPrices.length > 0) {
				for(var i = 0; i < otherPrices.length; i++) {
					var otherPrice = otherPrices[i];
					if(dateAfter(date,otherPrice.start_time) >=0 && dateAfter(date,otherPrice.end_time) <=0 ) {
						return parseInt(otherPrice.day);
					}
				}
			}
			return carTypePrice.day;
		};
    //判断当月有多少天
        var judgeDays = function (date) {
            //0 为闰年
            var arr = date.split('-');
            var y = arr[0],
                m = parseInt(arr[1]),
                d = arr[2];
            var months = {          
                31: [1, 3, 5, 7, 8, 10, 12],
                30: [4, 6, 9,11],
                28: [2]
            };
            var yStatus = y % 4 == 0 || y % 400 == 0 ? 0 : 1;
            var days = $.inArray(m, months[31]) !== -1 ? 31 : $.inArray(m, months[30]) !== -1 ? 30 : yStatus == 0 ? 29 : 28;
            return days;
        };
        /*
        * 获取时间字符串
        * */
        var getStr = function(date, carTypeId) {
            var valArr = date.split('-');
            var y = valArr[0],
                m = valArr[1],
                d = valArr[2];
            var str = '<li data-month="'+valArr[0]+'-'+valArr[1]+'">'+'</li>';
            var days = judgeDays(date);
            var date = new Date(valArr[0]+'-'+valArr[1]).getDay();
            if(date == 0) {
            	str = '';
            }
            for (var m = 0; m < date-1; m++) {
                str += '<li data-month="'+valArr[0]+'-'+valArr[1]+'">' +'<em> </em>'+'<i></i>' +'</li>'
            }
            for (var i = 0; i < days; i++) {
            	var thisDay = valArr[0]+'-'+valArr[1]+'-';
            	if((i + 1) < 10) {
            		thisDay += '0';
            	}
            	thisDay += (i + 1);
            	if(dateAfter(thisDay,minDay) >= 0 && dateAfter(thisDay,maxDay) <= 0) {
	                if (i == valArr[2]-1) {
	                    str += '<li data-month="'+valArr[0]+'-'+valArr[1]+'" onclick="priceCalendarDaySelected(this, event);">' +'<em class="cur" >' + (i + 1) + '</em>' + '<i>￥' + getDayPrice(valArr[0]+'-'+valArr[1]+'-'+(i + 1), carTypeId) + '</i>' +'</li>'
	                } else {
	                    str += '<li data-month="'+valArr[0]+'-'+valArr[1]+'" onclick="priceCalendarDaySelected(this, event);">' +'<em>' + (i + 1) + '</em>' + '<i>￥' + getDayPrice(valArr[0]+'-'+valArr[1]+'-'+(i + 1), carTypeId) + '</i>'  +'</li>'
	
	                }
                }else {
                	if (i == valArr[2]-1) {
                		str += '<li class="non_rent" data-month="'+valArr[0]+'-'+valArr[1]+'" onclick="priceCalendarDaySelected(this, event);">' +'<em class="cur" >' + (i + 1) + '</em></li>';
                	} else {
                		str += '<li class="non_rent" data-month="'+valArr[0]+'-'+valArr[1]+'" onclick="priceCalendarDaySelected(this, event);">' +'<em>' + (i + 1) + '</em></li>';
                		
                	}
                }
            }
            for (var m = 0; m < date; m++) {
                str += '<li data-month="'+valArr[0]+'-'+valArr[1]+'">' +'<em> </em>'+'<i></i>' +'</li>'
            }
            str+='</li>';
            return str;
        };
        /*
        * 渲染日历
        * */
        var sumStrFn = function(date, $parent, val, carTypeId){
            var weekArr = ['日','一','二','三','四','五','六'];
            var weekStr = '';
            var strContent = getStr(date, carTypeId);
            var contents = $('<div class="price"></div>');
            var b = $('<b id="price_span"></b>');
            var p = $('<p class="price_p"></p>');
            var curShow = $('<p class="pri-show"></p>');
            var prev = ''; 
            if(monthAfter(date, minDay) > 0) {            	
            	prev = $('<label class="prev" onclick="getPreMonthPriceCalendar(this,\'' + carTypeId +  '\', event);"></label>');
            }else {
            	prev = $('<label class="prevs" onclick="unClosed(event);"></label>');            	
            }
            var changeDate = $('<label class="change-date"></label>');
            var next = '';
            if(monthAfter(date, maxDay) < 0) {            	
            	next = $('<label class="next" onclick="getNextMonthPriceCalendar(this,\'' + carTypeId +  '\', event);"></label>');
            }else {
            	next = $('<label class="nexts" onclick="unClosed(event);"></label>');            	
            }
            var week = $('<div class="week"></div>');
            var datesBox = $('<ol class="prices-box"></ol>');
            for(var i = 0,len = weekArr.length;i < len;i++){
                weekStr += '<i>'+weekArr[i]+'</i>';
            }
            changeDate.html(val);
            curShow.append(prev);
            curShow.append(changeDate);
            curShow.append(next);
            week.html(weekStr);
            contents.append(b);
            contents.append(p);
            contents.append(curShow);
            contents.append(week);
            contents.append(datesBox);
            datesBox.append(strContent);
            $parent.append(contents)
        };
        /*
        * 上个月日期
        * */
        var getPreMonth = function(date) {
            var arr = date.split('年');
                arr = arr.join();
                arr = arr.split('月');
                arr = arr.join();
                arr= arr.split(',');
            var year = arr[0]; //获取当前日期的年份
            var month = arr[1]; //获取当前日期的月份
            var days = new Date(year, month, 0);
            var month2 = month - 1,
                year2 = year;
            if(month2 == 0){
                year2--;
                month2 = 12;
            }
            var t2 = year2 + '年' + month2 + '月' ;
            return t2;

        };
        /*
         * 下个月日期
         * */
        var getNextMonth=function(date) {
            var arr = date.split('年');
                arr = arr.join();
                arr = arr.split('月');
                arr = arr.join();
                arr= arr.split(',');
            var year = arr[0]; //获取当前日期的年份
            var month = arr[1]; //获取当前日期的月份
            var days = new Date(year, month, 0);
            var month2 = parseInt(month) + 1,
                year2 = year;
            if(month2>12){
                year2++;
                month2=1;
            }
            month2<10?month2=month2:'';
            var t2 = year2 + '年' + month2 + '月' ;
            return t2;
        };
        /*
        * 获取当前时间
        * */
        var getNowFormatDate=function() {
            var date = new Date();
            var seperator1 = "-";
            var month = date.getMonth() + 1;
            var strDate = date.getDate();
            var currentdate = date.getFullYear() + '-' + month + '-'+strDate;
            return currentdate;
        };
        // 上个月
        var getPreMonthPriceCalendar = function(e, carTypeId, ee){
            var $li = $(e).parents('.price-box');
            var val = $li.find('.change-date').text();
            var arr = val.split('年');
                arr = arr.join();
                arr = arr.split('月');
                arr = arr.join();
                arr= arr.split(',');
                arr[1] = arr[1]-1;
                arr= arr.join('-');
            val = getPreMonth(val);
            arr = val.replace('年','-').replace('月','-');
            $li.find(".price").remove();
            sumStrFn(arr+'1', $li, val, carTypeId);
            ee = ee || window.event;
            ee.stopPropagation();
        };
        // 下个月
        var getNextMonthPriceCalendar = function(e, carTypeId, ee){
            var $li= $(e).parents('.price-box');
            var val = $li.find('.change-date').text();
            var arr = val.split('年');
                arr = arr.join();
                arr = arr.split('月');
                arr = arr.join();
                arr= arr.split(',');
                arr[1] = parseInt(arr[1])+1;
                arr= arr.join('-');
            val = getNextMonth(val);
            arr = val.replace('年','-').replace('月','-');
            $li.find(".price").remove();
            sumStrFn(arr+'1', $li, val, carTypeId);
            $($li).show();
            ee = ee || window.event;
            ee.stopPropagation();
        };
        // 周
        $(".date-box").on("click",".dates-box em",function(e){
            /*
            * 类型: 2017-02-03
            * input的name相同的大约1 则为关联时间: 判断 1.结束时间大于等于开始时间
            *
            * */
            var $li= $(e.currentTarget).parents('.date-box');
            $(e.currentTarget).addClass('selected').siblings().removeClass('selected');
            var $cur=$(e.currentTarget);
            var weekArr=['日','一','二','三','四','五','六'];
            var text=weekArr[$cur.index()%7];
            var dataStr=$cur.parent().attr("data-month");
            var val=$cur.text();
            val=val<10?'0'+val:val;
            var newDate=dataStr+'-'+val;
            $li.find(".price").remove();
            $li.find(".lastWeek").text('周'+text);
            $li.find(".date").val(newDate);
            e = e || window.event;
            e.stopPropagation();
        });

        //当月价格日历显示
        var thisMonthPriceCalendarShow = function(e, carTypeId, siteid, ee) {
//        	getCarTypePrices(e, carTypeId, siteid, ee);
            var date = new Date();
            var seperator1 = "-";
            var month = date.getMonth() + 1;
            var $li = $(e).parents('.price-box');
            $(".price").remove();
            val = date.getFullYear() + '年' + month + '月';
            $('.price-box').find('.change-date').text(val);
            sumStrFn(getNowFormatDate(), $li, val, carTypeId);
            ee = ee || window.event;
            ee.stopPropagation();
        };

        //选中改变背景色
        var priceCalendarDaySelected = function(e, ee) {
            ee = ee || window.event;
            var liss = $('.prices-box li');
            for(var i=0 ; i < $(liss).length ; i++){
                $(liss).eq(i).css('background','#fff')
            }
            $(e).css('background','#f9d9d7');
            ee.stopPropagation();
        };
        

        var unClosed = function(e) {
        	e = e || window.event;
            e.stopPropagation();
        }
        
        var getCarTypePrices = function(e, car_type_id, siteid, ee) {
        	var params = {};
        	params.car_type_id = car_type_id;
        	params.siteid = siteid;
        	params = JSON.stringify(params);
        	var postDate = {};
        	postDate.param = params;
        	postDate.url = '/cartype/get_detail';
        	
        	connectserver(CONTEXT_PATH+"/common/dopost.html", postDate, function (db) {
            	if (db.code == 0) {
            		carTypePrice.others = db.prices.others;
            		carTypePrice.day = db.prices.day;
            		thisMonthPriceCalendarShow(e, car_type_id, siteid, ee);
            	}else {
            		
            	}
            });
        }
        