<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>H+ 后台主题UI框架 - 登录</title>
<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

<title>layui</title>
<!-- layUI 所需组件-->
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/layui.css" media="all">
<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<!-- H+ 所需组件-->
<link rel="shortcut icon" href="favicon.ico">
<link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
<link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
<link href="css/otherCSS.css" rel="stylesheet">
<script>if(window.top !== window.self){ window.top.location = window.location;}</script>
<script src="layui.js" charset="utf-8"></script>
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">H+</h1>

            </div>
            <h3>欢迎使用 H+</h3>
<!-- 				<form class="layui-form layui-form-pane1" id="form1" name="form1"
		style="display: none;"> -->
            <form class="layui-form m-t"  id="backLoginForm" name="backLoginForm"  action="<%=path%>backLogin/BackLogin.action" method="post">
            <%-- action="<%=path%>backLogin/BackLogin.action" method='post' --%>
                <div class="form-group">
                    <input type="text"  id="uBackGroundAccount" name="uBackGroundAccount" class="form-control" placeholder="用户名" required="" lay-verify="required|uBackGroundAccount">
                </div>
                <div class="form-group">
                    <input type="password"  id="uBackGroundPsw"  name="uBackGroundPsw"  class="form-control" placeholder="密码" required="" lay-verify="required">
                </div>
                <a href="<%=path%>systemAction/getRoleList.action">555</a>
                <button lay-submit=""   id="backLogin" lay-filter="backLogin" class="layui-btn  layui-btn-submit block full-width m-b">登 录</button>
					<!-- class="layui-btn  layui-btn-submit "  -->
<!-- class="btn layui-btn  layui-btn-submit  block full-width m-b" -->
                <p class="text-muted text-center"> <a href="login.html#"><small>忘记密码了？</small></a> | <a href="register.html">注册一个新账号</a>
                </p>
            </form>
        </div>
    </div>
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <script>
    layui.use(['layer','form'],function(){
        var form=layui.form;
        var layer=layui.layer;
        $=layui.jquery;

             form.verify({
            	 uBackGroundAccount: function(value){
						var code=0;
			            $.ajax({
			                type: "get",
			                url: '<%=path%>backLogin/checkAccount.action',
			                async: false,//同步提交。不设置则默认异步，异步的话，最后执行ajax
			                data: {uBackGroundAccount:$("#uBackGroundAccount").val()},
			                success: function (ev) {
			                    code = ev.code;
			                }
			            });
						if(code==0){
							return "该后台账号不存在!请重新输入";
						}
      }     
        });     
        form.on('submit(backLogin)', function(data){ 
<%--                 $.ajax({   
                    url:'<%=path%>backLogin/BackLogin.action',       
                    type:'POST',  
                    data:{
                    	uBackGroundAccount:data.field.uBackGroundAccount,
                    	uBackGroundPsw:data.field.uBackGroundPsw
                    },                
                    success:function(res){       
                    	  if(res.code==1){
                    		  alert("success"); 
                    		  window.location.href = "<%=path%>/backgroundmain.jsp";
                    	  }else{
                    		  alert("faild"); 
                    	  }
                    	 
                    }
                        }) --%>
                        //return false;
                });   
     });

    </script>
</body>
</html>
