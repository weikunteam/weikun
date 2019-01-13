<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<% 
	String path=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";	
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>用户登录</title>
<link rel="stylesheet" href="https://unpkg.com/element-ui@2.4.11/lib/theme-chalk/index.css">

<style>
body{
margin:0px;
pading:0px;
}
.el-row {
    margin-bottom: 20px;
    &:last-child {
      margin-bottom: 0;
    }
  }
	.login-box {
		margin-top:1%;
		margin-left:40%;
	}

</style>

</head>
<script src="<%=path%>js/vue.min.js"></script>
<script src="https://unpkg.com/element-ui@2.4.11/lib/index.js"></script>
<body>
<img :src=imgsrc id="topimg" :style=mystyle></img>
<div id="title" style="text-align:center;color:#409EFF">
<h2 >{{msg}}</h2>
</div>
<div class="login-box" id="app" >
 <el-row>
	<el-col :span="8">
		<el-input id="name"  v-model="name" placeholder="请输入手机号">
			<div slot="prepend" style="width:40px;text-align:center">手机号</div>
		</el-input> 
	</el-col>
 </el-row>
 <el-row>
	<el-col :span="8">
		<el-input id="password" v-model="password" type="password" placeholder="请输入密码">
			<div slot="prepend" style="width:40px;text-align:center">密码</div>
		</el-input>
	</el-col>
 </el-row>
 <el-row>
	<el-col :span="8" style="text-align:center">
		<el-button id="login" v-on:click="check"  type="primary">登录</el-button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<el-button id="login"  >注册</el-button>
	</el-col>
 </el-row>
</div> 
</body>
 
<script type="text/javascript">
	new Vue({
		el : '#topimg',
		data : {
			imgsrc : '<%=path%>img/center.jpg',
			mystyle : 'width:100%;'
		}
	});
	new Vue({
		el : '#title',
		data : {
			msg : '用户登录'
		}
	});
	new Vue({
		el : '#app',
		data : {
			name : '',
			password : ''
		},
		methods : {
			check : function(event){
				//获取值
				var name = this.name;
				var password = this.password;
				if(name == '' || password == ''){
					this.$message({
						message : '手机号或密码为空！',
						type : 'error'
					})
					return;
				}
				$.ajax({
					url : 'login',
					type : 'post',
					data : {
						name : name,
						password : password
					},
					success : function(data) {
						var result = data.result;
						if(result == 'true' || result == true){
							alert("登录成功");
						}else {
							alert("登录失败");
						}
					},
					error : function(data) {
						alert(data);
					},
					dataType : 'json',
				})
			}
		}
	}) 
	
</script>
</html>