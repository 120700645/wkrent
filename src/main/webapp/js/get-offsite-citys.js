function connOffCitys(backfun) {
	var params = {};
	params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/city/get_diff_cities';
	connectserver("../common/dopost.html", postDate, backfun);
}

//城市初始化
function initOffCitys(backfun) {
	connOffCitys(function(db) {
		if (db && db.code == 0) {
			offCitys = db.cities;
			initOffCitysHtml(backfun);
		} else {
			
		}
	});
}
//初始化异地取还车的取车还车城市
function initOffCitysHtml(backfun){
	//初始化取车城市
	$(".yd-take ul").append(getCityHtml(offCitys));
	// 异地还车取车城市选择
	$('.yd-take').off().on('click', 'li', function(e) {
		setTake($(this).html());
		$('#takeCityName').attr("city_id",$(this).attr("city_id"));
		$('.yd-take').hide();
	})
	$(".yd-take ul li").click(function(){
		var index = parseInt($(this).attr("index"));
		setReturn('');
		$(".yd-still ul").html(getCityHtml(offCitys[index].return_cities));
		// 异地还车还车城市选择
		$('.yd-still').off().on('click', 'li', function(e) {
			setReturn($(this).html());
			$('#stillCityName').attr("city_id",$(this).attr("city_id"));
			$('.yd-still').hide();
		})
	});
	//默认城市初始化
	initSelectedCity(backfun);
}
//创建城市列表html
function getCityHtml(cities){
	var thisHtml = '';
	if(cities.length == 0)
		return thisHtml;
	for (var int = 0; int < cities.length; int++) {
		thisHtml += '<li' + ' city_id="' + cities[int].city_id + '" city_name="' + cities[int].city_name + '" index="' + int + '">';
			thisHtml += cities[int].city_name;
		thisHtml += '</li>';
	}
	return thisHtml;
}
//取车城市默认昆明 还车城市默认大理
function initSelectedCity(backfun){
	var takeCityId = sessionStorage.getItem("city_id");
	var takeCityName = sessionStorage.getItem("city_name");
	var returnCityId = sessionStorage.getItem("return_cityid");
	var returnCityName = sessionStorage.getItem("return_cityname");
	if(returnCityId){//证明有选中的取车还车城市
		$(".yd-take ul li[city_id="+takeCityId+"]").click();
		$(".yd-still ul li[city_id="+returnCityId+"]").click();
	}else{//没有则默认
		$(".yd-take ul li[city_id=530100]").click();
		$(".yd-still ul li[city_id=532900]").click();
	}
	if(backfun)
		backfun();
}

//验证异地换车选择是否正确
function checkInOffSite(){
	if(getTakeCity() == ''){
		confirm("取车城市不能为空");
		loadingUpHide();
		return false;
	}
	if(getReturnCity() == ''){
		confirm("还车城市不能为空");
		loadingUpHide();
		return false;
	}
	setOffSiteConfig();
	return true;
}

function setOffSiteConfig(){
	sessionStorage.setItem("city_id",$('#takeCityName').attr("city_id"));
	sessionStorage.setItem("city_name",getTakeCity());
	sessionStorage.setItem("return_cityid",$('#stillCityName').attr("city_id"));
	sessionStorage.setItem("return_cityname",getReturnCity());
}

function setTake(city){
	if($('#takeCityName')[0].tagName == 'INPUT'){
		$('#takeCityName').val(city);
	}else{
		$('#takeCityName').html(city);
	}
}

function setReturn(city){
	if($("#stillCityName")[0].tagName == 'INPUT'){
		$('#stillCityName').val(city);
	}else{
		$('#stillCityName').html(city);
	}
}

function getTakeCity(){
	if($("#takeCityName")[0].tagName == 'INPUT'){
		return $('#takeCityName').val();
	}else{
		return $('#takeCityName').html();
	}
}

function getReturnCity(){
	if($("#stillCityName")[0].tagName == 'INPUT'){
		return $('#stillCityName').val();
	}else{
		return $('#stillCityName').html();
	}
}
