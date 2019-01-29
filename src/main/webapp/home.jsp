<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<!--BootStrap设计的页面支持响应式的 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<title>业务办理</title>
<link rel='stylesheet' href='${path}css/bootstrap.min.css'> 
<link rel='stylesheet' href='${path}css/toastr.min.css'>
<link href="${path}css/font-awesome.min.css" rel="stylesheet" />
<script src="${path}js/jQuery.js"></script>
<script src="${path}js/toastr.min.js"></script>
<script src="${path}js/bootstrap.js"></script>
<script src="${path}js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<style>
.center-vertical{

position: relative;

top: 50%;

transform: translateY(50%);

}
#topImg{
display:none;
position:absolute;
z-index:2;
width:100%;
height:100%;
background:#000;
filter:alpha(Opacity=80);
-moz-opacity:0.5;
opacity: 0.6;
}
</style>
</head>
<body>
<div id="topImg">
<img  src="${path}img/share.jpg" style="width:100%;"  ></img>
</div>
<div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner" ">
		<div class="item active" >
			<img src="${path}img/ac1.jpg" class="img-responsive" alt="First slide" style="width:100%;">
		</div>
		<div class="item">
			<img src="${path}img/ac1.jpg" class="img-responsive" alt="Second slide" style="width:100%;">
		</div>
		<div class="item">
			<img src="${path}img/ac1.jpg" class="img-responsive" alt="Third slide" style="width:100%;">
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<!-- <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a> -->
</div>
<!-- <div class="container-fluid">
<div class="row">
<div class="col-xs-12"> -->
<div class="form-group"> 
<ul id="myTab" class="nav nav-pills" role="tablist" style="text-align:center">
    <li class="active" style="width:49.6%"><a href="#bulletin" role="tab" data-toggle="pill">贷款</a></li>
    <li style="width:49.6%"><a href="#rule" role="tab" data-toggle="pill">信用卡</a></li>
</ul>
</div>
<!-- </div>
</div>
</div> -->

<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active" id="bulletin">
<div class="container-fluid">
<div class="row">
<div class="col-xs-12">
<div class="form-group"> 
<div class="card" >
<div class="col-xs-3">
    <img src="${path}img/logo.jpg" alt="Card image" style="width:100%">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">平安新一贷</h5>
    <p class="card-text"><font style="color:red">额度：500-200000</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="${path}xinyidaiHandle.jsp" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">咨询</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary shareBtn" style="padding-top:20%;padding-bottom:20%;" id="shareBtn">分享</a>
      </div>
      </div>
    </div>
    </div>
    </div>
    </div>

<div class="col-xs-12">
<div class="form-group"> 
<div class="card" >
<div class="col-xs-3">
    <img src="${path}img/logo.jpg" alt="Card image" style="width:100%">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">兴业消费金融</h5>
    <p class="card-text"><font style="color:red">额度：500-200000</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="${path}xingyeHandle.jsp" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">咨询</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary shareBtn" style="padding-top:20%;padding-bottom:20%;" id="shareBtn">分享</a>
      </div>
      </div>
    </div>
    </div>
    </div>
    </div>

<div class="col-xs-12">
<div class="form-group"> 
<div class="card" >
<div class="col-xs-3">
    <img src="${path}img/logo.jpg" alt="Card image" style="width:100%">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">中行消费金融</h5>
    <p class="card-text"><font style="color:red">额度：500-200000</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="${path}zhonghangHandle.jsp" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">咨询</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary shareBtn" style="padding-top:20%;padding-bottom:20%;" id="shareBtn">分享</a>
      </div>
      </div>
    </div>
    </div>
    </div>
    </div>
    
<div class="col-xs-12">
<div class="form-group"> 
<div class="card" >
<div class="col-xs-3">
    <img src="${path}img/logo.jpg" alt="Card image" style="width:100%">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">海尔-玖康</h5>
    <p class="card-text"><font style="color:red">额度：500-200000</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="${path}haierHandle.jsp" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">咨询</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary shareBtn" style="padding-top:20%;padding-bottom:20%;" id="shareBtn">分享</a>
      </div>
      </div>
    </div>
    </div>
    </div>
    </div>
     
