
	//日期比较：date1 > date2 返回1；date1 > date2 返回-1；date1 == date2 返回0；
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
	//月份比较
	var monthAfter = function (date1,date2){
		var strs1 =  date1.toString().split('-'); //字符分割
		var strs2 =  date2.toString().split('-'); //字符分割
		var y1 = parseInt(strs1[0]);
		var y2 = parseInt(strs2[0]);
		if(y1>y2){return 1;}else if(y1<y2){return -1;}else{}
		var m1 = parseInt(strs1[1]);
		var m2 = parseInt(strs2[1]);
		if(m1>m2){return 1;}else if(m1<m2){return -1;}else{}
		return 0;
	};
    //判断当月有多少天
    var judgeDays_time = function (date) {
        //0 为闰年
        var arr = date.split('-');
        var y=arr[0],m=arr[1],d=arr[2];
        var months = {
            31: [1, 3, 5, 7, 8, 10, 12,'01', '03', '05', '07', '08','10','12'],
            30: [4, 6, 9,11,'04', '06', '09', '11'],
            28: [2,'02']
        };
        var yStatus = y % 4 == 0 || y % 400 == 0 ? 0 : 1;
        var days = $.inArray(m, months[31]) !== -1 ? 31 : $.inArray(m, months[30]) !== -1 ? 30 : yStatus == 0 ? 29 : 28;
        return days;
    };
    /*
    * 获取时间字符串
    * */
    var getStr_time=function(date,min,max) {
        var valArr = date.split('-');
        var y=valArr[0],m=valArr[1],d=valArr[2];
        var str = '<li data-month="'+valArr[0]+'-'+valArr[1]+'">';
        var days = judgeDays_time(date);
        var date = new Date(valArr[0]+'/'+valArr[1]+'/1').getDay();
        for (var m = 0; m < date; m++) {
            str += '<span> </span>';
        }
        for (var i = 0; i < days; i++) {
        	var dayId = "day-" + valArr[0] + "-";
        	dayId = dayId + valArr[1] + "-";
        	if((i + 1) < 10) {
        		dayId = dayId + "0";
        	}
        	dayId = dayId + (i + 1);
        	if(dateAfter(dayId.substring(4),minDay) >= 0 && dateAfter(dayId.substring(4),maxDay) <= 0) {
                if (i == valArr[2]-1) {
                    str += '<span class="cur" id="' + dayId + '" onclick="timeDateSelected(this);">' + (i + 1) + '</span>';
                } else {
                    str += '<span id="' + dayId + '" onclick="timeDateSelected(this);">' + (i + 1) + '</span>';
                }
        	}else {
                if (i == valArr[2]-1) {
                    str += '<span class="cur non_rent" id="' + dayId + '">' + (i + 1) + '</span>';
                } else {
                    str += '<span class="non_rent" id="' + dayId + '">' + (i + 1) + '</span>';
                }
        	}
        }
        str+='</li>';
        return str;
    };
    /*
    * 渲染日历
    * */
    var sumStrFn_time=function(date,$parent){
        var weekArr=['日','一','二','三','四','五','六'];
        var weekStr='';
        var strContent=getStr_time(date);
        var contents=$('<div class="contents"></div>');
        var curShow=$('<div class="cur-show"></div>');
        var prev = '';
        if(monthAfter(date,minDay) <= 0) {        	
        	prev=$('<span class="prevs" onclick="unClosed(event);"></span>');
        }else {        	
        	prev=$('<span class="prev" onclick="getPreMonthTime(this, event);"></span>');
        }
        var changeDate=$('<span class="change-date"></span>');
        var next='';
        if(monthAfter(date,maxDay) >= 0) {
        	next = $('<span class="nexts" onclick="unClosed(event);"></span>');
        }else {
        	next = $('<span class="next" onclick="getNextMonthTime(this, event);"></span>');
        }
        var week=$('<div class="week"></div>');
        var datesBox=$('<ul class="dates-box"></ul>');
            for(var i= 0,len=weekArr.length;i<len;i++){
            	//weekStr+='<span onclick="timeDateSelected(this);">'+weekArr[i]+'</span>';
            	weekStr+='<span>'+weekArr[i]+'</span>';
            }
        changeDate.html(date);
        curShow.append(prev);
        curShow.append(changeDate);
        curShow.append(next);
        week.html(weekStr);
        contents.append(curShow);
        contents.append(week);
        contents.append(datesBox);
        datesBox.append(strContent);
        $parent.append(contents)
    };
    /*
    * 上个月日期
    * */
    var getPreMonth_time=function(date) {
        var arr = date.split('-');
        var year = arr[0]; //获取当前日期的年份
        var month = arr[1]; //获取当前日期的月份
        var day = arr[2]; //获取当前日期的日
        var days = new Date(year, month, 0);
        var month2=month- 1,year2=year,day2=parseInt(day);
        if(month2==0){
            year2--;
            month2=12;
        }
        month2<10?month2='0'+month2:'';
        day2<10?day2='0'+day2:'';
        var t2 = year2 + '-' + month2 + '-' + day2;
        return t2;
    };
    /*
     * 下个月日期
     * */
    var getNextMonth_time=function(date) {
        var arr = date.split('-');
        var year = arr[0]; //获取当前日期的年份
        var month = arr[1]; //获取当前日期的月份
        var day = arr[2]; //获取当前日期的日
        var days = new Date(year, month, 0);
        var month2=month*1+ 1,year2=year,day2=parseInt(day);
        if(month2>12){
            year2++;
            month2=1;
        }
        month2<10?month2='0'+month2:'';
        day2<10?day2='0'+day2:'';
        var t2 = year2 + '-' + month2 + '-' + day2;
        return t2;
    };
    /*
    * 获取当前时间
    * */
    var getNowFormatDate_time=function() {
        var date = new Date();
        var seperator1 = "-";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate;
        return currentdate;
    };
    
    var setDate = function(dataId,dateStr) {

    	$li = $("#" + dataId).parents('.date-box');
    	$(".contents").remove();
        sumStrFn_time(dateStr,$li);
        $('.contents').css('top','')
        
        $("#day-"+dateStr).addClass('selected').siblings().removeClass('selected');
        var $cur=$("#day-"+dateStr);
        var weekArr=['日','一','二','三','四','五','六'];
        var text=weekArr[$cur.index()%7];
        var dataStr=$cur.parent().attr("data-month");
        var val=$cur.text();
        val=val<10?'0'+val:val;
        var newDate=dataStr+'-'+val;
        $li.find(".contents").remove();
        $li.find(".lastWeek").text('周'+text);
        $li.find(".date").val(newDate);
    };
    
    var setStamp = function(stampId, stampStr) {
    	$("#" + stampId).val(stampStr);
    }
    
    var getPreMonthTime = function (e, ee) {
    	ee = ee || window.event;
        ee.stopPropagation();
        var $li= $(e).parents('.date-box');
        var val = $li.find('.change-date').text();
        $li.find(".contents").remove();
        val=val?val:getNowFormatDate_time();
        val=getPreMonth_time(val);
        sumStrFn_time(val,$li);
        $li.find(".change-date").text(val,1);
        if($('.date').attr('jd')=='judge'){
            $('.contents').css('top','80px')
        }else{
            $('.contents').css('top','')
        }
    }
    
    var getNextMonthTime = function(e, ee) {
    	ee = ee || window.event;
        ee.stopPropagation();
        var $li= $(e).parents('.date-box');
        var val = $li.find('.change-date').text();
        val=val?val:getNowFormatDate_time();
        val=getNextMonth_time(val);
        $li.find(".contents").remove();
        sumStrFn_time(val,$li);
        $li.find(".change-date").text(val,1);
        if($('.date').attr('jd')=='judge'){
            $('.contents').css('top','80px')
        }else{
            $('.contents').css('top','')
        }
    }
    
    var timeDateSelected = function (e) {
        /*
         * 类型: 2017-02-03
         * input的name相同的大约1 则为关联时间: 判断 1.结束时间大于等于开始时间
         *
         * */
         var $li= $(e).parents('.date-box');
         var $cur=$(e);
         var weekArr=['日','一','二','三','四','五','六'];
         var text=weekArr[$cur.index()%7];
         var dataStr=$cur.parent().attr("data-month");
         var val=$cur.text();
         val=val<10?'0'+val:val;
         var newDate=dataStr+'-'+val;
         var timeCheckResult = timeCheck($li.attr("day_id"), newDate);
		 if(timeCheckResult == 1) {
			confirm("取车时间不能大于还车时间");
			return false;
		 }else if(timeCheckResult == 2) {
			confirm("取车时间不能小于当前时间");
			return false;
		 }else if(timeCheckResult == 3) {
			confirm("取还车时间不能大于30天");
			return false;
		 }else if(timeCheckResult == 4) {
			confirm("取还车时间不能小于1个小时");
			return false;
		 }
         
         $(e).addClass('selected').siblings().removeClass('selected');
         $li.find(".contents").remove();
         $li.find(".lastWeek").text('周'+text);
         $li.find(".date").val(newDate);
         
      }
    
    // 1:取车时间大于还车时间 、2：取车时间小于当前时间、 3：取环车时间大于30天、 4：取环车时间间隔小于一个小时
    var timeCheck = function(id, dateOrStampStr) {
    	var from_flag = false; //点击的对象：是取车时间
    	var fromDayStr = $("#from_time").val().trim();
    	var fromStampStr = $("#from_stamp").val().trim();
    	var toDayStr = $("#to_time").val().trim();
    	var toStampStr = $("#to_stamp").val().trim();
    	if(id == "from_time") {
    		fromDayStr = dateOrStampStr.trim();
    		from_flag = true;
    	}
    	if(id == "to_time") {
    		toDayStr = dateOrStampStr.trim();
    	}
    	if(id == "from_stamp") {
    		fromStampStr = dateOrStampStr.trim();
    		from_flag = true;
    	}
    	if(id == "to_stamp") {
    		toStampStr = dateOrStampStr.trim();
    	}
    	var fromTimeStamp = new Date(parseInt(fromDayStr.split("-")[0]),
    								 parseInt(fromDayStr.split("-")[1]) - 1,
    								 parseInt(fromDayStr.split("-")[2]),
    								 parseInt(fromStampStr.split(":")[0]),
    								 parseInt(fromStampStr.split(":")[1]),
    								 0);
    	var toTimeStamp = new Date(parseInt(toDayStr.split("-")[0]),
					    		   parseInt(toDayStr.split("-")[1]) - 1,
					    		   parseInt(toDayStr.split("-")[2]),
					    		   parseInt(toStampStr.split(":")[0]),
					    		   parseInt(toStampStr.split(":")[1]),
					    		   0);
    	var nowTimeStamp = new Date();
    	if(from_flag) {
	    	if(timeSpan(nowTimeStamp,fromTimeStamp) >= 0) {
	    		return 2;
	    	}
    		var fromTimeStr = fromDayStr + " " + fromStampStr;
    		var toTimeDate = fromTimeStamp.setDate(fromTimeStamp.getDate() + 2);
    		toTimeDate = new Date(toTimeDate);
    		var y = toTimeDate.getFullYear();
    		var m = toTimeDate.getMonth() + 1;
    		if(m < 10) {
    			m = "0" + m;
    		}
    		var d = toTimeDate.getDate();
    		if(d < 10) {
    			d = "0" + d;
    		}
    		var toTimeStr = y + "-" + m + "-" + d + " " + fromStampStr;
    		if(timeSpan(nowTimeStamp,fromTimeStamp) >= 0) {
    			fromStampStr = getNDaysLater(1);
    			toTimeStr = getNDaysLater(3);
        	}
			setDate("from_time", fromTimeStr.substr(0,10));
			setStamp("from_stamp", fromTimeStr.substr(11,5));
			setDate("to_time", toTimeStr.substr(0,10));
			setStamp("to_stamp", toTimeStr.substr(11,5));
			var flen = fromTimeStr.length;
			if(flen > 16){
				fromTimeStr=fromTimeStr.substr(0,16);
				toTimeStr = toTimeStr.substr(0,16);
			}
			dateToDate(fromTimeStr,toTimeStr);
			return 0;
    	}
    	var tlen = toStampStr.length;
    	if(tlen > 5){
    		toStampStr = toStampStr.substr(0,5); 
    	}
    	var fromTimeString = fromDayStr + " " + fromStampStr;
    	var toTimeString = toDayStr + " " + toStampStr
    	dateToDate(fromTimeString,toTimeString);
    	if(timeSpan(toTimeStamp,fromTimeStamp) <= 0) {
    		return 1;
    	}
    	if(timeSpan(nowTimeStamp,fromTimeStamp) >= 0) {
    		return 2;
    	}
    	if(timeSpan(toTimeStamp,fromTimeStamp) > 30*24*3600) {
    		return 3;
    	}
    	if(timeSpan(toTimeStamp,fromTimeStamp) < 3600) {
    		return 4;
    	}
    	return 0;
    }
    
    var unClosed = function(e) {
    	e = e || window.event;
        e.stopPropagation();
    }
    
    //选择日期时间显示多少天
    function dateToDate(from_time,to_time){
    	var to =to_time+":00";
    	var form = from_time+":00";
    	var time1 = Date.parse(to.replace(/-/g,"/"))/1000;
    	var time2 = Date.parse(form.replace(/-/g,"/"))/1000;
        var time3 = time1-time2;
        if(time3 == 0 || time3 < 0){
        	var start_time = $("#from_time").val()+" "+$("#from_stamp").val()+":00";
        	var end_time = $("#to_time").val()+" "+$("#to_stamp").val()+":00";
        	time1 = Date.parse(end_time.replace(/-/g,"/"))/1000;
        	time2 = Date.parse(start_time.replace(/-/g,"/"))/1000;
        	time3 = time1-time2;
        }
        var dateStr = parseInt(time3/(3600*24));
        var dateTime = (time3%(3600*24))/3600;
        //如果大于4小时算一天
        if(dateTime > 4){
        	dateStr +=1;
        }
        if(dateStr == 0 && dateTime < 4){
        	dateStr = 0;
        }
        $(".home_rent_days").html("租期: <span>"+dateStr+"天</span>");
    } 
