<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<!--BootStrap设计的页面支持响应式的 -->
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
	<title>海尔玖康</title>
	<link rel='stylesheet' href='${path}css/bootstrap.min.css'>
	<link rel='stylesheet' href='${path}css/bootstrap-select.css'>
	<link rel='stylesheet' href='${path}css/form.css'>
	<link rel='stylesheet' href='${path}css/toastr.min.css'>
	<link href="${path}css/font-awesome.min.css" rel="stylesheet" />
	<%-- <link rel='stylesheet' href='${path}css/awesome-bootstrap-checkbox.css'> --%>
	<link rel="stylesheet" href="${path}css/build.css"/>
	<link rel="stylesheet" type="text/css" href="${path}css/radiodefault.css">
	<script src="${path}js/jQuery.js"></script>
	<script src="${path}js/toastr.min.js"></script>
	<script src="${path}js/bootstrap.min.js"></script>
	<script src="${path}js/bootstrap-select.js"></script>
	<script src="${path}js/defaults-zh_CN.min.js"></script>
	<%-- <script src="${path}js/plugins/validate/jquery.validate.min.js"></script>
    <script src="${path}js/plugins/validate/messages_zh.min.js"></script> --%>
	<style type="text/css">
		body{
			background-color:white;
		}
		.form-horizontal .form-control:focus{
			background: #e0e0e0;
			box-shadow: none;
			outline: 0 none;
		}
		.form-horizontal .form-control{
			box-shadow: none;
			padding: 0 20px 0 30px;
			transition: all 0.3s ease 0s;
		}
		.form-horizontal .form-group i{
			position: absolute;
			top: 10px;
			left: 25px;
			font-size: 17px;
			color: #c8c8c8;
			transition : all 0.5s ease 0s;
		}
		.form-horizontal .form-control:focus + i{
			color: #00b4ef;
		}
		.form-horizontal .fa-question-circle{
			display: inline-block;
			position: absolute;
			top: 12px;
			right: 60px;
			font-size: 20px;
			color: #808080;
			transition: all 0.5s ease 0s;
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
		<li data-target="#myCarousel" data-slide-to="3"></li>
	</ol>
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner" >
		<div class="item active" >
			<img src="${path}img/b1.png" class="img-responsive" alt="First slide" style="width:100%;">
		</div>
		<div class="item">
			<img src="${path}img/b2.png" class="img-responsive" alt="Second slide" style="width:100%;">
		</div>
		<div class="item">
			<img src="${path}img/b3.png" class="img-responsive" alt="Third slide" style="width:100%;">
		</div>
		<div class="item">
			<img src="${path}img/b4.png" class="img-responsive" alt="Third slide" style="width:100%;">
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
<div class="container-fluid" style="margin-top:5%">
	<div class="row" >
		<div class="col-xs-12">
			<form class="form-horizontal">
				<!-- <span class="heading">用户登录</span> -->
				<div class="form-group" style="margin-bottom: 5px;">
					<label  class="col-xs-4 control-label text-right"><font color="#27408B">名字：</font></label>
					<div class="col-xs-8 ">
						<input type="text" class="form-control" id="name" placeholder="请输入名字">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div>
				</div>
				<div class="form-group" style="margin-bottom: 5px;">
					<label  class="col-xs-4 control-label text-right"><font color="#27408B">手机号：</font></label>
					<div class="col-xs-8">
						<input type="text" class="form-control" id="tel" placeholder="请输入手机号">
						<i class="fa fa-mobile" aria-hidden="true" style="font-size: 23px;top: 8px;left: 26px;"></i>
					</div>
				</div>
				<div class="form-group" style="margin-bottom: 5px;">
					<label  class="col-xs-4 control-label text-right"><font color="#27408B">年龄：</font></label>
					<div class="col-xs-8">
						<input type="text" class="form-control" id="age" placeholder="请输入年龄">
						<i class="fa fa-calculator" aria-hidden="true" style="font-size: 13px;top: 12px;"></i>
					</div>
				</div>
				<div class="form-group" style="margin-bottom: 5px;">
					<label  class="col-xs-4 control-label text-right"><font color="#27408B">性别：</font></label>
					<div class="radio-inline col-xs-3 radio radio-info" >
						<input type="radio"  name="sex" value="1" checked />
						<label >男</label>
					</div>
					<div class="radio-inline col-xs-3 radio radio-info text-left">
						<input type="radio"  name="sex" value="0" />
						<label >女</label>
					</div>
				</div>
				<div class="form-group" style="margin-bottom: 5px;">
					<label  class="col-xs-4 control-label text-right"><font color="#27408B">资质：</font></label>
					<div class="col-xs-6">
						<select class="selectpicker " multiple title="请选择" style="text-align:center;" id="property" >
							<option value="1" >房贷</option>
							<option value="2" >保单</option>
							<option value="3" >公积金</option>
						</select>
					</div>
				</div>
				<div class="form-group" style="display:none; margin-bottom: 5px;" id="house">
					<label  class="control-label col-xs-12 text-left" ><font color="red">房贷情况：</font></label>
					<div class="form-group">
						<div class="radio-inline col-xs-6 radio radio-info" >
							<input type="radio"  name="houseRadio" value="1" class="" id="pledge"/>
							<label class="control-label">抵押</label>
						</div>
						<div class="radio-inline col-xs-4 radio radio-info">
							<input type="radio"  name="houseRadio" value="0" class="" id="houseLoan"/>
							<label class="control-label">贷款</label>
						</div>
						<div class="col-xs-6" style="margin-top:5px;"><font color="">已满月数：</font></div>
						<div class="col-xs-5">
							<input type="text" class="form-control" id="houseMonth" placeholder="单位（月）">
						</div>
					</div>
				</div>
				<div class="form-group" style="display:none; margin-bottom: 5px;" id="warranty">
					<label  class="control-label col-xs-12 text-left"><font color="red">保单情况：</font></label>
					<div class="form-group">
						<div class="radio-inline col-xs-6 radio radio-info" >
							<input type="radio"  name="warrantyRadio" value="1" class="" id="pingAn"/>
							<label >平安</label>
						</div>
						<div class="radio-inline col-xs-4 radio radio-info">
							<input type="radio"  name="warrantyRadio" value="0" class="" id="notPingAn"/>
							<label >非平安</label>
						</div>
						<div class="col-xs-6" style="margin-top:5px; margin-bottom: 5px;"><font color="">已缴月数：</font></div>
						<div class="col-xs-5">
							<input type="text" class="form-control" id="warrantyMonth" placeholder="单位（月）">
						</div>
						<div class="col-xs-6" style="margin-top:10px;"><font color="">已缴次数：</font></div>
						<div class="col-xs-5" style="margin-top:5px;">
							<input type="text" class="form-control" id="warrantyCount" placeholder="单位（次）">
						</div>
					</div>
				</div>
				<div class="form-group" style="display:none; margin-bottom: 5px;" id="money">
					<label  class="control-label col-xs-12 text-left"><font color="red">公积金情况：</font></label>
					<div class="form-group">
						<div class="col-xs-6" style="margin-top:5px;"><font color="">已缴月数：</font></div>
						<div class="col-xs-5">
							<input type="text" class="form-control" id="moneyYear" placeholder="单位（月）">
						</div>
						<div class="col-xs-6" style="margin-top:10px;"><font color="">月缴金额：</font></div>
						<div class="col-xs-5" style="margin-top:5px;">
							<input type="text" class="form-control" id="moneyNum" placeholder="单位（元）">
						</div>
					</div>
				</div>
				<div class="form-group" >
					<label  class="col-xs-4 control-label text-right"><font color="#27408B">预贷金额：</font></label>
					<div class="col-xs-8">
						<input type="text" class="form-control" id="loanAmount" placeholder="请输入预贷金额(元)">
						<%--<i class="fa fa-money" aria-hidden="true" style="font-size: 13px;top: 12px;left: 24px;"></i>--%>
					</div>
				</div>
				<div class="form-group">
					<!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
					<!-- <span class="text">Remember me</span> -->

					<button type="button" class="btn btn-info" id="submit">提交</button>

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
		"positionClass": "toast-center-center-xs",//弹出窗的位置
		"showDuration": "300",//显示的动画时间
		"hideDuration": "300",//消失的动画时间
		"timeOut": "2000", //展现时间
		"showEasing": "swing",//显示时的动画缓冲方式
		"hideEasing": "linear",//消失时的动画缓冲方式
		"showMethod": "fadeIn",//显示时的动画方式
		"hideMethod": "fadeOut" //消失时的动画方式
	};


	$("#submit").click(function(){
		var name = $("#name").val();
		var tel = $("#tel").val();
		var age = $("#age").val();
		var sex = $("input[name='sex']:checked").val();
		var houseRadio = $("input[name='houseRadio']:checked").val();
		var houseMonth = $("#houseMonth").val();
		var warrantyRadio = $("input[name='warrantyRadio']:checked").val();
		var warrantyMonth = $("#warrantyMonth").val();
		var warrantyCount = $("#warrantyCount").val();
		var moneyYear = $("#moneyYear").val();
		var moneyNum = $("#moneyNum").val();
		var loanAmount = $("#loanAmount").val();
		var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
		if(!name){
			toastr.error("请输入名字");
			return false;
		}else{
			if (name.length>10){
				toastr.error("请输入正确名字");
				return false;
			}
		}
		if(!tel){
			toastr.error("请输入手机号");
			return false;
		}
		if(!reg.test(tel)){
			toastr.error("手机号输入不正确");
			return false;
		}
		if(!age){
			toastr.error("请输入年龄");
			return false;
		}else{
			if (age.length>4){
				toastr.error("请输入正确年龄");
				return false;
			}
		}
		if(!sex){
			toastr.error("请选择性别");
			return false;
		}
		if(houseRadio&&!houseMonth){
			toastr.error("请输入房贷已满月数");
			return false;
		}else{
			if (isNaN(houseMonth)){
				toastr.error("请输入正确房贷已满月数");
				return false;
			}
			if (houseMonth.length>10){
				toastr.error("房贷已满月数需小于10位");
				return false;
			}
		}
		if(warrantyRadio&&!warrantyMonth){
			toastr.error("请输入保单已缴月数");
			return false;
		}else{
			if (isNaN(warrantyMonth)){
				toastr.error("请输入正确保单已缴月数");
				return false;
			}
			if (warrantyMonth.length>10){
				toastr.error("保单已缴月数需小于10位");
				return false;
			}
		}
		if(warrantyRadio&&!warrantyCount){
			toastr.error("请输入保单已缴次数");
			return false;
		}else{
			if (isNaN(warrantyCount)){
				toastr.error("请输入正确保单已缴次数");
				return false;
			}
			if (warrantyCount.length>10){
				toastr.error("保单已缴次数需小于10位");
				return false;
			}
		}
		if(loanAmount){
			if (loanAmount.length>14||isNaN(loanAmount)) {
				toastr.error("请输入正确贷款金额");
				return false;
			}
		}

		$.ajax({
			type:"post",
			url:"${path}credit/haierHandle.action",
			dataType: 'json',
			data :{
				name:name,
				tel:tel,
				age:age,
				sex:sex,
				houseRadio:houseRadio,
				houseMonth:houseMonth,
				warrantyRadio:warrantyRadio,
				warrantyMonth:warrantyMonth,
				warrantyCount:warrantyCount,
				moneyYear:moneyYear,
				moneyNum:moneyNum,
				loanAmount:loanAmount
			},
			success:function(data){
				if(data.code == '1'){
					window.location.href = "${path}home/gotoHome.action";
				}else if(data.code == '2'){
					toastr.error(data.msg);
				}else if(data.code == '3'){
					toastr.error(data.msg);
				}
			}
		});
	});
	/* $('.selectpicker').selectpicker('mobile'); */
	$('.selectpicker').on('changed.bs.select',function(e){
		var value = $('#property').val();
		$('#house').css('display','none');
		$('#warranty').css('display','none');
		$('#money').css('display','none');
		$("#pledge").prop("checked",false);
		$("#houseLoan").prop("checked",false);
		$("#pingAn").prop("checked",false);
		$("#notPingAn").prop("checked",false);
		for(var i=0;i<value.length;i++){
			if(value[i]=='1'){
				$("#pledge").prop("checked","checked");
				$('#house').css('display','block');
			}else if(value[i]=='2'){
				$("#pingAn").prop("checked","checked");
				$('#warranty').css('display','block');
			}else if(value[i]=='3'){
				$('#money').css('display','block');
			}
		}
	});
	$(".selectpicker").selectpicker({
		width:"110%",
	});


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
	});
	$('#myCarousel').carousel({
		interval: 3000
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