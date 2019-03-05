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
<style>
</style>
</head>
<body class="gray-bg">
	<table lay-filter="test" class="layui-hide" id="test" lay-skin="row"></table>
	<%-- <!-- 编辑修改 用户信息 -->
	<form class="layui-form layui-form-pane1" id="form1" name="form1"
		style="display: none;">
		<br />
		action="<%=path%>userManager/editUserInfo.action"  method="post"
		<div class="layui-form-item" style="display: none">
			<label class="layui-form-label">id</label>
			<div class="layui-input-inline">
				<input type="text" name="userId" id="userId" autocomplete="off"
					class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">手机</label>
			<div class="layui-input-inline">
				<input type="tel" name="uPhone" id="uPhone" required readonly="readonly"
					lay-verify="required|userTel" placeholder="请输入使用者手机号码"
					lay-verType="tips" autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">密码</label>
			<div class="layui-input-inline">
				<input type="text" name="uPsw" id="uPsw" required
					lay-verify="required|pass" placeholder="请输入密码" autocomplete="off"
					class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn  layui-btn-submit " id="demo11"
					lay-submit="" lay-filter="demo11">确认修改</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
		<!-- 添加 用户信息 （单笔） -->
	<form class="layui-form layui-form-pane1" id="form2" name="form2"
		style="display: none;">
		<br />
		action="<%=path%>userManager/editUserInfo.action"  method="post"
		<div class="layui-form-item" style="display: none">
			<label class="layui-form-label">id</label>
			<div class="layui-input-inline">
				<input type="text" name="addUserId" id="addUserId" autocomplete="off"
					class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">手机</label>
			<div class="layui-input-inline">
				<input type="tel" name="addUPhone" id="addUPhone" required
					lay-verify="required|userTel|userTelUnique" placeholder="请输入使用者手机号码"
					lay-verType="tips" autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">密码</label>
			<div class="layui-input-inline">
				<input type="text" name="addUPsw" id="addUPsw" required
					lay-verify="required|pass" placeholder="请输入密码" autocomplete="off"
					class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn  layui-btn-submit " id="demo12"
					lay-submit="" lay-filter="demo12">确认添加</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				<button  class="layui-btn layui-btn-primary">取消</button>
			</div>
		</div>
	</form> --%>
	<!-- <table class="layui-hide" id="test"></table> -->
	<!-- layUI javascrip部分 -->
	<script id="toolbarDemo" type="text/html">
			<div class="layui-btn-container">
				<span style="float:left;margin-top: 10px;">
						<label style="font-weight: bold;font-size: 15px;">起始日期：<label/>
						<div class="layui-inline" >
							<input name="queryApplyDateStart" class="layui-input my_class_name" id="queryApplyDateStart" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
						</div>
						<label style="font-weight: bold;font-size: 15px;margin-left: 24px;">结束日期：<label/>
						<div class="layui-inline" >
							<input name="queryApplyDateEnd" class="layui-input my_class_name" id="queryApplyDateEnd" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
						</div>
						<label style="font-weight: bold;font-size: 15px;margin-left: 24px;">搜索手机号：<label/>
						<div class="layui-inline" >
							<input name="condition_id" class="layui-input" id="condition_id" placeholder="请输入手机号"autocomplete="off">
						</div>

						<button class="layui-btn" id="searchBtn" data-type="reload" style="margin-top: 10px;margin-left: 24px;">
							<label style="font-weight: bold;font-size: 12px;">搜索<label/>
						</button>
				</span>
			</div>
			<br/>
			<br/>
			<br/>
	</script>
	<!-- 	<script src="js/jquery.min.js"></script>
    <script src="js/jquery-ui.min.js"></script> -->
	<script src="layui.js" charset="utf-8"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

	<script>
		
			layui.use('table', function() {
				var table = layui.table;
				var form = layui.form;
				var loadingPage=layer.msg("数据加载中，请稍后...");
				//table 渲染初始化
				table.render({
					elem: '#test',
					url: '<%=path%>userManager/getUserList.action',
					toolbar: '#toolbarDemo',
					even:true,
					cellMinWidth: 150,
					cols: [
						[{
							field: 'registerTime',
							title: '注册时间',
							sort: true
						}, {
							field: 'uPhone',
							title: '注册客户手机号',
							sort: true
						}]
					],
					//修改表头、表体样式
					done : function(res, curr, count) {
						tableList = res.data;
						
						$('th').css({'font-weight' : 'bold','font-size':'20px'});//'background-color' : '#008B8B','color' : '#fff',
						//$('tr').css({'background-color': '#009688', 'color': '#fff'});
/*  						var that = this.elem.next();
						res.data.forEach(function(item, index) {
							//console.log(item.empName);item表示每列显示的数据             
							if (index % 2 == 0) {
								var tr = that.find(".layui-table-box tbody tr[data-index='"+ index + "']").css("background-color", "#FFFFFF");
							} else {
								var tr = that.find(".layui-table-box tbody tr[data-index='"+ index + "']").css("background-color", "#F2F2F2");
							}
						});  */
						layer.close(loadingPage);
					},
					page : true
				});
				
<%-- 				//监听行工具事件（编辑、删除 行数据）
				table.on('tool(test)', function(obj) {
					var data = obj.data;
					console.log(obj);
					//删除客户信息
					if (obj.event === 'del') {
			                layer.confirm('真的删除行么', function (index) {
								console.log(obj);
								console.log("当前页---"+$(".layui-laypage-curr").find("em:eq(1)").html());
								console.log("总页数---"+$(".layui-laypage-last").attr("data-page"));
								console.log("总条数---"+$(".layui-laypage-count").html());
								console.log("每页条数---"+$(".layui-laypage-limits").find("option:selected").val() );
			                    $.ajax({
			                        url: "<%=path%>userManager/deleteUserInfo.action",
			                        type: "POST",
			                        data: {deleteUserId:obj.data.userId},
			                        success: function (msg) {
			                            //var json = JSON.parse(msg);
			                            var returnCode = msg.returnCode;
			                            if (returnCode == 200) {
			                                //删除这一行
			                                obj.del();
			                                //重新刷新该页面 ！！！！
			                                $(".layui-laypage-btn").click(); 
			                                //关闭弹框
			                                layer.close(index);
			                                layer.msg("删除成功", {icon: 6});
			                            } else {
			                                layer.msg("删除失败", {icon: 5});
			                            }
			                        }
			                    });
			                    return false; 
			                });
			                
					// 编辑客户信息
					} else if (obj.event === 'edit') {
						$("#userId").val(data.userId);
			            $("#uPhone").val(data.uPhone);
			            $("#uPsw").val(data.uPsw);
						//编辑客户信息 弹出层
 						layer.open({       
					        title:'编辑客户信息',
					        type:1,
					        skin: 'layui-layer-molv',    
					        shade: 0.8,  
					        area:['600px','500px'],
					        content:$("#form1")
						}); 
						
 			           form.on('submit(demo11)', function(massage) {
 			               $.ajax({
 			                   url:'<%=path%>userManager/editUserInfo.action',
 			                   type:'POST',
 			                   data:{
 			                	   userId:massage.field.userId,
 			                	   uPhone:massage.field.uPhone,
 			                	   uPsw:massage.field.uPsw
 			                   },
 			                   success:function (msg) {
 			                       var returnCode = msg.returnCode;//取得返回数据（Sting类型的字符串）的信息进行取值判断
 			                       if(returnCode==200){
 			                           layer.closeAll('loading');
 			                           layer.load(2);
 			                           layer.msg("修改成功", {icon: 6});
 			                           setTimeout(function(){
 			                              obj.update({
 			                            	 userId:massage.field.userId,
 			                            	 uPhone:massage.field.uPhone,
 			                            	 uPsw:massage.field.uPsw
 			                                });//修改成功修改表格数据不进行跳转
 			                                layer.closeAll();//关闭所有的弹出层
 			                           }, 1000);
 			                           加载层-风格
 			                       }else{
 			                           layer.msg("修改失败", {icon: 5});
 			                       }
 			                   }
 			               })
 			              return false;
 			           })
 						 //setFormValue(obj,data);
					}
				}); --%>
				
				// 上方工具按钮监听 （批量导入、单挑数据添加、条件搜索）
				// 条件搜索
				var $ = layui.$, active = {
					reload : function() {
						var demoReload = $('#condition_id').val();//获取输入框的值           
						console.log("输入框的值："+demoReload);
						//执行重载                      
						table.reload('test', {
							page : {
								curr : 1//重新从第 1 页开始                                  
							},
							where : {
								uPhone : demoReload,//向后台传递的参数
								applyDateStart:$('#queryApplyDateStart').val(),
								applyDateEnd:$('#queryApplyDateEnd').val()	
							},                     
							url : '<%=path%>userManager/getUserList.action'//后台做模糊搜索接口路径                        
							,
							method : 'get'
						});
						//重新渲染日期插件
						renderLayDate();
					}
				}; 
				//点击“条件搜索”监听
				//由于dom被重构了，事件监听不到  所以用如下方法，本来是下方注释方法。
				$('body').on('click','#searchBtn',function(){
						var type = $(this).data('type');
						console.log("type："+type);
						active[type] ? active[type].call(this) : '';
				});
				
				//日期控件
				//执行一个laydate实例
				renderLayDate();
				
								});
			
			function renderLayDate(){
				//重新渲染日期插件
				layui.use(['laydate'], function(){
					  var form = layui.form,
					  laydate = layui.laydate;
					  $('.my_class_name').each(function(){
							laydate.render({
									elem: this //使用this指向当前元素,不能使用class名, 否则只有第一个有效
							});
				})
				});
			}
		</script>

	<!-- H+ javascrip部分 -->
	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>
	<script src="js/plugins/echarts/echarts-all.js"></script>
	<script src="js/content.min.js?v=1.0.0"></script>
	<script src="js/demo/echarts-demo.min.js"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>