$(function () {
  $('.date-box').on("click",".date",function(e){
	  $('.arrowClass').removeClass('add-border-style');
      $(this).parent('.arrowClass').addClass('add-border-style');    
      $('#popup_pane').hide();
      $('.time-box .contents').hide();
      $('.price').hide();      	
      $('.dot_query').hide();
      $('#pinck_up_list ul[name=dianji]').css('border','');
      $('#pinck_up_dot ul[name=dot]').css('border','');
      $('.time-box .pinck_up_list_div').css('border','');
      $('.time-box input').css('border','');
      
      var $li= $(e.currentTarget).parents('.date-box');
      $(".contents").remove();
      var val = $li.find('.date').val();
      val=val?val:getNowFormatDate_time();
      sumStrFn_time(val,$li);
      if($(e.currentTarget).attr('jd')=='judge'){
          $('.contents').css('top','80px')
          $(e.currentTarget).parents('.pinck_up_list_div').css('border','1px solid #f23732');
      }else{
          $('.contents').css('top','')
      }

  	  e = e || window.event;
      e.stopPropagation();
    });
    
    $('.time-box').on("click","input",function(e){
        $('.arrowClass').removeClass('add-border-style');
        $(this).parent('.time-box').addClass('add-border-style');
    	$('#popup_pane').hide();
        $('.date-box .contents').hide();
        $('.price').hide();      	
        $('.dot_query').hide();
        $('#pinck_up_list ul[name=dianji]').css('border','');
        $('#pinck_up_dot ul[name=dot]').css('border','');
        $('.date-box .pinck_up_list_div').css('border','');
        $('.date-box input').css('border','');
        
        $(".no-border").find("input").css('border','');
        e = e || window.event;
        e.stopPropagation();
        /*
         * 渲染数据
         * */
        var $cur=$(e.currentTarget),
        	styleStr=$cur.attr("id")=='to_stamp'?' style="right:0px !important; left: inherit;"':'',
            timeVal=$cur.val(),
            timeArr=timeVal?timeVal.split(":"):"",
            $par=$cur.parents(".time-box"),
            contents=$('<div class="contents"></div>'),
            hours=$('<div class="hours"></div>'),
            hour_part=$('<div class="hour_part">时</div>'),
            minute_part=$('<div class="minute_part">分</div>'),
            liStr=$('<li></li>'),
            liStr2=$('<li></li>'),
            meridian=$('<div class="meridian"></div>'),
            minutes=$('<div class="minutes"></div>'),
            numbers=$('<div class="numbers"></div>'),
            numbers2=$('<div class="numbers"></div>');

        liStr.append(meridian);
        liStr.append(numbers2);
        hours.append(hour_part);
        hours.append(liStr);

        liStr2.append(numbers);
        minutes.append(minute_part);
        minutes.append(liStr2);

        contents.append(hours);
        contents.append(minutes);
        $par.append(contents);


        var obj={
            hours:{
                detail:[
                    0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23
                ]
            },
            minutes:[
                0,5,10,15,20,25,30,35,40,45,50,55
            ]
        };
        var str='';
        var strType='';
        
        strType+= '<span class="am_span">AM</span>';
        strType+= '<span class="pm_span">PM</span>';
        $.each(obj.hours.detail,function(i,val){
            val=val<10?'0'+val:val;
            var curClass=val*1===timeArr[0]*1?"on":"";
            str+='<span class="'+curClass+'" data-text="'+val+'">'+val+'</span>';
        });
        
        var minStr='';
        $.each(obj.minutes,function(i,val){
            val=val===''?'':val<10?'0'+val:val;
            var curClass=val*1===timeArr[1]*1?"on":"";
            minStr+='<span class="'+curClass+'" data-type="minute" data-text="'+val+'">'+val+'</span>';
        });
        $(".hours .numbers").html(str);
        $(".minutes .numbers").html(minStr);
        $(".hours .meridian").html(strType);
    });
    $('.time-box').on("click",".numbers span",function(e) {
    	
        var $cur= $(e.currentTarget),
            arr=[],
            $par=$cur.parents('.time-box'),
            $li=$cur.parents('.date-box');
        $cur.addClass("on").siblings('span').removeClass('on');

        var len=$par.find('.on').length;
        $.each($par.find('.on'), function (i,item) {
            arr.push($(item).text());
        });
        var str=arr.join(":");
        if(str.length > 5){
        	str = str.substr(-5);
        }
        var timeCheckResult = timeCheck($li.attr("stamp_id"), str);
    	if(timeCheckResult == 1) {
    		confirm("取车时间不能大于还车时间");
    		return false;
    	}else if(timeCheckResult == 2) {
    		confirm("取车时间不能小于当前时间");
    		return false;
    	}else if(timeCheckResult == 3) {
    		confirm("取还车时间不能大于30天");
    		return false;
    	}else if(timeCheckResult == 4) {
    		confirm("取还车时间不能小于1个小时");
    		return false;
    	}
    	
        if('minute' == $cur.attr('data-type')){
            $par.find('input').val(str);
            $par.find('input').css('border','');;
            $(".contents").remove();
        }
        e = e || window.event;
        e.stopPropagation();
    });
    
    function getNDayLater(n) {
    	now=new Date();
    }
    
});