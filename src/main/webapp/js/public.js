//接口调用ajax
function connectserver(webserver,postobj, backfun) {
    if (!backfun) {
        backfun = function (result) {
            alert(result);
        }
    }
    $.ajax({
        type: "Get",
        url: webserver,
        cache: false,
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        	switch (XMLHttpRequest.status) { 
	            case 500: 
	                error500();
	                break; 
	            case 404: 
	            	error404();
	                break; 
	            default: 
	                break; 
	        }
        },
        jsonp: "callback",
        data: postobj,
        dataType: "json",
        contentType: "application/x-www-form-urlencoded; charset=utf-8",
        success: backfun
    });
}
function error500(){
	confirm("系统出了点小问题！");
	loadingUpHide();
}
//function error404(){
	//confirm("啊呀~ 您访问的页面不存在呀 ！");
	//loadingUpHide();
//}


//获取N天后的时间：当前时间+N天再+两个小时
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

//计算时间差
var timeSpan = function (date1, date2) {
	return (date1.getTime() - date2.getTime())/1000;
}