<div class="col-xs-12">
<div class="form-group">
<div class="card" >
<div class="col-xs-3">
    <img src="${path}img/logo.jpg" alt="Card image" style="width:100%">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">小额贷款</h5>
    <p class="card-text"><font style="color:red">额度：500-200000</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="${path}smallamountHandle.jsp" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary shareBtn" style="padding-top:20%;padding-bottom:20%;" id="shareBtn">分享</a>
      </div>
      </div>
    </div>
    </div>
    </div>
    </div>
  </div>
</div>
</div>
    <div class="tab-pane fade" id="rule"><div class="container-fluid">
<div class="row">
<div class="col-xs-12">
<div class="form-group"> 
<div class="card" >
<div class="col-xs-3" >
    <img src="${path}img/招商银行.gif" alt="Card image"  style="width:150%;margin-top:20%;">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">招商银行信用卡</h5>
    <p class="card-text"><font style="color:red">通过率：65%</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary shareBtn" style="padding-top:20%;padding-bottom:20%;" id="shareBtn">分享</a>
      </div>
      </div>
    </div>
    </div>
    </div>
    </div>

<div class="col-xs-12">
<div class="form-group"> 
<div class="card" >
<div class="col-xs-3 ">
    <img src="${path}img/兴业银行.gif" alt="Card image" style="width:150%;margin-top:20%;">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">兴业银行信用卡</h5>
    <p class="card-text"><font style="color:red">通过率：55%</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary shareBtn" style="padding-top:20%;padding-bottom:20%;" id="shareBtn">分享</a>
      </div>
      </div>
    </div>
    </div>
    </div>
    </div>

<div class="col-xs-12">
<div class="form-group"> 
<div class="card" >
<div class="col-xs-3">
    <img src="${path}img/民生银行.gif" alt="Card image" style="width:150%;margin-top:20%;">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">民生银行信用卡</h5>
    <p class="card-text"><font style="color:red">通过率：65%</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary shareBtn" style="padding-top:20%;padding-bottom:20%;" id="shareBtn">分享</a>
      </div>
      </div>
    </div>
    </div>
    </div>
    </div>
    
<div class="col-xs-12">
<div class="form-group"> 
<div class="card" >
<div class="col-xs-3">
    <img src="${path}img/平安银行.gif" alt="Card image" style="width:150%;margin-top:20%;">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">平安银行信用卡</h5>
    <p class="card-text"><font style="color:red">通过率：30%</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary shareBtn" style="padding-top:20%;padding-bottom:20%;" id="shareBtn">分享</a>
      </div>
      </div>
    </div>
    </div>
    </div>
    </div>
     
<div class="col-xs-12">
<div class="form-group">
<div class="card" >
<div class="col-xs-3">
    <img src="${path}img/中信银行.gif" alt="Card image" style="width:150%;margin-top:20%;" >
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">中信银行信用卡</h5>
    <p class="card-text"><font style="color:red">通过率：15%</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary shareBtn" style="padding-top:20%;padding-bottom:20%;" id="shareBtn">分享</a>
      </div>
      </div>
    </div>
    </div>
    </div>
    </div>
  </div>
</div>
</div>
<!--     <div class="tab-pane fade" id="forum">论坛内容面板</div>
    <div class="tab-pane fade" id="security">安全内容面板</div>
    <div class="tab-pane fade" id="welfare">公益内容面板</div> -->
</div>

