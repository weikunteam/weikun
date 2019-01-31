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
<style>

.layui-table-tool-self {
	position: absolute;
	right: 17px;
	top: 10px;
	margin-top: 10px;
}

.layui-table-tool .layui-inline[lay-event] {
	position: relative;
	width: 38px;
	height: 38px;
	padding: 5px;
	line-height: 26px;
	margin-right: 10px;
	text-align: center;
	color: #333; /* //#333 */
	border: 1px solid #ccc;
	cursor: pointer;
	-webkit-transition: .5s all;
	transition: .5s all;
	background-color: #5FB878;
}
</style>
</head>
<body class="gray-bg">
	<div class="row  border-bottom white-bg dashboard-header">
		<div class="col-sm-12">
			<p>
				该测试页面标题！！！！！ <a href="http://echarts.baidu.com/doc/about.html"
					target="_blank">了解更多</a>
			</p>
			<p>
				ECharts官网：<a href="http://echarts.baidu.com/" target="_blank">http://echarts.baidu.com/</a>
			</p>
		</div>
	</div>
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-6">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>折线图</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a> <a class="dropdown-toggle" data-toggle="dropdown"
								href="graph_flot.html#"> <i class="fa fa-wrench"></i>
							</a>
							<ul class="dropdown-menu dropdown-user">
								<li><a href="graph_flot.html#">选项1</a></li>
								<li><a href="graph_flot.html#">选项2</a></li>
							</ul>
							<a class="close-link"> <i class="fa fa-times"></i>
							</a>
						</div>
					</div>
					<div class="ibox-content">
						<div class="echarts" id="echarts-line-chart"></div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>柱状图</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a> <a class="dropdown-toggle" data-toggle="dropdown"
								href="graph_flot.html#"> <i class="fa fa-wrench"></i>
							</a>
							<ul class="dropdown-menu dropdown-user">
								<li><a href="graph_flot.html#">选项1</a></li>
								<li><a href="graph_flot.html#">选项2</a></li>
							</ul>
							<a class="close-link"> <i class="fa fa-times"></i>
							</a>
						</div>
					</div>
					<div class="ibox-content">

						<div class="echarts" id="echarts-bar-chart"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>layUI DataTable部分</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
							</a> <a class="dropdown-toggle" data-toggle="dropdown"
								href="graph_flot.html#"> <i class="fa fa-wrench"></i>
							</a>
							<ul class="dropdown-menu dropdown-user">
								<li><a href="graph_flot.html#">选项1</a></li>
								<li><a href="graph_flot.html#">选项2</a></li>
							</ul>
							<!-- 				                <a class="close-link">
				                    <i class="fa fa-times"></i>
				                </a> -->
						</div>
					</div>
					<div class="ibox-content">
						<!-- layUI Table组件内容 -->

						<table lay-filter="test" class="layui-hide" id="test" lay-skin="row"></table>

					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- 编辑修改 用户信息 -->
	<form class="layui-form layui-form-pane1" id="form1" name="form1"
		style="display: none;">
		<br />
		<%-- action="<%=path%>userManager/editUserInfo.action"  method="post" --%>
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
		<%-- action="<%=path%>userManager/editUserInfo.action"  method="post" --%>
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
	</form>
	<!-- <table class="layui-hide" id="test"></table> -->
	<!-- layUI javascrip部分 -->
	<script id="toolbarDemo" type="text/html">
			<div class="layui-btn-container">
				<div>
			    <button class="layui-btn layui-btn-danger " id="daoru" style="margin-top: 10px;"><label style="font-weight: bold;font-size: 12px;">批量导入数据<label/></button>
				<button class="layui-btn" id="addUser" style="margin-top: 10px;"><label style="font-weight: bold;font-size: 12px;">添加单条数据<label/></button>
				</div>
				<span style="float:left;">
						<label style="font-weight: bold;font-size: 15px;">搜索贷款人：<label/>
						<div class="layui-inline" >
							<input name="condition_id" class="layui-input" id="condition_id" placeholder="请输入贷款人名字"autocomplete="off">
						</div>
						<button class="layui-btn" id="searchBtn" data-type="reload" style="margin-top: 10px;">
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
	<script id="barDemo" type="text/html">

    {{#  if(d.checkState ==0){ }}
			<a class="layui-btn layui-btn-normal layui-btn-xs check" lay-event="check">未审核</a>
			<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    {{# }if(d.checkState ==1) { }}
			<a class="layui-btn layui-btn-xs check" lay-event="check">已审核</a>
			<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    {{#  } }}
	</script>
		<!-- 类型在Table上的 “显示转换” -->
	<script id="housingLoanType" type="text/html">
    {{#  if(d.housingLoanType ==0){ }}
			按揭
    {{# }if(d.housingLoanType ==1) { }}
			抵押
    {{#  } }}
	</script>
	<script id="warrantyType" type="text/html">
	{{#  if(d.warrantyType ==0){ }}
			平安保单
    {{# }if(d.warrantyType ==1) { }}
			非平安保单
	{{#  } }}
	</script>
	<script id="warrantyTerm" type="text/html">
	<span>{{d.warrantyTerm}}</span>
	<em>月</em>
	</script>
	<script id="loanTerm" type="text/html">
		{{#  if(d.accrualType ==0){ }}
				<span>{{d.loanTerm}}</span>
				<em>月</em>
    	{{# }if(d.accrualType ==1) { }}
				<span>{{d.loanTerm}}</span>
				<em>年</em>
		{{#  } }}
	</script>
	<script id="sex" type="text/html">
		{{#  if(d.sex ==0){ }}
				女
    	{{# }if(d.sex ==1) { }}
				男
		{{#  } }}

	</script>

	<script src="layui.js" charset="utf-8"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

	<script>
		
			layui.use('table', function() {
				var table = layui.table;
				var form = layui.form;
				//table 渲染初始化
				table.render({
					elem: '#test',
					url: '<%=path%>PAXYDBusManager/getBusPAXYDList.action',
					toolbar: '#toolbarDemo',
					even: true,
					cellMinWidth: 150,
					cols: [	
						[{align: 'center', title: '贷款人信息', colspan: 4},
						 {align: 'center', title: '申请贷款详情', colspan: 4},
						 {align: 'center', title: '房贷详情', colspan: 2},
						 {align: 'center', title: '保单详情', colspan: 3},
						 {align: 'center', title: '公积金详情', colspan: 3}],
						[{
							field: 'uPhone',
							title: '注册人手机号',
							sort: true
						}, {
							field: 'name',
							title: '贷款人姓名',
							sort: true
						},{
							field: 'sex',
							title: '贷款人性别',
							templet:'#sex',
							sort: true
						},{
							field: 'applicantTel',
							title: '贷款人手机号',
							sort: true
						}, {
							field: 'loanAmount',
							title: '贷款金额',
							sort: true
						}, {
							field: 'loanTerm',
							title: '贷款期限',
							templet:'#loanTerm',
							sort: true
						}, {
							field: 'accrualRate',
							title: '利率',
							sort: true
						}, {
							field: 'applyDate',
							title: '业务申请日期',
							sort: true
						}, {
							field: 'housingLoanType',
							title: '房贷类型',
							templet:'#housingLoanType',
							sort: true
						}, {
							field: 'housingLoanTerm',
							title: '房贷期限',
							sort: true
						}, {
							field: 'warrantyType',
							title: '保单类型',
							templet:'#warrantyType',
							sort: true
						}, {
							field: 'warrantyTerm',
							title: '保单期限',
							templet:'#warrantyTerm',
							sort: true
						}, {
							field: 'warrantyCount',
							title: '保单次数',
							sort: true
						}, {
							field: 'accumulationFundAddress',
							title: '公积金缴纳地址',
							sort: true
						}, {
							field: 'accumulationFundTerm',
							title: '公积金缴纳期限（月份）',
							sort: true
						}, {
							field: 'accumulationFundAmount',
							title: '公积金缴纳金额',
							sort: true
						}, {
							//隐藏的“列名”========================
							field: 'PAXYDBusId',
							title: '平安新一贷业务id',
 							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;', 
							sort: true
						}, {
							field: 'salesManId',
							title: '业务员id',
 							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;', 
							sort: true
						}, {
							field: 'accrualType',
							title: '利息分期类型',
							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;',
							sort: true
						}, {
							field: 'checkState',
							title: '审核状态',
							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;',
							sort: true
						},{
							fixed: 'right',
							title: '操作',
							width: '20%',
							toolbar: '#barDemo',
						}]
					],
					//修改表头、表体样式
					done : function(res, curr, count) {
						tableList = res.data;
						
						$('th').css({'font-weight' : 'bold','font-size':'20px'});//'background-color' : '#008B8B','color' : '#fff',
						//$('tr').css({'background-color': '#009688', 'color': '#fff'});
  						var that = this.elem.next();
						res.data.forEach(function(item, index) {
							console.log(item);//item表示每列显示的数据             
							if (index % 2 == 0) {
								var tr = that.find(".layui-table-box tbody tr[data-index='"+ index + "']").css("background-color", "#FFFFFF");
							} else {
								var tr = that.find(".layui-table-box tbody tr[data-index='"+ index + "']").css("background-color", "#F2F2F2");
							}
						});  
					},
					page : true
				});
				
				//监听行工具事件（审核、删除、编辑 行数据）
				table.on('tool(test)', function(obj) {
					var data = obj.data;
					console.log(obj);
					// 审核业务
					 if (obj.event === 'check') {
						console.log("审核");
						//获取工具栏按钮dom
						var index = $('.check').index(this);
						var dom = $('.check').eq(index);
						
						obj.update({
							checkTpye:1
						});
						//工具栏样式更新
						if(data.checkTpye == 1){
						dom.removeClass().addClass('layui-btn normal layui-btn-xs check')
						dom.html('未审核')
						}else{
						dom.removeClass().addClass('layui-btn primary layui-btn-xs check')
						dom.html('已审核')
						}
				   // 删除业务信息
					}else if (obj.event === 'del') {
			                layer.confirm('真的删除行么', function (index) {
								console.log(obj);
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
/* 						$("#userId").val(data.userId);
			            $("#uPhone").val(data.uPhone);
			            $("#uPsw").val(data.uPsw); */
			            console.log(obj.data);
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
				});
				
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
								name : demoReload //向后台传递的参数
							},                     
							url : '<%=path%>userManager/getUserList.action'//后台做模糊搜索接口路径                        
							,
							method : 'get'
						});
					}
				}; 
				//点击“条件搜索”监听
				//由于dom被重构了，事件监听不到  所以用如下方法，本来是下方注释方法。
				$('body').on('click','#searchBtn',function(){
						var type = $(this).data('type');
						console.log("type："+type);
						active[type] ? active[type].call(this) : '';
				});
				
				//点击批量导入
				$('body').on('click','#daoru',function(){
					console.log("点击 → 批量导入");
					var data={};
					importData(data);
				}); 
				
				//批量导入数据
				function importData(config) {
					console.log(config);
					var default_config = {
						uploadUrl:'',
						downUrl:'',
						msg: "数据导入成功！"
					}
					$.extend(default_config, config);
					var idRandom = "importData" + Math.ceil(Math.random() * 10000)
					var htmlContent =
						'<div class="layui-upload-drag" id="' + idRandom + '">';
					htmlContent += '<i class="layui-icon"></i>';
					htmlContent += '<p>点击上传，或将文件拖拽到此处</p>';
					htmlContent += '</div>';
					layer.open({
						type: 1,
						offset: "auto", //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset	      ,
						id: 'layer_importData', //防止重复弹出	      ,
						title: '导入记录',
						content: htmlContent,
						maxWidth: 800,
						btn: ['下载模板'],
						btnAlign: 'c', //按钮居中	      ,
						shade: 0, //不显示遮罩	      ,
						yes: function() { //提交	    	  	
							console.log("点击下载模板----");
							var iframe = $("<iframe></iframe>");
							iframe.attr("src", default_config.downUrl);
							iframe.css("display", "none");
							$("#" + idRandom).append(iframe);
						},
					});
					
					//上传数据文件
					layui.use('upload', function(){
					var upload = layui.upload;
					console.log(upload);
					//var form = layui.form;
					//form.render(); //拖拽上传	
					upload.render({
						elem: "#" + idRandom,
						url: '<%=path%>userManager/uploadImg.action',
						accept: 'file',
						size:9000,
						done: function(data) {
							console.log("拖拽上传----");
							if (data.code == 0) {
								layer.closeAll();
								if ($("#query")) {
									$("#query").click();
								}
								if (default_config.done) {
									default_config.done(data);
								} else {
									layer.msg(default_config.msg);
								}
							} else {
								layer.msg(data.msg);
							}
						}
					});
				});
					
				}
				//点击添加单条数据
				$('body').on('click','#addUser',function(){
					console.log("点击 → 单条数据添加");
					//添加单条数据   弹出层
						layer.open({       
					        title:'添加客户信息',
					        type:1,
					        skin: 'layui-layer-molv',    
					        shade: 0.8,  
					        area:['600px','500px'],
					        content:$("#form2")
						}); 
					
	 			           form.on('submit(demo12)', function(massage) {
	 			               $.ajax({
	 			                   url:'<%=path%>userManager/addUserInfo.action',
	 			                   type:'POST',
	 			                   data:{
	 			                	  /* userId:massage.field.addUserId, */
	 			                	  uPhone:massage.field.addUPhone,
	 			                	  uPsw:massage.field.addUPsw
	 			                   },
	 			                   success:function (msg) {
	 			                       var returnCode = msg.returnCode;//取得返回数据（Sting类型的字符串）的信息进行取值判断
	 			                       if(returnCode==200){
	 			                           layer.closeAll('loading');
	 			                           layer.load(2);
	 			                           layer.msg("添加客户信息成功", {icon: 6});
	 			                           setTimeout(function(){
	 			                                layer.closeAll();//关闭所有的弹出层
	 			                           }, 1000);
	 			                          //重载 到第一页
 	 			 						table.reload('test', {
	 			 							page : {                           
	 			 								curr:1
	 			 							},
	 			 							where : {
	 			 								//name : demoReload //向后台传递的参数
	 			 							},                     
	 			 							url : '<%=path%>userManager/getUserList.action'//后台做模糊搜索接口路径                        
	 			 							,
	 			 							method : 'get'
	 			 						}); 
	 			                       }else{
	 			                           layer.msg("添加失败", {icon: 5});
	 			                       }
	 			                   }
	 			               })
	 			              return false;
	 			           })
	 			     
					
				}); 
								//编辑弹出层 的表单验证
				 				form.verify({
				 					userTel:[/^1[34578]\d{9}$/,'手机必须11位数字,且格式正确!'],
    								userTelUnique:function(value){
    									var code=0;
    						            $.ajax({
    						                type: "get",
    						                url: '<%=path%>userManager/verifyUserPhone.action',
    						                async: false,//同步提交。不设置则默认异步，异步的话，最后执行ajax
    						                data: {userPhone:$("#addUPhone").val()},
    						                success: function (ev) {
    						                    code = ev.code;
    						                }
    						            });
    									if(code==200){
    										return "该客户手机号已存在!请重新输入";
    									}
    									}
									})
								});
			

			
			
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
