function cms_voice() {
	var params = {};
	params.class_name = '加盟商声音';
	params.page = 1;
	params.page_size = 3;
	params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/cms_news/get_list';
	connectserver(CONTEXT_PATH+"/common/dopost.html", postDate, function(db){
		if (db.code == 0) {
			var arrNew = db.rows;
			var voice ='';
			for(var i=0;i<arrNew.length;i++){
				voice+='<figure>';
					voice+='<img src="'+arrNew[i].pic+'" alt="">';
					voice+='<figcaption>'+arrNew[i].title+'</figcaption>';
				voice+='</figure>';
			}
			$(".franchiser").append(voice);
		}
	});
}

function cms_storefront() {
	var params = {};
	params.class_name = '加盟店面';
	params.page = 1;
	params.page_size = 100;
	params = JSON.stringify(params);
	var postDate = {};
	postDate.param = params;
	postDate.url = '/cms_news/get_list';
	connectserver(CONTEXT_PATH+"/common/dopost.html", postDate, function(db){
		if (db.code == 0) {
			var arrNew = db.rows;
			var store ='';
			var len = arrNew.length;
			var t = 2;
			for(var i=0;i<len;i++){
				if(i==0 || i % 3 ==0 ){
					store+='<div class="swiper-slide swiper-slide-content">';
				}
					store+='<figure>';
						store+='<img src="'+arrNew[i].pic+'" alt="">';
						store+='<figcaption>'+arrNew[i].title+'</figcaption>';
					store+='</figure>';
				if(i==t || i == (len-1)){
					store+='</div>';
					t=i+3
				}
			}
			$(".swiper-wrapper").append(store);
			lunbo();
		}
	});
}
//轮播
function lunbo(){
	var swiper = new Swiper('.swiper-container', {
		loop: true,
		pagination: '.swiper-pagination',
		paginationClickable: true,
		nextButton: '.swiper-button-next',
		prevButton: '.swiper-button-prev',
		autoplay: 2000,
		autoplayDisableOnInteraction: false
	});
}

$(".side ul").find("li").each(function(index,e){
	$(this).click(function(){
		if($(this).text()=='返回顶部'){
			location.href= "#";
		}else{
			location.href = "#rule"+index;
		}
	});
});

$(".conditions-joining-button").click(function(){
	window.open("http://cn.mikecrm.com/aFtMfwr");
});
//右侧悟空工具栏滑动隐藏
$(window).scroll(function() {
	setSideHide();
});
//设置订单按钮悬浮位置
function setSideHide(){
	const scrollH = $(window).scrollTop();
	const documentH = $(document).height();
	if (parseFloat(scrollH/documentH) > 0.8121) {
		$(".side").hide();
	} else {
		$(".side").show();
	}
}
