<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	String path=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";	
%>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>
<link rel='stylesheet' href='<%=path%>css/bootstrap.min.css'> 
<link rel='stylesheet' href='<%=path%>css/login1.css'>
<link rel='stylesheet' href='<%=path%>css/toastr.min.css'>
<link href="<%=path%>css/font-awesome.min.css" rel="stylesheet" />
<script src="<%=path%>js/jQuery.js"></script>
<script src="<%=path%>js/toastr.min.js"></script>
</head>
<body>
<img src="img/center.jpg" id="topimg" style="width:100%;"></img>
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal">
                <span class="heading">用户登录</span>
                <div class="form-group">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="请输入手机号">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码">
                    <i class="fa fa-lock"></i>
                    <!-- <a href="#" class="fa fa-question-circle"></a> -->
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">Remember me</span> -->
                    <button type="button" class="btn btn-default" id="login">登录</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" class="btn btn-default" style="color: #00b4ef;background: #F8F8FF" >注册</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
toastr.options = {
		"closeButton": false, //是否显示关闭按钮
		"debug": false, //是否使用debug模式
		"positionClass": "toast-center-center",//弹出窗的位置
		"showDuration": "300",//显示的动画时间
		"hideDuration": "1000",//消失的动画时间
		"timeOut": "5000", //展现时间
		"extendedTimeOut": "1000",//加长展示时间
		"showEasing": "swing",//显示时的动画缓冲方式
		"hideEasing": "linear",//消失时的动画缓冲方式
		"showMethod": "fadeIn",//显示时的动画方式
		"hideMethod": "fadeOut" //消失时的动画方式
		};
$("#login").click(function(){
	$.ajax({
	    type:"post",
	    url:"<%=path%>login/login.action",
	    dataType: 'json',
	    data :{
	    	tel:$("#inputEmail3").val(),
	    	pwd:$("#inputPassword3").val()
	    },
	    success:function(data){
	          if(data){
	        	  toastr.success('登陆成功');
	          }else{
	        	  toastr.error('账户或密码错误');
	          }    
	      }
	});
	});


</script>
</html>