</body>
<script>
$('#myCarousel').carousel({
    interval: 3000
})
</script>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"${path}share/share.action",
			type:"post",
			data:{
				"url":location.href.split('#')[0]// 获取页面当前链接
			},
			dataType:"json",
			async: false,
			success: function(data){
				 wx.config({
				    debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
				    appId:data["appid"], // 必填，公众号的唯一标识
				    timestamp: data["timestamp"], // 必填，生成签名的时间戳
				    nonceStr: data["nonceStr"], // 必填，生成签名的随机串
				    signature: data["signature"],// 必填，签名
				    jsApiList: ["onMenuShareTimeline"
				                ,"onMenuShareQQ"
				                ,"onMenuShareAppMessage"] // 必填，需要使用的JS接口列表
				});
 
			}
 
		});
 
		wx.ready(function () {
			//分享到朋友
			wx.onMenuShareAppMessage({
	    	    title: '中天商务', // 分享标题
	    	    desc: '测试分享功能', // 分享描述
	    	    link: location.href.split('#')[0], // 分享链接
	    	    imgUrl: 'http://23t46112h9.iok.la/OfficialAccounts/img/ac1.jpg', // 分享图标
	    	    type: 'link', // 分享类型,music、video或link，不填默认为link
	    	    success: function () { 
	    	       /*  toastr.error("分享成功");	 */
	    	    	$("#topImg").css("display","none");
	    	    },
	    	    cancel: function () { 
	    	       /*  toastr.error("未分享!");	 */
	    	    	$("#topImg").css("display","none");
	    	    }
			});
			//分享到QQ
			wx.onMenuShareQQ({
				title: '中天商务', // 分享标题
				desc: '测试分享功能', // 分享描述
				link: location.href.split('#')[0], // 分享链接
				imgUrl: 'http://23t46112h9.iok.la/OfficialAccounts/img/ac1.jpg', //  分享图标
				success: function () {
					// 用户确认分享后执行的回调函数
					$("#topImg").css("display","none");
				},
				cancel: function () {
					// 用户取消分享后执行的回调函数
					$("#topImg").css("display","none");
				}
			});
			wx.onMenuShareTimeline({
	    	    title: '中天商务', // 分享标题
	    	    desc: '测试分享功能', // 分享描述
	    	    link: location.href.split('#')[0], // 分享链接
	    	    imgUrl: 'http://23t46112h9.iok.la/OfficialAccounts/img/ac1.jpg', // 分享图标
	    	    type: 'link', // 分享类型,music、video或link，不填默认为link
	    	    success: function () { 
	    	       /*  toastr.error("分享成功");	 */
	    	    	$("#topImg").css("display","none");
	    	    },
	    	    cancel: function () { 
	    	       /*  toastr.error("未分享!");	 */
	    	    	$("#topImg").css("display","none");
	    	    }
			});
			
		});
		
		wx.error(function(res){
            /* alert('error') */
            // config信息验证失败会执行error函数，如签名过期导致验证失败，具体错误信息可以打开config的debug模式查看，也可以在返回的res参数中查看，对于SPA可以在这里更新签名。
        }); 
		
		$(".shareBtn").on("click",function(){
			$("#topImg").css("display","block");
		});
		$("#topImg").on("click",function(){
			$("#topImg").css("display","none");
		});
	});
	

	$(document).ready(function(){  
	                var startX,endX;//声明触摸的两个变量  
	                var offset = 30;//声明触摸距离的变量  
	                $('.carousel-inner').on('touchstart',function (e) {  
	                    startX= e.originalEvent.touches[0].clientX;//当触摸开始时的x坐标；  
	                });  
	                $('.carousel-inner').on('touchmove',function (e) {  
	                    endX = e.originalEvent.touches[0].clientX;//当触摸离开时的x坐标；  
	                });  
	                $('.carousel-inner').on('touchend',function (e) {  
	                    //当触摸完成时进行的事件；  
	                    var distance = Math.abs(startX - endX);//不论正负，取值为正值；  
	                    if (distance > offset){  
	                        if(startX > endX){  
	                            $('#myCarousel').carousel('next');//当开始的坐标大于结束的坐标时，滑动到下一附图  
	                        }else{  
	                            $('#myCarousel').carousel('prev');//当开始的坐标小于结束的坐标时，滑动到上一附图  
	  
	                        }  
	                                  
	                    }  
	                });   
	            }); 
</script>
</html>