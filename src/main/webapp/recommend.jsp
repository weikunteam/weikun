<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<!--BootStrap设计的页面支持响应式的 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<title>推荐收徒</title>
<link rel='stylesheet' href='${path}css/bootstrap.min.css'> 
<link rel='stylesheet' href='${path}css/login1.css'>
<link rel='stylesheet' href='${path}css/toastr.min.css'>
<link href="${path}css/font-awesome.min.css" rel="stylesheet" />
<script src="${path}js/jQuery.js"></script>
<script src="${path}js/toastr.min.js"></script>
<script src="${path}js/bootstrap.js"></script>
<script src="${path}js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<style type="text/css">
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

.text-with-hr {
    text-align: center;
    position: relative;
    z-index: 2;
    
}
/*
横线，并通过z-index：-1将or附近的横线遮盖住
*/
.text-with-hr:before {
    position: absolute;
    content: '';
    top: 11px;
    left: 0px;
    width: 100%;
    border-bottom: 1px solid #d4d4d4;
    z-index: -1;
}
.text-with-hr span {
    display: inline-block;
    background: #FFFACD;
    padding: 0px;
}
.form-horizontal{
background-color:#FFFACD;
}
body{
background-color:#FFFACD;
}
</style>
</head>
<body>
<div id="topImg">
<img  src="${path}img/share.jpg" style="width:100%;"  ></img>
</div>
<div class="form-group">
<img src="${path}img/money.jpg"  style="width:100%;"></img>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-12">
            <form class="form-horizontal">
                <label class="control-label" style="font-size:100%"><font style="color:#FFC125;">推荐码（长按可复制）</font></label>
                <div class="form-group">
                  <label class="control-label"><font style="color:red;">${user.uRecommendCode}</font></label>    
                    <!-- <a href="#" class="fa fa-question-circle"></a> -->
                </div>
                <div class="form-group">  
      			<a href="#" class="btn btn-info shareBtn" style="padding-top:1%;padding-bottom:1%;" id="shareBtn">分享</a>
      			</div>
                <div class="text-with-hr">
    			<span><font size="3" color="#CDC9C9">使用规则</font></span>
				</div>
				<div class="form-group text-left" >
				<label class="control-label" style="font-size:80%"><font style="color:red;">
				1、当您推荐其它朋友使用中天商务时，建议他们使用推荐码注册，发展为您的徒弟</font></label>
				</div>
				<div class="form-group text-left" >
				<label class="control-label" style="font-size:80%"><font style="color:red;">
				2、当您每成功发展1名徒弟即可有机会获得奖励</font></label>
				</div>
				<div class="form-group text-left" >
				<label class="control-label" style="font-size:80%"><font style="color:red;">
				3、当您的徒弟或者您徒弟的客户办理业务成功时，您可以收到一定比例的推广奖金</font></label>
				</div>
				<div class="form-group text-left" >
				<label class="control-label" style="font-size:80%"><font style="color:red;">
				4、推广码只在注册时进行填写，漏填将没有渠道补填</font></label>
				</div>
				<div class="form-group text-left" >
				<label class="control-label" style="font-size:80%"><font style="color:red;">
				5、具体推广奖金金额以中天商务最新规定为准</font></label>
				</div>
            </form>
        </div>
            
    </div>    

</div>

</body>

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
	    	    imgUrl: 'http://www.zhongtianbusiness.com/OfficialAccounts/img/b1.png', // 分享图标
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
				imgUrl: 'http://www.zhongtianbusiness.com/OfficialAccounts/img/b1.png', //  分享图标
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
	    	    imgUrl: 'http://www.zhongtianbusiness.com/OfficialAccounts/img/b1.png', // 分享图标
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
            // alert('error')
            // config信息验证失败会执行error函数，如签名过期导致验证失败，具体错误信息可以打开config的debug模式查看，也可以在返回的res参数中查看，对于SPA可以在这里更新签名。
        });
		
		$("#shareBtn").on("click",function(){
			$("#topImg").css("display","block");
		});
		$("#topImg").on("click",function(){
			$("#topImg").css("display","none");
		});
	});
</script>
</html>