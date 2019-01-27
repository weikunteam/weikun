$("#register").click(function(){
	var tel = $("#inputTel").val();
	var pwd = $("#inputPassword3").val();
	var confirmPwd = $("#inputPassword4").val();
	var code = $("#code").val();
	var recommend = $("#recommend").val();
	var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
	var pswReg = /^[a-zA-Z][a-zA-Z0-9]{5,11}$/;
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
	if(pwd != confirmPwd ){
		toastr.error("两次密码输入不一致");	
		return false;
	}
	if(!pswReg.test(pwd)){
		toastr.error("密码格式错误");	
		return false;
	}
	
	$.ajax({
	    type:"post",
	    url:path+"login/register.action",
	    dataType: 'json',
	    data :{
	    	tel:tel,
	    	pwd:pwd,
	    	code:code,
	    	recommend:recommend
	    },
	    success:function(data){
	          if(data.code == '2'){
	        	  toastr.success(data.msg);
	        	  setTimeout(function(){
	        		  window.location.href = path+"login/login.action";	        		  
	        	  },2000);
	          }else if(data.code == '3'){
	        	  toastr.error(data.msg);
	          }   
	      }
	});
	});

//获取验证码倒计时

	var countdown = 60;
	
	$('#checkCode').on('click',function(){
	var tel = $("#inputTel").val();
	var obj = $("#checkCode");
	var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
	if(!tel){
		toastr.error("请输入手机号");	
		return false;
	}
	if(!reg.test(tel)){
		toastr.error("请输入正确手机号");	
		return false;
	}
	
	$.ajax({
	    type:"post",
	    url:path+"login/checkRepeat.action",
	    dataType: 'json',
	    async : false,
	    data :{
	    	tel:tel
	    },
	    success:function(data){
	          if(data.code == '1'){
	        	  $.ajax({
	        		    type:"post",
	        		    url:path+"login/sendCode.action",
	        		    dataType: 'json',
	        		    async : false,
	        		    data :{
	        		    	tel:tel
	        		    }
	        		});
	        	  settime(obj);
	          }else if(data.code == '2'){
	        	  toastr.error(data.msg);
	          } 
	      }
	});		
	})
	
	function settime(obj) { //发送验证码倒计时
	
	if (countdown == 0) {
	
	obj.attr('disabled', false);
	
	//obj.removeattr("disabled");
	
	obj.html("发送验证码");
	
	countdown = 60;
	
	return;
	
	} else {
	
	obj.attr('disabled', true);
	
	obj.html("重新发送(" + countdown + ")");
	
	countdown--;
	
	}
	
	setTimeout(function () {
	
	settime(obj)
	
	}
	
	, 1000)
	
	}	
	$("#login").click(function(){
		 window.location.href = path+"login/login.action";
	})
	

