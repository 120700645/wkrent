var page_size = 12;
var coupon_type = 'unused';// unused used expired
function connCoupon(type,page,backfun) {
    coupon_type = type;
    var params = {};
    params.uid = uid;
    params.page = page;
    params.status = getStatus();
    params.page_size = page_size;
    params = JSON.stringify(params);
    var postDate = {};
    postDate.param = params;
    postDate.url = '/account/get_coupons';
    connectserver("../common/dopost.html", postDate, backfun);
}

function connAddCoupon(backfun) {
    var params = {};
    params.uid = uid;
    params.couponcode = $('.exchange input').val();
    params = JSON.stringify(params);
    var postDate = {};
    postDate.param = params;
    postDate.url = '/account/coupon/active';
    connectserver("../common/dopost.html", postDate, backfun);
}

//鍩庡競鍒濆鍖�
function initCoupon(backfun) {
    //瀵艰埅鏍忛兘缃负榛戣壊锛岀敤鎴峰悕浜樉
    $('.zc_menu a').css('color','#000000');
    $('#header_uid').css('color','#f23732');
    goPage('unused',1);
    goPage('used',1);
    goPage('expired',1);
}

function getParent(){
    if(coupon_type == 'unused'){
        return $('.not_used');
    }else if(coupon_type == 'used'){
        return $('.used');
    }else{
        return $('.overdue');
    }
}

function getStatus(){
    if(coupon_type == 'unused'){
        return 0;
    }else if(coupon_type == 'used'){
        return 1;
    }else{
        return 2;
    }
}

function getRecords(db){
    if(coupon_type == 'unused'){
        return db.unused;
    }else if(coupon_type == 'used'){
        return db.used;
    }else{
        return db.expired;
    }
}

function goPage(type,page){
    connCoupon(type,page,function(db) {
        coupon_type = type;
        if (db && db.code == 0) {
            var coupons = db.coupons;
            var parent = getParent();
            //---鍒濆鍖栧垪琛ㄦā鍧�---
            parent.find('.coupon_item').remove();
            parent.find('.page_number').html('');
            var records = getRecords(db);
            if(records == 0){
                parent.removeClass('no_coupon').addClass('no_coupon');
                return;
            }else{
                parent.removeClass('no_coupon');
            }

            var itemsHtml = '';
            for (var int = 0; int < coupons.length; int++) {
                itemsHtml += '<div class="coupon_item">';
                itemsHtml += '<div>';
                itemsHtml += '<p class="amount">';
                itemsHtml += '<span>锟�</span>';
                itemsHtml += '<span>' + coupons[int].amount + '</span>';
                itemsHtml += '</p>';
                itemsHtml += '<div class="effective_time">';
                itemsHtml += '<p>鏈夋晥鏈�</p>';
                itemsHtml += '<p>' + coupons[int].start_date.split(' ')[0] + '鑷�' + coupons[int].expdate.split(' ')[0] + '</p>';
                itemsHtml += '</div>';
                if(coupon_type == 'used'){
                    itemsHtml += '<span></span>';
                }
                itemsHtml += '</div>';
                itemsHtml += '<p title="' + coupons[int].description + '">' + coupons[int].description + '</p>';
                itemsHtml += '</div>';
            }
            if(coupon_type == 'unused'){
                parent.find('.exchange').after(itemsHtml);
            }else{
                parent.prepend(itemsHtml);
            }
            //---鍒濆鍖栧垎椤垫ā鍧�---
            if(records == 0){
                parent.find('.page_number').hide();
            }else{
                var pageMax = (records + page_size - 1) / page_size;
                var page_number_html = '<li ';
                if((page-1) > 0){
                    page_number_html += ' onclick="goPage(\'' + coupon_type + '\',' + (page-1) + ')" ';
                }
                page_number_html += ' >銆� </li>';
                for (var int = 1; int <= pageMax; int++) {
                    page_number_html += '<li ';
                    page_number_html += ' onclick="goPage(\'' + coupon_type + '\',' + int + ')" ';
                    if(page == int)
                        page_number_html += ' class="selected" ';
                    page_number_html +=	' >'
                    page_number_html += int + '</li>';
                }
                page_number_html += '<li ';
                if((page+1) <= pageMax){
                    page_number_html += ' onclick="goPage(\'' + coupon_type + '\',' + (page+1) + ')" ';
                }
                page_number_html += ' >銆�</li>';
                parent.find('.page_number').append(page_number_html);
                parent.find('.page_number').show();
            }
        } else {

        }
    });
}

$('.title').off().on('click', 'li', function() {
    $('.title li').removeClass('selected');
    $('.coupon_list').css('display', 'none');
    $(this).addClass('selected');
    $('.coupon_list').eq($(this).index()).css('display', 'block')
})

$('.not_used').off().on('click', '.coupon_item', function() {
    var parentClass = $(this);
    if ($(parentClass).attr('class') === 'coupon_item selected') {
        $(parentClass).removeClass('selected');
    } else {
        $('.not_used .coupon_item').removeClass('selected');
        $(parentClass).addClass('selected');
    }

})

$('.exchange').off().on('click', 'button', function() {
    if ($('.exchange input').val() === '') {
        confirm('鍏戞崲鐮佷笉鑳戒负绌哄摝~');
        return;
    }
    connAddCoupon(function(db) {
        if (db && db.code == 0) {
            set_confirm_sec();
        } else {
            if(db.msg == 'couponcode error'){
                confirm('杈撳叆鏈夎锛岃閲嶆柊杈撳叆鍏戞崲鐮�');
            }else{
                confirm(db.msg);
            }
        }
    });
})

var sec_timer = '';
var sec = 3;
function set_confirm_sec(){
    coupon_confirm();
    sec_timer = window.setInterval(change_confirm_sec,1000);
}
function change_confirm_sec(){
    sec --;
    if(sec == 0){
        window.clearInterval(sec_timer);//鍘绘帀瀹氭椂鍣�
        initSec();
    }
    $('#coupon_confirm label').html(sec);
}
function initSec(){
    sec = 3;
    $('#coupon_confirm label').html(sec);
    $(".mcover").hide();
    $("#coupon_confirm").hide();
    $('#get_coupon').val('');
    goPage('unused',1);
}