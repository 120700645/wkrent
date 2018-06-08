function getRootPath(weixinNum,remember) {
    //获取当前网址，如： http://localhost:8080/ems/Pages/Basic/Person.jsp
    var curWwwPath = window.document.location.href;
    //获取主机地址之后的目录，如： /ems/Pages/Basic/Person.jsp
    var pathName = window.document.location.pathname;
    var pos = curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8080
    var localhostPath = curWwwPath.substring(0, pos);
    //获取带"/"的项目名，如：/ems
    var projectName = "";
    if(localhostPath.indexOf("test-sso.wkzuche.com") > 0) {
		var redirectUrl = "http%3A%2F%2Fsso.wkzuche.com%2Fmember%2Fm%2Fpages%2Fsso_test.jsp";
    	if(remember) {
    		redirectUrl += "%3Fremember%3Don";
    	}
    	if("WEIXIN3" == weixinNum) {
    		return "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxb0406d3d8c692ebc&redirect_uri=" + redirectUrl + "&response_type=code&scope=snsapi_userinfo&state=WEIXIN3#wechat_redirect";
    	}else if("WEIXIN4" == weixinNum) {
    		return WEIXIN4_URL="https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx714341e10968cffe&redirect_uri=" + redirectUrl + "&response_type=code&scope=snsapi_userinfo&state=WEIXIN4#wechat_redirect";
    	}else if("BUSINESS" == weixinNum) {
    		return "https://test-console.wkzuche.com/m/pages/user/my_user_info.jsp";
    	}else if("MOBILE" == weixinNum) {
    		return "https://test-m.wkzuche.com";
    	}
    }else if(localhostPath.indexOf("sso.wkzuche.com") > 0){
		var redirectUrl = "https%3A%2F%2Fsso.wkzuche.com%2Fmember%2FweixinLogin.do";
    	if(remember) {
    		redirectUrl += "%3Fremember%3Don";
    	}
    	if("WEIXIN3" == weixinNum) {
    		return "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxb0406d3d8c692ebc&redirect_uri=" + redirectUrl + "&response_type=code&scope=snsapi_userinfo&state=WEIXIN3#wechat_redirect"
    	}else if("WEIXIN4" == weixinNum) {
    		return "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx714341e10968cffe&redirect_uri=" + redirectUrl + "&response_type=code&scope=snsapi_userinfo&state=WEIXIN4#wechat_redirect";
    	}else if("BUSINESS" == weixinNum) {
    		return "https://console.wkzuche.com/m/pages/user/my_user_info.jsp";
    	}else if("MOBILE" == weixinNum) {
    		return "http://m.wkzuche.com/";
    	}
    }
}