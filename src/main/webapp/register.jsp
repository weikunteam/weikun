<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <% 
	String path=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";	
%> --%>
<html>
<head>
<meta charset="UTF-8">
<!--BootStrap设计的页面支持响应式的 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<title>用户注册</title>
<link rel='stylesheet' href='${path}css/bootstrap.min.css'  media="screen"> 
<link rel='stylesheet' href='${path}css/login1.css'>
<link rel='stylesheet' href='${path}css/toastr.min.css'>
<link href="${path}css/font-awesome.min.css" rel="stylesheet" />
<script src="${path}js/jQuery.js"></script>
<script src="${path}js/toastr.min.js"></script>
<script src="${path}js/bootstrap.js"></script>
<script src="${path}js/bootstrap.min.js"></script>

</head>
<body>
<div class="form-group">
<img src="${path}img/top.jpg" id="topimg" style="width:100%;"></img>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12">
            <form class="form-horizontal">
                <!-- <span class="heading">用户注册</span> -->
                <div class="form-group">
                    <input type="text" class="form-control" id="inputTel" placeholder="请输入手机号">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码(字母开头的6~12为字母数字组合)">
                    <i class="fa fa-lock"></i>
                    <!-- <a href="#" class="fa fa-question-circle"></a> -->
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="inputPassword4" placeholder="请确认密码">
                    <i class="fa fa-lock"></i>
                    <!-- <a href="#" class="fa fa-question-circle"></a> -->
                </div>              
                <div class="form-group" >                                                                      
                    <div class="form-inline">                    
                    <input type="text" class="form-control" id="code" placeholder="请输入短信验证码" style="width:55%;float:left">
                   <!--  <i class="fa fa-lock"></i>  -->                    
                    <button type="button" class="btn btn-info" id="checkCode">发送验证码</button>  
                    </div>                                                                
                </div>                                                                                                                                                           
                <div class="form-group">
                    <input type="text" class="form-control" id="recommend" placeholder="推荐码(选填)" style="width:60%;" value="${param.code}">
                   <!--  <i class="fa fa-lock"></i>  -->                   
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">Remember me</span> -->
                    <div class="form-inline">
                    <button type="button" class="btn btn-default" id="register">注册</button>
                    <button type="button" class="btn btn-default" style="color: #00b4ef;background: #F8F8FF;margin-left:20%" id="login">登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<script>
var path = "${path}";
</script>
<script src="${path}js/user/register.js"></script>
<script type="text/javascript">
toastr.options = {
		"closeButton": false, //是否显示关闭按钮
		"debug": false, //是否使用debug模式
		"positionClass": "toast-center-center-xs",//弹出窗的位置
		"showDuration": "300",//显示的动画时间
		"hideDuration": "1000",//消失的动画时间
		"timeOut": "5000", //展现时间
		"extendedTimeOut": "1000",//加长展示时间
		"showEasing": "swing",//显示时的动画缓冲方式
		"hideEasing": "linear",//消失时的动画缓冲方式
		"showMethod": "fadeIn",//显示时的动画方式
		"hideMethod": "fadeOut" //消失时的动画方式
		};

$("input,textarea").on("blur",function(){
    setTimeout(function(){
        window.scrollTo(0,0);
    },100)
}).on('focus',function(){
    var clientHeight = document.documentElement.clientHeight || document.body.clientHeight;
    var offsetTop = $(this).offset().top - (clientHeight / 4);
    setTimeout(function(){
        window.scrollTo(0,offsetTop);
    },100)
})
</script>
</html>