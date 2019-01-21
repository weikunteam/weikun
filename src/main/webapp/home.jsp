<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<!--BootStrap设计的页面支持响应式的 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>业务办理</title>
<link rel='stylesheet' href='${path}css/bootstrap.min.css'> 
<link rel='stylesheet' href='${path}css/toastr.min.css'>
<link href="${path}css/font-awesome.min.css" rel="stylesheet" />
<script src="${path}js/jQuery.js"></script>
<script src="${path}js/toastr.min.js"></script>
<script src="${path}js/bootstrap.js"></script>
<script src="${path}js/bootstrap.min.js"></script>
<style>
.center-vertical{

position: relative;

top: 50%;

transform: translateY(50%);

}
</style>
</head>
<body>

<div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner" >
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
    <img src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">新一贷</h5>
    <p class="card-text"><font style="color:red">额度：500-200000</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">分享</a>
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
    <img src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">新一贷</h5>
    <p class="card-text"><font style="color:red">额度：500-200000</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">分享</a>
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
    <img src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">新一贷</h5>
    <p class="card-text"><font style="color:red">额度：500-200000</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">分享</a>
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
    <img src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">新一贷</h5>
    <p class="card-text"><font style="color:red">额度：500-200000</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">分享</a>
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
    <img src="http://static.runoob.com/images/mix/img_avatar.png" alt="Card image" style="width:100%">
    </div>
    <div class="col-xs-9">
    <div class="col-xs-8"> 
    <div class="card-body">
    <div style="">
    <h5 class="card-title">新一贷</h5>
    <p class="card-text"><font style="color:red">额度：500-200000</font></p>
    </div>
     </div>
     </div>
     <div class="col-xs-1">
     <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">申请</a>
      </div>
      <div class="form-group">  
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">分享</a>
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
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">分享</a>
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
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">分享</a>
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
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">分享</a>
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
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">分享</a>
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
      <a href="#" class="btn btn-primary" style="padding-top:20%;padding-bottom:20%;">分享</a>
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
</html>