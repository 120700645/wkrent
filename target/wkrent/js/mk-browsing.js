if (navigator.language) { var language = navigator.language; } else { var language = navigator.browserLanguage; }var cTime = new Date();var channel = 'PC';var time_zone = +(0-cTime.getTimezoneOffset() / 60);function getReferrer() {var referrer = '';try {referrer = window.top.document.referrer;} catch (e) {if (window.parent) {try {} catch (e2) {referrer = '';}}}if (referrer === '') {referrer = document.referrer;}return referrer;};var referer = getReferrer();function browsing_button(obj){var params = {};params.channel = channel;params.button_code = $(obj).attr('data-code');params.button_name = $(obj).attr('data-name');params.screen_width = window.screen.width;params.screen_height = window.screen.height;params.time_zone = time_zone;params.language = language;$.ajax({ type : 'get',url : '//statistic.wkzuche.com/button.do',dataType : 'jsonp',data: params,jsonp: 'jsonpCallback',success : function(data){},error:function(){  }});}function browsing_page() { var params = {};params.channel = channel;params.url =  encodeURIComponent(location.href);if (referer) { params.referer =  encodeURIComponent(referer);}params.screen_width = window.screen.width;params.screen_height = window.screen.height;params.time_zone = time_zone;params.language = language;$.ajax({ type : 'get',async:false,url : '//statistic.wkzuche.com/page_onload.do',dataType : 'jsonp',data: params,jsonp: 'jsonpCallback',success : function(data){ data = JSON.stringify(data);var dataObj = eval("("+data+")");if (dataObj.code == 0) {var input = document.createElement('input');$(input).attr('type', 'hidden');$(input).attr('name', 'log_id');$(input).attr('id', 'log_id');$(input).attr('value', dataObj.id);$(input).appendTo('body');}},error:function(){  }});}function page_update() {var log_id = $('#log_id').val();var params = {};params.id = log_id;$.ajax({ type : 'get',async:false,url : '//statistic.wkzuche.com/page_onbeforeunload.do',dataType : 'jsonp',data: params,jsonp: 'jsonpCallback',success : function(data){ },error:function(){  }});}window.onbeforeunload = function() {if($('#log_id').val()){page_update();}if(typeof(extendMsg) != 'undefined'&&extendMsg){event.returnValue=extendMsg; }};window.onload = function() { browsing_page();$(".browsing_btn").each(function(){ $(this).click(function(){ browsing_button($(this));});});};