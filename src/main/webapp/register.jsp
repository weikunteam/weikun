<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	String path=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";	
%>
<html>
<head>
<meta charset="UTF-8">
<!--BootStrap设计的页面支持响应式的 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户注册</title>
<link rel='stylesheet' href='<%=path%>css/bootstrap.min.css'  media="screen"> 
<link rel='stylesheet' href='<%=path%>css/login1.css'>
<link rel='stylesheet' href='<%=path%>css/toastr.min.css'>
<link href="<%=path%>css/font-awesome.min.css" rel="stylesheet" />
<script src="<%=path%>js/jQuery.js"></script>
<script src="<%=path%>js/toastr.min.js"></script>
<script src="<%=path%>js/bootstrap.js"></script>
<script src="<%=path%>js/bootstrap.min.js"></script>
</head>
<body>
<img src="img/center.jpg" id="topimg" style="width:100%;"></img>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12">
            <form class="form-horizontal">
                <span class="heading">用户注册</span>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="请输入手机号">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码(以字母开头，长度在6~12之间，只能包含字母和数字)">
                    <i class="fa fa-lock"></i>
                    <!-- <a href="#" class="fa fa-question-circle"></a> -->
                </div>
              
                <div class="form-group" >                                
                    
                    
                    <div class="form-inline">                    
                    <input type="text" class="form-control" id="code" placeholder="请输入短信验证码" style="width:60%;float:left">
                   <!--  <i class="fa fa-lock"></i>  -->                    
                    <button type="button" class="btn btn-info" id="code">发送验证码</button>  
                    </div>                                                                
                </div>                                                                                                                                                           
                <div class="form-group">
                    <input type="text" class="form-control" id="recommend" placeholder="推荐码(选填)" style="width:60%;">
                   <!--  <i class="fa fa-lock"></i>  -->                   
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">Remember me</span> -->
                    <div class="form-inline">
                    <button type="button" class="btn btn-default" id="login">注册</button>
                    <button type="button" class="btn btn-default" style="color: #00b4ef;background: #F8F8FF;margin-left:20%" >登录</button>
                    </div>
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
	var tel = $("#inputEmail3").val();
	var pwd = $("#inputPassword3").val();	
	var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
	if(!tel){
		toastr.error("请输入手机号");	
		return false;
	}
	if(!reg.test(tel)){
		toastr.error("请输入正确手机号");	
		return false;
	}
	if(!pwd ){
		toastr.error("请输入密码");	
		return false;
	}
	
	$.ajax({
	    type:"post",
	    url:"<%=path%>login/login.action",
	    dataType: 'json',
	    data :{
	    	tel:tel,
	    	pwd:pwd
	    },
	    success:function(data){
	          if(data.code == '1'){
	        	  toastr.success(data.msg);
	          }else if(data.code == '2'){
	        	  toastr.error(data.msg);
	          }else if(data.code == '3'){
	        	  toastr.error(data.msg);
	          }   
	      }
	});
	});


</script>
</html>