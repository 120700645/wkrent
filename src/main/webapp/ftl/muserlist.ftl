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
        .table th, .table td {
            text-align: center;
            vertical-align: middle!important;
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
                        悟空租车OA系统
                    </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
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
                        <li class="list-group-item"><a href="${base}/rentOrder/status/1">未确认订单</a></li>
                        <li class="list-group-item"><a href="${base}/manage/orderList/1">提车管理</a></li>
                        <li class="list-group-item"><a href="${base}/manage/orderList/1">还车管理</a></li>
                        <li class="list-group-item"><a href="${base}/manage/orderList/1">违章管理</a></li>
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
                        <li class="list-group-item"><a href="${base}/car/carList/1">所有车辆</a></li>
                        <li class="list-group-item"><a href="${base}/car/add">添加车辆</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingThree">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        员工管理
                    </a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingThree">
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><a href="${base}/users/lists/1">用户列表</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-10">

        <table class="table table-bordered">
            <thead class="bg-primary">
            <td class="text-center">用户编号</td>
            <td class="text-center">联系方式</td>
            <td class="text-center">真实姓名</td>
            <td class="text-center">身份证号</td>
            <td class="text-center">是否冻结</td>
            <td class="text-center">可用余额</td>
            <td class="text-center">悟空币</td>
            <td class="text-center">积分</td>
            <td class="text-center">会员等级</td>
            </thead>
        <#list allUserByPage.list as user>
            <tr>
                <td class="text-center ms_carId">${user.userId}</td>
                <td class="text-center">${user.userTel}</td>
                <td class="text-center">${user.userName}</td>
                <td class="text-center">${user.userCard}</td>
                <td class="text-center">${user.userCount}</td>
                <td class="text-center">${user.userFreeze}</td>
                <td class="text-center">${user.userUseable}</td>
                <td class="text-center">${user.userWkb}</td>
                <td class="text-center">${user.userNum}</td>
                <td class="text-center">${user.userLeavel}</td>
                <td style="text-align: center;">
                    <button class="delete_car">删除</button>
                </td>
            </tr>
        </#list>
        </table>
    <#if page==1>
        <a href="${base}/car/carList/${page}">上一页</a>
    <#else>
        <a href="${base}/car/carList/${page-1}">上一页</a>
    </#if>
    ${page}/${allUserByPage.pages}
    <#if page==allUserByPage.pages >
        <a href="${base}/car/carList/${page}">下一页</a>
    <#else>
        <a href="${base}/car/carList/${page+1}">下一页</a>
    </#if>

    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${base}/js/bootstrap.min.js"></script>

</body>
</html>
<script type="text/javascript">

    $(function () {
        $(".delete_car").click(function () {
            var carId = $(this).parent().parent().find(".ms_carId").text();
            if(confirm("确认要删除吗?")){
                $.post("${base}/car/deleteCar",{"carId":carId},function(data){
                    if(data.code == 0){
                        alert("删除成功!");
                        window.location.href="${base}/car/carList/${page}";
                    }
                })
            }
        })

    })




</script>
