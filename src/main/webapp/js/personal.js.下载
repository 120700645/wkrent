$(function() {
	//导航栏都置为黑色，用户名亮显
	$('.zc_menu a').css('color','#000000');
	$('#header_uid').css('color','#f23732');
    $('.personal_right').off().on('click', 'ul li', function(e) {
        e = e || window.event;
        var liss = $('.personal_right_order li');
        for (var i = 0; i < liss.length; i++) {
        	$(liss).eq(i).children().css('color', '');
        }
        $(this).children().css('color', '#d94f49');
        $(this).find('i').css('color', '#edefed');
        var id = $(this).attr('id');
        var num = $(this).attr('num');
        var code = $(this).attr('code');
        var fenye = $("#"+$(this).attr('id')+"Fenye").text();
        $("div[class='table_div']").each(function(){
        	if(id+"Div" == $(this).attr('id')){
        		if($("#"+id+"Tbody").html().trim() == '' && code == 0){
        			user_get_order(uid,fenye,num,id);
        		}
        		hideDiv(id);
        		$(".personal_right_order").show();
        		if($("#"+id+"Tbody").html().trim() == '' && code == 1){
        			$("#no_type_order_div").show();
        		}else{
        			$(this).show();
        		}
        	}else{
        		$(this).hide();
        	}
        });
    })

    //点击加载费用明细
    $('.personal_order').off().on('click','td>span[class!=order_cancellation]',function(e){
    	e = e || window.event;
        if($('#details_Charges')){
            $('#details_Charges').remove();
        }
        get_order_detail($(this));
        e.stopPropagation();
    })
    
    $(document).off().on('click','',function(e){
        e = e || window.event;
        $('#choice_insert').hide();
        $('.choice').css('border','');
    	if(e.target.offsetParent != null && e.target.offsetParent.id=='details_Charges'){
            return
        }else{
            $("#details_Charges").remove();
        }  
    });
    $('#details_Charges').off().on('click','p',function(e){
    	e = e || window.event;
        e.stopPropagation();
    })
    //点击关闭弹出层
    $('.cancellation_order div').eq(0).off().on('click','span',function(){
        $('.popup').hide();
        $('.cancellation_order').hide()
    })
    $('.button_o').off().on('click','',function(){
        $('.popup').hide();
        $('.cancellation_order').hide()
    })
    $('.button_t').off().on('click','',function(){
    	order_delete($(this));
    })
    
    var choice = "<ul id='choice_insert'>";
    	choice += "<li id='li'>不想租了</li>";
    	choice += "<li>操作失误</li>";
    	choice += "<li>调整车型/调整租期</li>";
    	choice += "<li>租车证件不全</li>";
    	choice += "<li>门店无法提供车辆</li>";
    	choice += "<li>其他</li>";
    	choice += "</ul>";
    	
    $('.choice').off().on('click','',function(e){
    	e = e || window.event;
        $(this).parent('p').append(choice);
        $(this).css({
            'border':'1px solid #e24339',
            'border-bottom':'#fff'
        })
        e.stopPropagation();
    })

    $('.cancellation_order').off().on('click','#choice_insert li',function(e){
    	e = e || window.event;
        var val = $(this).text();
        $('.choice').val(val).css('border','');
        $('#choice_insert').remove();
        $('#choice_insert').remove();
        e.stopPropagation();
    })
    $('textarea').val('请在这里输入您的意见');
    $('textarea').off().on('click','',function(e){
    	e = e || window.event;
        if($('textarea').val() == '请在这里输入您的意见'||$(this).next().next('b').css('display')=='block'){
            $('textarea').val('');
            $(this).next().next('b').css('display','none');
            $('textarea').css('border','')
        }else{
            return
        }
        e.stopPropagation();
    })

    $('.personal_right_f').off().on('click','',function(e){
        e = e || window.event;
        if($('textarea').val() == ''){
            $('textarea').val('请在这里输入您的意见')
        }else{
            return
        } 
    });

    $('textarea').on('input','',function(){
        var tex = $('textarea').val();
        if($(this).next('span').find('i').text()<=0 && tex.length >= 200){
            $('textarea').val(tex.substring(0,200));
            $(this).next('span').find('i').text(0);
            return
        }else{
            $(this).next('span').find('i').text(200-tex.length);
        }
    })
    
    $('textarea').on('input','',function(){
        var tex = $('textarea').val();
        if($(this).next('span').find('i').text()<=0 && tex.length >= 200){
            $('textarea').val(tex.substring(0,200));
            $(this).next('span').find('i').text(0);
            return
        }else{
            $(this).next('span').find('i').text(200-tex.length);
        }
    })

    $('.personal_right_submit').off().on('click','',function(){
        if($('textarea').val()=='请在这里输入您的意见'||$('textarea').val()==''){
            $('textarea').css('border','1px solid #d62b1f')
            $(this).prev().find('b').show()
        }else{
        	user_feedback_apply($(this).attr("uid"));
        }
        
    })

    $('.personal_right_choice').off().on('click','li',function(){
        var lis = $('.personal_right_choice li');
        for(var i=0;i<lis.length;i++){
            $(lis).eq(i).removeClass('personal_right_choices')
        }
        $(this).addClass('personal_right_choices')
    })

    $('#all').trigger("click");
})

//点击弹出
function order_cancellation_click(){
    $('.order_cancellation').off().on('click','',function(e){
    	e = e || window.event;
    	$("#details_Charges").remove();
        $('.popup').show();
        $('.cancellation_order').show();
        get_calc($(this));
        e.stopPropagation();
    })
    
    $('.gengduocaozuo').hover(function(){
    	$("#details_Charges").remove();
        $(this).children().show()
    },function(){
        $(this).children().hide()
        // $(this).next().hide()
    })
}