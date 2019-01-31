<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<!--BootStrap设计的页面支持响应式的 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<title>平安新一贷</title>
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
</style>
</head>
<body>
<div class="container">
		<h3 class="page-header">平安新一贷<small>产品优势</small></h3>
		<p><!-- <abbr title="前端CSS框架" class="initialism">BootstrapWeb</abbr>  -->
		额度高：最高可贷50万<br>
		利息低：6厘到8厘6<br>
		无需担保：纯信用，免除抵押和担保的麻烦<br>
		申请便捷：只需到一次银行，签署一份合同<br>
		时效承诺：3-5个工作日、资料齐全最快一天放款<br>
		周期长：可自由选择12/24/36个月还款期限，优良职业最长可达48个月
		</p>
	</div>
<div class="container-fluid" style="margin-top:5%">
    <div class="row" >
        <div class="col-xs-12">
            <form class="form-horizontal">
                <!-- <span class="heading">用户登录</span> -->
                <div class="form-group">
        		<label  class="col-xs-4 control-label text-center"><font color="#27408B">名字：</font></label>
        		<div class="col-xs-8">
            	<input type="text" class="form-control" id="name" placeholder="请输入名字">
        		</div>
    			</div>
				<div class="form-group">
					<label  class="col-xs-4 control-label text-center"><font color="#27408B">手机号：</font></label>
					<div class="col-xs-8">
						<input type="text" class="form-control" id="tel" placeholder="请输入手机号">
					</div>
				</div>
                <div class="form-group">
        		<label  class="col-xs-4 control-label text-center"><font color="#27408B">年龄：</font></label>
        		<div class="col-xs-8">
            	<input type="text" class="form-control" id="age" placeholder="请输入年龄">
        		</div>
    			</div>
    			<div class="form-group">
    			<label  class="col-xs-4 control-label text-center"><font color="#27408B">性别：</font></label>
                <div class="radio-inline col-xs-3 radio radio-info" >
				  <input type="radio"  name="sex" value="1" checked />
				  <label >男</label>
				</div>
				<div class="radio-inline col-xs-3 radio radio-info text-left">
				  <input type="radio"  name="sex" value="0" />
				  <label >女</label>
				</div>
				</div>
				<div class="form-group">
                	<label  class="col-xs-4 control-label text-center"><font color="#27408B">资质：</font></label>
                	<div class="col-xs-6">
                	<select class="selectpicker " multiple title="请选择" style="text-align:center;" id="property" >
    				<option value="1" >房贷</option>
    				<option value="2" >保单</option>
    				<option value="3" >公积金</option>                           
					</select>
                	</div>                  
                </div>
                <div class="form-group" style="display:none;" id="house">
        			<label  class="control-label col-xs-12 text-left" ><font color="red">房贷情况：</font></label>
        			<div class="form-group">
        			<div class="radio-inline col-xs-6 radio radio-info" >
				  	<input type="radio"  name="houseRadio" value="1" class="" id="pledge"/>
				  	<label class="control-label">抵押</label>
					</div>
					<div class="radio-inline col-xs-4 radio radio-info">
				  	<input type="radio"  name="houseRadio" value="0" class=""/>
				  	<label class="control-label">贷款</label>
					</div>					
					<div class="col-xs-6" style="margin-top:5px;"><font color="">已满月数：</font></div>					
        			<div class="col-xs-5">       			
            		<input type="text" class="form-control" id="houseMonth" placeholder="单位（月）">
            		</div>        			
        			</div>
    			</div>
    			<div class="form-group" style="display:none;" id="warranty">
        			<label  class="control-label col-xs-12 text-left"><font color="red">保单情况：</font></label>
        			<div class="form-group">
        			<div class="radio-inline col-xs-6 radio radio-info" >
				  	<input type="radio"  name="warrantyRadio" value="1" class="" id="pingAn"/>
				  	<label >平安</label>
					</div>
					<div class="radio-inline col-xs-4 radio radio-info">
				  	<input type="radio"  name="warrantyRadio" value="0" class=""/>
				  	<label >非平安</label>
					</div>					
					<div class="col-xs-6" style="margin-top:5px;"><font color="">已缴月数：</font></div>					
        			<div class="col-xs-5">       			
            		<input type="text" class="form-control" id="warrantyMonth" placeholder="单位（月）">
            		</div>
            		<div class="col-xs-6" style="margin-top:10px;"><font color="">已缴次数：</font></div>					
        			<div class="col-xs-5" style="margin-top:5px;">       			
            		<input type="text" class="form-control" id="warrantyCount" placeholder="单位（次）">
            		</div>         			
        			</div>
    			</div>
    			<div class="form-group" style="display:none;" id="money">
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
    			<div class="form-group">
        		<label  class="col-xs-4 control-label text-center"><font color="#27408B">预贷金额：</font></label>
        		<div class="col-xs-8">
            	<input type="text" class="form-control" id="loanAmount" placeholder="请输入预贷金额(元)">
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
		"positionClass": "toast-center-centertwo-xs",//弹出窗的位置
		"showDuration": "300",//显示的动画时间
		"hideDuration": "1000",//消失的动画时间
		"timeOut": "5000", //展现时间
		"extendedTimeOut": "1000",//加长展示时间
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
	}
	if(!sex){
		toastr.error("请选择性别");	
		return false;
	}
	if(houseRadio&&!houseMonth){
		toastr.error("请输入房贷已满月数");
		return false;
	}
	if(warrantyRadio&&!warrantyMonth){
		toastr.error("请输入保单已缴月数");
		return false;
	}
	if(warrantyRadio&&!warrantyCount){
		toastr.error("请输入保单已缴次数");
		return false;
	}	
	
	$.ajax({
	    type:"post",
	    url:"${path}credit/xinyidaiHandle.action",
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
	$("#pledge").removeAttr("checked");
	$("#pingAn").removeAttr("checked");
	 for(var i=0;i<value.length;i++){
		if(value[i]=='1'){
			$("#pledge").attr("checked","checked");
			$('#house').css('display','block');
		}else if(value[i]=='2'){
			$("#pingAn").attr("checked","checked");
			$('#warranty').css('display','block');
		}else if(value[i]=='3'){
			$('#money').css('display','block');
		}
	} 
});
$(".selectpicker").selectpicker({
	width:"auto",
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
})
</script>
</html>