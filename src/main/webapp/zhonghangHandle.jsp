<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<!--BootStrap设计的页面支持响应式的 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>中行消费金融</title>
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
<style type="text/css">
body{
background-color:white;
}
</style>
</head>
<body>
<div class="container">
		<h3 class="page-header">中行消费金融<small>产品优势</small></h3>
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
            	<input type="text" class="form-control" id="firstname" placeholder="请输入名字">
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
				  <input type="radio"  name="sex" value="1" checked class=""/>
				  <label for="sex1">男</label>
				</div>
				<div class="radio-inline col-xs-3 radio radio-info text-left">
				  <input type="radio"  name="sex" value="0" class=""/>
				  <label for="sex2">女</label>
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
        			<label  class="col-xs-4 control-label text-center"><font color="#27408B">按揭月数：</font></label>
        			<div class="col-xs-6">
            		<input type="text" class="form-control" id="age" placeholder="房贷已按揭月数">
        			</div>
    			</div>
    			<div class="form-group" style="display:none;" id="warranty">
        			<label  class="col-xs-4 control-label text-center"><font color="#27408B">已缴次数：</font></label>
        			<div class="col-xs-6">
            		<input type="text" class="form-control" id="age" placeholder="保单已缴次数">
        			</div>
    			</div>
    			<div class="form-group" style="display:none;" id="money">
        			<label  class="col-xs-4 control-label text-center"><font color="#27408B">已缴年数：</font></label>
        			<div class="col-xs-6">
            		<input type="text" class="form-control" id="age" placeholder="公积金已缴年数">
        			</div>
    			</div>
    			<div class="form-group">
        		<label  class="col-xs-4 control-label text-center"><font color="#27408B">预贷金额：</font></label>
        		<div class="col-xs-8">
            	<input type="text" class="form-control" id="getMoney" placeholder="请输入预贷金额(元)">
        		</div>
    			</div>
                 <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <!-- <span class="text">Remember me</span> -->
                   
                    <button type="button" class="btn btn-info" id="login">提交</button>
                    
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
	    url:"${path}login/login.action",
	    dataType: 'json',
	    data :{
	    	tel:tel,
	    	pwd:pwd
	    },
	    success:function(data){
	          if(data.code == '1'){
	        	  if("${param.isUserCenter}"==1){
	        		  window.location.href = "${path}userCenter/gotoUserCenter.action";
	        	  }else{
	        		  window.location.href = "${path}home/gotoHome.action"; 
	        	  }	        	  
	          }else if(data.code == '2'){
	        	  toastr.error(data.msg);
	          }else if(data.code == '3'){
	        	  toastr.error(data.msg);
	          }   
	      }
	});
	});
$("#register").click(function(){
	 window.location.href = "${path}login/register.action";
})
/* $('.selectpicker').selectpicker('mobile'); */
$('.selectpicker').on('changed.bs.select',function(e){
	var value = $('#property').val();
	$('#house').css('display','none');
	$('#warranty').css('display','none');
	$('#money').css('display','none');
	 for(var i=0;i<value.length;i++){
		if(value[i]=='1'){
			$('#house').css('display','block');
		}else if(value[i]=='2'){
			$('#warranty').css('display','block');
		}else if(value[i]=='3'){
			$('#money').css('display','block');
		}
	} 
});
$(".selectpicker").selectpicker({
	width:"auto",
});

</script>
</html>