<!DOCTYPE html>
<html lang="zh-CN">
<head>
<#assign base=rc.contextPath />
    <base id="base" href="${base}">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>悟空租车OA系统</title>

    <!-- Bootstrap -->
    <link href="${base}/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <style type="text/css">
        .approved{
            width:80px;
            height:30px;
            background:#dc0000;
            cursor:not-allowed;
        }
        .unapprove{
            width:80px;
            height:30px;
            background:#000000;
            cursor:pointer;
        }
    </style>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">悟空租车OA系统</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">系统公告</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">杨景文QF000255 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">修改用户信息</a></li>
                        <li><a href="#">修改密码</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">退出系统</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container-fluid">
    <div class="panel-group col-md-2" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
                <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        OA系统
                    </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">系统首页</li>
                        <li class="list-group-item">系统公告</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingTwo">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        订单管理
                    </a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><a href="${base}/manage/orderList/1">所有订单</a></li>
                        <li class="list-group-item"><a href="${base}/rentOrder/status/1">管理订单</a></li>
                        <li class="list-group-item"><a href="${base}/manage/orderList/1"></a></li>
                        <li class="list-group-item"><a href="${base}/manage/orderList/1"></a></li>
                        <li class="list-group-item"><a href="${base}/manage/orderList/1"></a></li>
                        <li class="list-group-item"><a href="${base}/manage/orderList/1">已确认订单</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingThree">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        车辆管理
                    </a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><a href="${base}/car/add">添加车辆</a></li>
                        <li class="list-group-item"></li>
                        <li class="list-group-item">补签审批</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingThree">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        网点管理
                    </a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">服务网点列表</li>
                        <li class="list-group-item">添加服务网点</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingThree">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        用户管理
                    </a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">游客管理</li>
                        <li class="list-group-item">会员管理</li>
                        <li class="list-group-item">管理员管理</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-10">

        <table class="table table-bordered">
            <thead class="bg-primary">
            <td>id</td>
            <td>订单号</td>
            <td>取车点</td>
            <td>还车点</td>
            <td>取车时间</td>
            <td>还车时间</td>
            <td>租金</td>
            <td>保险</td>
            <td>手续费</td>
            <td>抵扣</td>
            <td>总计</td>
            <td>状态</td>
            </thead>
        <#list pageByStatus.list as page>
            <tr>
                <td class="order_id">${page.orderId}</td>
                <td>${page.orderNum}</td>
                <td>${page.takePlace.placeName}</td>
                <td>${page.returnPlace.placeName}</td>
                <td>${page.orderTakeTime?string("yyyy年MM月dd日")}</td>
                <td>${page.orderReturnTime?string("yyyy年MM月dd日")}</td>
                <td>${page.orderPrice}</td>
                <td>${page.orderInsurance}</td>
                <td>${page.orderCharge}</span> </td>
                <td>${page.orderDiscount}</td>
                <td>${page.orderTotal}</td>
                <td><button class="button-status">${page.orderStatus}</button></td>
            </tr>
        </#list>
        </table>
        <#if page==1>
            <a href="${base}/manage/orderList/${page}">上一页</a>
        <#else>
            <a href="${base}/manage/orderList/${page-1}">上一页</a>
        </#if>
        ${page}/${pageByStatus.pages}
        <#if page==pageByStatus.pages >
            <a href="${base}/manage/orderList/${page}">下一页</a>
        <#else>
            <a href="${base}/manage/orderList/${page+1}">下一页</a>
        </#if>

        <a href="${base}/manage/orderList/${page-1}">上一页</a>&nbsp;&nbsp;<a href="#">下一页</a>
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${base}/js/bootstrap.min.js"></script>
</body>
</html>
<script>
    $(function(){
        $(".button-status").each(function(){
            var num = $(this).text();
            if(num == 0){
                $(this).text("未确认").addClass("unapprove");
            }else if(num == 1){
                $(this).text("已确认").addClass("approved");
            }
        })
    })

    $(".button-status").click(function(){
        var num = $(this).text();
        //alert(num);
        var change = $(this);
        var orderId = change.parent().parent().find(".order_id").text();
        //alert(orderId);
        if(confirm("请确认用户是否已付款,如已付款,请及时查询是否有该种车辆,如有请通知用户来网点提车!")){
            if(num == "未确认"){
                $.post("${base}/rentOrder/check",{"num":num,"orderId":orderId},function(data){
                    if(data.code == 0){
                        window.location.href="${base}/rentOrder/status/1";
                    }
                })
            }
        }
    })
</script>