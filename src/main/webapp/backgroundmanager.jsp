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
	<form class="layui-form" id="form1" name="form1" style="display: none;">
        <!-- <div id="xtree1" class="xtree_contianer"></div> -->
       <!--  <div id="xtree2" style="height:400px;overflow:auto;" class="xtree_contianer"></div> -->
        <div id="xtree3" class="xtree_contianer"></div>
        <div class="layui-form-item">
			<div class="layui-input-block" style="margin-top:200px;">
				<button class="layui-btn  layui-btn-submit " 
					lay-submit="" lay-filter="demo11" style="margin-left:200px;">确认分配</button>
				<button type="button" class="layui-btn layui-btn-primary" id="cancelDistribute">关闭</button>
			</div>
		</div>
    </form>
		<!-- 添加 用户信息 （单笔） -->
	<form class="layui-form layui-form-pane1" id="form2" name="form2"
		style="display: none;">
		<br />
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span style="color:red;font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>后台用户角色：</label>
				<div class="layui-input-inline">
					<select name="addRole" id="addRole" lay-search="" lay-verify="selectRole" lay-filter="search_type" >
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item" style="display:none;" id="validateTelLabel_Item">
			<div class="layui-inline">
				<label class="layui-form-label" id="validateTelLabel" style="width: 180px; font-weight: bold; color: red;">*验证手机号是否注册：</label>
				<div class="layui-input-inline">
					<input type="text" name="validateTel" id="validateTel"
						style="width: 160px;" lay-verify="required|validateTel"
						autocomplete="off" class="layui-input" placeholder="请输入要验证的手机号" >
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" id="validateResultInfo"
					style="width: 385px; font-weight: bold; margin-left: -75px;"></label>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"> <span style="color: red; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>真实姓名：
				</label>
				<div class="layui-input-inline">
					<input type="text" name="addUserName" id="addUserName" required
						lay-verify="required" placeholder="请输入姓名" autocomplete="off"
						class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"> <span style="color: red; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>后台账号：
				</label>
				<div class="layui-input-inline">
					<input type="text" name="addUBackGroundAccount" id="addUBackGroundAccount" required
						lay-verify="required|validateUBackGroundAccount" placeholder="请输入账号" autocomplete="off"
						class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"> <span style="color: red; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>后台密码：
				</label>
				<div class="layui-input-inline">
					<input type="text" name="addUBackGroundPsw" id="addUBackGroundPsw"
						 lay-verify="required|pass"
						placeholder="请输入密码" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn  layui-btn-submit " 
					lay-submit="" lay-filter="demo12">确认添加</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				<button type="button" class="layui-btn layui-btn-primary" id="cancelAdd">关闭</button>
			</div>
		</div>
	</form>
	<!-- <table class="layui-hide" id="test"></table> -->
	<!-- layUI javascrip部分 -->
	<script id="toolbarDemo" type="text/html">
			<div class="layui-btn-container">
				<div>
				<button class="layui-btn" id="addUser" style="margin-top: 10px;><label style="font-weight: bold;font-size: 12px;">添加单条数据<label/></button>
				</div>
				<span style="float:left;margin-top: 10px;">
						<label style="font-weight: bold;font-size: 15px;">搜索名字：<label/>
						<div class="layui-inline" >
							<input name="queryUserName" class="layui-input" id="queryUserName" placeholder="请输入名字"autocomplete="off">
						</div>
						<label style="font-weight: bold;font-size: 15px;margin-left: 10px;">搜索账号：<label/>
						<div class="layui-inline" >
							<input name="queryUBackGroundAccount" class="layui-input" id="queryUBackGroundAccount" placeholder="请输入账号"autocomplete="off">
						</div>
						<label style="font-weight: bold;font-size: 15px;margin-left: 10px;">搜索角色/职称：<label/>
						<div class="layui-inline" >
							<select name="queryRole" id="queryRole" lay-search="" lay-verify="">
							</select>
						</div>
						<button class="layui-btn" id="searchBtn" data-type="reload" style="margin-top: 10px;margin-left:10px;width:112px;">
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
	{{#  if(d.roleModel.roleId ==3){ }}
			<a class="layui-btn layui-btn-xs" lay-event="edit">重置密码</a>
			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
			<a class="layui-btn layui-btn-xs" style="background-color: #1E9FFF" lay-event="distribute">分配组员</a>
	{{# }if(d.roleModel.roleId !=3 ){ }}
			<a class="layui-btn layui-btn-xs" lay-event="edit">重置密码</a>
			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    {{#  } }}

	</script>
	<script src="layui.js" charset="utf-8"></script>
	<script src="layui-xtree.js"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script id="roleModel" type="text/html">
	{{#  if(d.roleModel !=null ){ }}
    <span>{{d.roleModel.roleName}}</span>
	{{#  } }}
	</script>
	<script>
		
			layui.use('table', function() {
				var table = layui.table;
				var form = layui.form;
				var $ = layui.jquery;
				var loadingPage=layer.msg("数据加载中，请稍后...");
				//table 渲染初始化
				table.render({
					elem: '#test',
					url: '<%=path%>backUserManager/getBackUserList.action',
					toolbar: '#toolbarDemo',
					even:true,
					cellMinWidth: 150,
					cols: [	
						[{
							field: 'userName',
							title: '后台人员姓名',
							sort: true
						}, {
							field: 'roleModel',
							title: '角色/职称',
							templet:'#roleModel',
							sort: true
						},{
							field: 'uBackGroundAccount',
							title: '账号',
							sort: true
						},{
							//隐藏 的 “列名”
							field: 'userId',
							title: '客户id',
							sort: true,
							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;'
						},{
							fixed: 'right',
							title: '操作',
							toolbar: '#barDemo',
						}]
					],
					//修改表头、表体样式
					done : function(res, curr, count) {
						//tableList = res.data;
						
						$("#queryRole").empty();    
						console.log("初始化下拉框");
						$.ajax({        
							async: false,        
							type: "POST",        
							url: "<%=path%>backUserManager/getRoleSelectList.action",       
							//dataType: "json",        
							//data: {},        
							success: function (res) {       
								$("#queryRole").empty();
								$("#addRole").empty();
								var option = "<option value='' >请选择角色/职位</option>";        //selected = 'selected'
								for(var i=0; i<res.roleList.length; i++){
								    option+="<option value='"+res.roleList[i].roleId+"'>"+res.roleList[i].roleName+"</option>"; //动态添加数据
									}             
								console.log(option);
								$("#queryRole").append(option);
								$("#addRole").append(option);
								layui.form.render('select');        
								}    
							});
						
						$('th').css({'font-weight' : 'bold','font-size':'20px'});//'background-color' : '#008B8B','color' : '#fff',
						layer.close(loadingPage);
					},
					page : true
				});
				
				//"选择角色"下拉框的 动态js
				form.on('select(search_type)', function(data){
					console.log(data)
					//是”客户经理“的话，需要验证本人手机号是否已注册公众号。
					if(data.value==4){
						$("#validateTelLabel_Item").css("display","block");
						$("#validateTel").attr("lay-verify","required|validateTel");
					}else{
						$("#validateTelLabel_Item").css("display","none");
						$("#validateTel").attr("lay-verify","");//
					}
				    //渲染
				    form.render('select');//里面的select是固定写法 跟过滤器、id无关
				});
				
				//监听行工具事件（编辑、删除 行数据）
				table.on('tool(test)', function(obj) {
					var data = obj.data;
					console.log(obj);
					//删除客户信息
					if (obj.event === 'del') {
			                layer.confirm('真的删除行么', function (index) {
								console.log(obj);
<%-- 			                    $.ajax({
			                        url: "<%=path%>salesManManager/deleteSalesManInfo.action",
			                        type: "POST",
			                        data: {deleteSalesManId:obj.data.userId},
			                        success: function (msg) {
			                            //var json = JSON.parse(msg);
			                            var returnCode = msg.returnCode;
			                            if (returnCode == 200) {
			                                //删除这一行
			                                obj.del();
			                                $(".layui-laypage-btn").click(); 
			                                //关闭弹框
			                                layer.close(index);
			                                layer.msg("删除成功", {icon: 6});
			                            } else {
			                                layer.msg("删除失败", {icon: 5});
			                            }
			                        }
			                    }); --%>
			                    return false;
			                });
			                
					// 编辑客户信息
					} else if (obj.event === 'edit') {
						//编辑客户信息 弹出层
					   layer.confirm('真的重置密码嘛', function (index) {
							$.ajax({        
								//async: false,        
								type: "POST",        
								url: "<%=path%>backUserManager/editBackUserInfo.action",       
								dataType: "json",        
								data: {
									userId:obj.data.userId
								},        
								success: function (res) {        
			                           //layer.closeAll('loading');
 			                           //layer.load(2);
 			                           layer.msg("密码重置成功", {icon: 6});   
									}    
								});
							//return false;
					   });

 						 //setFormValue(obj,data);
					}else if (obj.event === 'distribute') {
						layer.open({       
					        title:''+obj.data.userName+'分配组员',
					        type:1,
					        skin: 'layui-layer-molv',    
					        shade: 0.8,  
					        area:['500px','500px'],
					        content:$("#form1")
						}); 
						
					    //********************
					    //      正式开始
					    //********************
					    //layui 的 form 模块是必须的
					    layui.use(['form'], function () {
					        var form = layui.form;

					        //3、最完整的参数用法
					        var xtree3 = new layuiXtree({
					            elem: 'xtree3'                  //必填三兄弟之老大
					            , form: form                    //必填三兄弟之这才是真老大
					            , data: '<%=path%>backUserManager/distributeSalesMan.action?teamLeader='+obj.data.userId
					            , isopen: true  //加载完毕后的展开状态，默认值：true
					            //, ckall: true    //启用全选功能，默认值：false
					            , ckallback: function () { } //全选框状态改变后执行的回调函数
					            , click: function (data) {  //节点选中状态改变事件监听，全选框有自己的监听事件
					                console.log(data.elem); //得到checkbox原始DOM对象
					                console.log(data.elem.checked); //开关是否开启，true或者false
					                console.log(data.value); //开关value值，也可以通过data.elem.value得到
					                console.log(data); //开关value值，也可以通过data.elem.value得到
					                console.log(data.othis); //得到美化后的DOM对象
					            }
					        });
					        	
		 			           form.on('submit(demo11)', function(massage) {	
		 			        	 
		 			        	  var array = xtree3.GetChecked(); //这是方法
		 			        	  var clickedArray=[];
						            for (var i = 0; i < array.length; i++) {
						            	clickedArray.push(array[i].value);
						            }
		 			        	 console.log("11111111---"+clickedArray);
		 			               $.ajax({
		 			                   url:'<%=path%>backUserManager/confirmDistributeSalesMan.action',
		 			                   type:'POST',
		 			                   data:{
		 			                	  teamLeader:obj.data.userId,
		 			                	  clickedArray:clickedArray
		 			                   },
		 			                  dataType: "json",
		 			                  async:false, 
		 			                  // contentType : "application/json;charset=UTF-8",
		 			                   //data:JSON.stringify(editData),
		 			                   success:function (msg) {
		 			                       var returnCode = msg.code;//取得返回数据（Sting类型的字符串）的信息进行取值判断
		 			                       if(returnCode=="200"){
		 			                           layer.closeAll('loading');
		 			                           layer.load(2);
		 			                           layer.msg("分配成功！", {icon: 6});
		 			                           setTimeout(function(){
		 			                                layer.closeAll();//关闭所有的弹出层
		 			                           }, 1000);
		 			                          // 加载层-风格
		 			                       }else{
		 			                           layer.msg("分配失败", {icon: 5});
		 			                       }
		 			                   }
		 			               })
		 			              return false; 
		 			           });
					    });		
					}
				});
				
				  //监听行单击事件（单击事件为：rowDouble）
				  table.on('row(test)', function(obj){
					var flag=0;
				    var data = obj.data;
				    //$(this).attr("isClick","1");   
				    var trDataShowList=$(".layui-table-main").children("table").children('tbody').children('tr');
				    var trFixedRList=$(".layui-table-fixed-r").children("div").eq(1).children("table").children('tbody').children('tr');
				    var index=$(this).attr("data-index");
				    console.log("当前行的---"+$(this).attr("data-index"));
				    var A;
				    var X;
				    for(i=0;i<trFixedRList.length;i++){
				    	console.log(trFixedRList[i]);
				    	   if(trFixedRList[i].getAttribute("data-index")==index){
				    		   trFixedRList[i].setAttribute("isClick",1);
				    		   X=trFixedRList[i];
				    		   console.log("匹配了");
				    	   }
						   if(i%2 == 0){
							   trFixedRList[i].setAttribute("initBackgroundColor", "#FFFFFF");//#
						   }else{
							   trFixedRList[i].setAttribute("initBackgroundColor","#F2F2F2");
						   }
						   if(trFixedRList[i].getAttribute("isClick")!=null){
							   trFixedRList[i].setAttribute("isClick",null);
							   trFixedRList[i].style.backgroundColor=""+trFixedRList[i].getAttribute("initBackgroundColor");
						   }
				    }

				   for(i=0;i<trDataShowList.length;i++){
			    	   if(trDataShowList[i].getAttribute("data-index")==index){
			    		   trDataShowList[i].setAttribute("isClick",1);
			    		   A=trDataShowList[i];
			    		   console.log("匹配了");
			    	   }
					   if(i%2 == 0){
						   trDataShowList[i].setAttribute("initBackgroundColor", "#FFFFFF");
					   }else{
						   trDataShowList[i].setAttribute("initBackgroundColor","#F2F2F2");
					   }
					   if(trDataShowList[i].getAttribute("isClick")!=null){
						   trDataShowList[i].setAttribute("isClick",null);
						   trDataShowList[i].style.backgroundColor=""+trDataShowList[i].getAttribute("initBackgroundColor");
					   }
				   }
				   //$(this).attr("isClick","1");
				   //$(this).css("background-color", "#B0C4DE");
				   A.style.backgroundColor="#B0C4DE";
				   X.style.backgroundColor="#B0C4DE";//layui-table tr  .layui-table[lay-even] tr
				  }); 
				
				// 上方工具按钮监听 （批量导入、单挑数据添加、条件搜索）
				// 条件搜索
				var $ = layui.$, active = {
					reload : function() {       
						console.log("输入框的值："+$('#queryUserName').val());
						console.log("输入框的值："+$('#queryUBackGroundAccount').val());
						//执行重载                      
						table.reload('test', {
							page : {
								curr : 1//重新从第 1 页开始                                  
							},
							where : {
								userName:$('#queryUserName').val(),
								uBackGroundAccount : $('#queryUBackGroundAccount').val(), //向后台传递的参数
								roleId:$('#queryRole').val()
							},                     
							url : '<%=path%>backUserManager/getBackUserList.action'//后台做模糊搜索接口路径                        
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
				
 				//取消添加
				$('body').on('click','#cancelAdd',function(){
					console.log("取消");
                    layer.closeAll();//关闭所有的弹出层
				}); 
				$('body').on('click','#cancelDistribute',function(){
					console.log("取消");
                    layer.closeAll();//关闭所有的弹出层
				}); 
				//点击添加单条数据
				$('body').on('click','#addUser',function(){
					console.log("点击 → 单条数据添加");
					 document.getElementById("form2").reset();
					 $("#validateResultInfo").empty();
					//添加单条数据   弹出层
						layer.open({       
					        title:'添加客户信息',
					        type:1,
					        skin: 'layui-layer-molv',    
					        shade: 0.8,  
					        area:['800px','500px'],
					        content:$("#form2")
						}); 
	 			           form.on('submit(demo12)', function(massage) {
	 			        	   console.log("提交了！");
	 			               $.ajax({
	 			                   url:'<%=path%>backUserManager/addBackUserInfo.action',
	 			                   type:'POST',
	 			                   data:{
	 			                	  roleId:massage.field.addRole, 
	 			                	  userName:massage.field.addUserName, 
	 			                	  uPhone:massage.field.validateTel,
	 			                	  uBackGroundAccount:massage.field.addUBackGroundAccount,
	 			                	  uBackGroundPsw:massage.field.addUBackGroundPsw
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
	 			 							url : '<%=path%>backUserManager/getBackUserList.action'//后台做模糊搜索接口路径                        
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
				
				$('body').on('input propertychange','#validateTel',function(){
					console.log("失去焦点验证---");
		            $.ajax({
		                type: "get",
		                url: '<%=path%>backUserManager/verifyBackUserPhone.action',
		                async: false,//同步提交。不设置则默认异步，异步的话，最后执行ajax
		                data: {uPhone:$("#validateTel").val()},
		                success: function (msg) {
		                   if(msg.code==200){
			                    layer.msg("该手机已在公众号注册！未被绑定后台账号！可申请后台账号！", {icon: 6});
			                    $("#validateResultInfo").empty();
			                    $("#validateResultInfo").html("√ &nbsp;&nbsp;&nbsp;该手机已在公众号注册！未被绑定后台账号！可申请后台账号！");
			                    $("#validateResultInfo").css('color','green'); 
			                    //将贷款人手机号自动填写
			                     //$("#addApplicantTel").val($("#validateTel").val());
		                   }else{
		                       layer.msg("该手机未在公众号注册！不可申请业务！或者该手机号已被绑定后台账号，请核实！", {icon: 2});
			                    $("#validateResultInfo").empty();
			                    $("#validateResultInfo").html("× 该手机未在公众号注册！不可申请后台账号！或者该手机号已被绑定后台账号，请核实！");
			                    $("#validateResultInfo").css('color','red'); 
		                   }
		                }
		            });
				}); 
				
				//编辑弹出层 的表单验证
 				form.verify({
 					tel: function(value){ // ((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}
 					console.log("表单验---"+value);
 					    if(value!="" && !new RegExp("^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$").test(value)){
 					       return '手机必须11位数字,且格式正确!';
 					     }//"^[1[34578]\d{9}]+$"	
 					},
 					validateTel:function(value){
						var code=0;
			            $.ajax({
			                type: "get",
			                url: '<%=path%>backUserManager/verifyBackUserPhone.action',
			                async: false,//同步提交。不设置则默认异步，异步的话，最后执行ajax
			                data: {uPhone:value},
			                success: function (ev) {
			                    code = ev.code;
			                }
			            });
						if(code!=200){
							return "该手机未在公众号注册！不可申请业务！或者该手机号已被绑定后台账号，请核实！";
						}
					},
					inputNumber:function(value){
						if(value!="" && !new RegExp("^[0-9]+([.]{1}[0-9]+){0,1}$").test(value)){
	 					       return '必须是数字,且格式正确!';
	 					     }//"^[1[34578]\d{9}]+$"	
					},
					selectRole:function(value){
						if(value=="" ){
							
	 					       return '必须选择角色/职位！';
	 					     }//"^[1[34578]\d{9}]+$"	
					},
					validateUBackGroundAccount:function(value){
						var code=0;
			            $.ajax({
			                type: "get",
			                url: '<%=path%>backUserManager/verifyBackUserAccount.action',
			                async: false,//同步提交。不设置则默认异步，异步的话，最后执行ajax
			                data: {uBackGroundAccount:value},
			                success: function (ev) {
			                    code = ev.code;
			                }
			            });
						if(code==200){
							return "该账号已被注册！不可注册！";
						}
					}
					})

});
		</script>
<script type="text/javascript">
    //一套json数据下面会使用，同时供你参考
    var json = [
            {
                title: "节点1", value: "jd1", data: [
                  { title: "节点1.1", checked: true, disabled: true, value: "jd1.1", data: [] }
                , { title: "节点1.2", value: "jd1.2", checked: true, data: [] }
                , { title: "节点1.3", value: "jd1.3", disabled: true, data: [] }
                , { title: "节点1.4", value: "jd1.4", data: [] }
                ]
            }
            , {
                title: "节点2", value: "jd2", data: [
                  { title: "节点2.1", value: "jd2.1", data: [] }
                , { title: "节点2.2", value: "jd2.2", data: [] }
                , { title: "节点2.3", value: "jd2.3", data: [] }
                , { title: "节点2.4", value: "jd2.4", data: [] }
                ]
            }
            , { title: "节点3", value: "jd3", data: [] }
            , { title: "节点4", value: "jd4", data: [] }
    ];
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
