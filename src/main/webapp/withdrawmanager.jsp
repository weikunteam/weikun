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
/* .layui-table td, .layui-table th, .layui-table-col-set, .layui-table-fixed-r, .layui-table-grid-down, .layui-table-header, .layui-table-page, .layui-table-tips-main, .layui-table-tool, .layui-table-total, .layui-table-view, .layui-table[lay-skin=line], .layui-table[lay-skin=row] {
border-width: 1px;
border-style: solid;
border-color: #000;
}  */
</style>
</head>
<body class="gray-bg">


						<table lay-filter="test" class="layui-hide" id="test"
							lay-skin="row"></table>

	<!-- 提现失败理由信息 -->
	<form class="layui-form layui-form-pane1" id="form1" name="form1"
		style="display: none;">
		<br />
		<%-- action="<%=path%>userManager/editUserInfo.action"  method="post" --%>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width:280px;"> 
			<span style="color: red;font-size: 17px;font-weight: bold;">*&nbsp;&nbsp;&nbsp;为必填项</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span style="color: grey;font-size: 17px;font-weight: bold;"><span style="color: blue; font-size: 17px; font-weight: bold;">*</span>
			&nbsp;&nbsp;&nbsp;为不可编辑项</span>
			</label>
		</div>
		<div class="layui-form-item" style="display: none">
			<label class="layui-form-label">id</label>
			<div class="layui-input-inline">
				<input type="text" name="editPaxydBusId" id="editPaxydBusId" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>
					当前提现状态：</label>
				<div class="layui-input-inline">
					<input type="text" name="editCurrentCheckState" id="editCurrentCheckState" style="color:#0000FF;font-weight: bold;font-size: 17px;"
						readonly="readonly" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>
					提现客户姓名：</label>
				<div class="layui-input-inline">
					<input type="text" name="editContractMan" id="editContractMan" placeholder="未填写" 
						readonly="readonly" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span id="flag_InputLoanAmount"
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>提现金额:</label>
				<div class="layui-input-inline">
					<input type="text" name="editLoanAmount" id="editLoanAmount" readonly="readonly" 
						typeCode="" lay-verify="" autocomplete="off" placeholder="未填写"
						class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span style="color:blue;font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>业务申请日期：</label>
				<div class="layui-input-inline">
					<input type="text" name="editApplyDate" id="editApplyDate" 
						lay-verify="pass" readonly="readonly" autocomplete="off"
						class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item" id="ApplyFailReason_Item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>提现失败原因：</label>
				<div class="layui-input-inline">
					<textarea name="editApplyFailReason" id="editApplyFailReason"
						lay-search="" lay-verify="" style="width: 800px; height: 100px;"placeholder="未填写" readonly="readonly" 
						placeholder="请填写原因" class="layui-textarea"></textarea>
				</div>
			</div>
		</div>
		<div class="layui-form-item" id="ApplyRefuseReason_Item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>申请被拒绝原因：</label>
				<div class="layui-input-inline">
					<textarea name="editApplyRefuseReason" id="editApplyRefuseReason"
						lay-search="" lay-verify="" style="width: 800px; height: 100px;" placeholder="未填写" readonly="readonly" 
						placeholder="请填写原因" class="layui-textarea"></textarea>
				</div>
			</div>
		</div>
	
		<div class="layui-form-item">
			<div class="layui-input-block" style="margin-left: 1100px;">
				<button class="layui-btn  layui-btn-submit " id="demo11"
					lay-submit="" lay-filter="demo11">确认修改</button>
				<button type="button" class="layui-btn layui-btn-primary" id="editReset">重置</button>
				<button type="button" class="layui-btn layui-btn-primary" id="cancelEdit">关闭</button>
			</div>
		</div>
	</form>
		<!-- 添加 客户信息 （单笔） =============================================================================-->
	<form class="layui-form layui-form-pane1" id="form2" name="form2"
		style="display: none;">
		<br />
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 150px;"> <span
				style="color: red; font-size: 17px; font-weight: bold;">*&nbsp;&nbsp;&nbsp;为必填项</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</label>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" id="validateTelLabel"
					style="width: 180px; font-weight: bold;color: red;">* 验证手机号是否注册：</label>
<!-- 					&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
				<div class="layui-input-inline">
					<input type="text" name="validateTel" id="validateTel" style="width: 160px;"
						lay-verify="required|validateTel" autocomplete="off" class="layui-input" placeholder="请输入要验证的手机号" >
						
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" id="validateResultInfo"
					style="width: 360px; font-weight: bold;margin-left: -75px;"></label>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;">客户意向产品：</label>
				<div class="layui-input-inline">
					<select name="addType"
						id="addType" lay-search="" lay-verify="">
						<option value="">选择产品</option>
						<option value="1">平安新一贷</option>
						<option value="2">兴业消费金融</option>
						<option value="3">中国银行消费金融</option>
						<option value="4">海尔-玖康</option>
						<option value="5">小额贷款</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
			<label class="layui-form-label"
					style="width: 150px; font-weight: bold;">客户期望贷款金额:</label>
				<div class="layui-input-inline">
					<input type="text" name="addApplicatExpectLoanAccount" id="addApplicatExpectLoanAccount"
						lay-verify="inputNumber" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span style="color:red;font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>贷款人姓名：</label>
				<div class="layui-input-inline">
					<input type="text" name="addName" id="addName"
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span style="color:red;font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>贷款人性别：</label>
				<div class="layui-input-inline">
					<select name="addSex" id="addSex" lay-search=""
						lay-verify="required|pass">
						<option value="">选择性别</option>
						<option value="0">女</option>
						<option value="1">男</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span style="color:red;font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>贷款人职业 ：</label>
				<div class="layui-input-inline">
					<input type="text" name="addApplicantJob" id="addApplicantJob"
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span style="color:red;font-weight: bold;">*&nbsp;&nbsp;</span>贷款人手机号：</label>
				<div class="layui-input-inline">
					<input type="text" name="addApplicantTel" id="addApplicantTel"
						lay-verify="required|tel" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">房贷类型：</label>
				<div class="layui-input-inline">
					<select name="addHousingLoanType" id="addHousingLoanType"
						lay-search="" lay-verify="">
						<option value="">选择房贷类型</option>
						<option value="0">按揭</option>
						<option value="1">抵押</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">房贷期限（月）：</label>
				<div class="layui-input-inline">
					<input type="text" name="addHousingLoanTerm"
						id="addHousingLoanTerm"  lay-verify="inputNumber"
						autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">保单类型：</label>
				<div class="layui-input-inline">
					<select name="addWarrantyType" id="addWarrantyType" lay-search=""
						lay-verify="">
						<option value="">选择保单类型</option>
						<option value="0">平安保单</option>
						<option value="1">非平安保单</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">保单期限（月）：</label>
				<div class="layui-input-inline">
					<input type="text" name="addWarrantyTerm"
						id="addWarrantyTerm"  lay-verify="inputNumber"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">保单次数：</label>
				<div class="layui-input-inline">
					<input type="text" name="addWarrantyCount" id="addWarrantyCount"
						 lay-verify="inputNumber" autocomplete="off"
						class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">公积金缴纳地址：</label>
				<div class="layui-input-inline">
					<input type="text" name="addAccumulationFundAddress" id="addAccumulationFundAddress" 
						lay-verify="" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">公积金缴纳期限(月):</label>
				<div class="layui-input-inline">
					<input type="text" name="addAccumulationFundTerm" id="addAccumulationFundTerm" 
						lay-verify="inputNumber" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">公积金缴纳金额(元):</label>
				<div class="layui-input-inline">
					<input type="text" name="addAccumulationFundAmount" id="addAccumulationFundAmount" 
						lay-verify="inputNumber" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">是否有营业执照：</label>
				<div class="layui-input-inline">
					<select name="addOwnBusinessLicense" id="addOwnBusinessLicense" lay-search=""
						lay-verify="">
						<option value="">选择是否拥有</option>
						<option value="0">无</option>
						<option value="1">有</option>
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">客户经理建议产品:</label>
				<div class="layui-input-inline">
					<select name="addSalesManAdviceProduct" id="addSalesManAdviceProduct"
						lay-search="" lay-verify="">
						<option value="">选择产品</option>
						<option value="1">平安新一贷</option>
						<option value="2">兴业消费金融</option>
						<option value="3">中国银行消费金融</option>
						<option value="4">海尔-玖康</option>
						<option value="5">小额贷款</option>
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;">客户经理备注：</label>
				<div class="layui-input-inline">
					<textarea name="addSalesManRemarkAndAdvice"
						id="addSalesManRemarkAndAdvice" lay-search=""  lay-verify=""
						style="width: 800px; height: 100px;"  placeholder="客户经理备注以及建议"
						class="layui-textarea"></textarea>
				</div>
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-input-block" style="margin-left: 1100px;">
				<button class="layui-btn  layui-btn-submit " id="demo12"
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
			    <button class="layui-btn layui-btn-danger " id="daoru" style="margin-top: 10px;"><label style="font-weight: bold;font-size: 12px;">批量导入贷款客户数据</label></button>
				<button class="layui-btn" id="addCustomer" style="margin-top: 10px;"><label style="font-weight: bold;font-size: 12px;">添加单条贷款客户数据</label></button>
				</div>
				<span style="float:left;margin-top: 10px;">
						<label style="font-weight: bold;font-size: 15px;">搜索名字：<label/>
						<div class="layui-inline" >
							<input name="queryName" class="layui-input" id="queryName" placeholder="请输入名字"autocomplete="off">
						</div>
						<label style="font-weight: bold;font-size: 15px;margin-left: 10px;">搜索手机号：<label/>
						<div class="layui-inline" >
							<input name="queryApplicantTel" class="layui-input" id="queryApplicantTel" placeholder="请输入手机号"autocomplete="off">
						</div>
						<label style="font-weight: bold;font-size: 15px;margin-left: 10px;">搜索客户状态：<label/>
						<div class="layui-inline" >
							<select name="queryCustomerState" id="queryCustomerState" lay-search="" lay-verify="required">
								<option value="">选择客户状态</option>
								<option value="5">未通知现场签约</option>
								<option value="6">已通知现场签约</option>
								<option value="otherCustomerState">签约经理已接待</option>
							</select>
						</div>
						<label style="font-weight: bold;font-size: 15px;margin-left: 10px;">搜索签约进度：<label/>
						<div class="layui-inline" >
							<select name="queryBusSpeed" id="queryBusSpeed" lay-search="" lay-verify="required">
								<option value="">选择签约进度</option>
								<option value="0">不可申请</option>
								<option value="1">申请中</option>
								<option value="2">成功放款</option>
								<option value="3">申请被拒绝</option>
								<option value="7">贷款未结清</option>
								<option value="8">贷款已结清</option>
								<option value="otherBusSpeed">未处理</option>
							</select>
						</div>
				</span>
				<span style="float:left;">
						<label style="font-weight: bold;font-size: 15px;">起始日期：<label/>
						<div class="layui-inline" >
							<input name="queryApplyDateStart" class="layui-input my_class_name" id="queryApplyDateStart" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
						</div>
						<label style="font-weight: bold;font-size: 15px;margin-left: 24px;">结束日期：<label/>
						<div class="layui-inline" >
							<input name="queryApplyDateEnd" class="layui-input my_class_name" id="queryApplyDateEnd" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
						</div>
						<button class="layui-btn" id="searchBtn" data-type="reload" style="margin-top: 10px;margin-left:10px;width:112px;">
							<label style="font-weight: bold;font-size: 12px;">搜索<label/>
						</button>
				</span>
			</div>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
	</script>
	<!-- 	<script src="js/jquery.min.js"></script>
    <script src="js/jquery-ui.min.js"></script> -->
    <script id="stateBarDemo" type="text/html">
	{{#  if(d.checkState ==5 && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs state"  style="background-color: red">未通知现场签约 </a>
    {{# }if(d.checkState ==6 && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs state"  style="background-color: #09BB07">已通知现场签约 </a>
    {{# }if(d.checkState !=5 && d.checkState !=6 && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs state"  style="background-color: #1E9FFF">签约经理已接待</a>
    {{#  } }}
	</script>
	<script id="speedBarDemo" type="text/html">
	{{#  if(d.checkState ==0 && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">不可申请 </a>
    {{# }if(d.checkState ==1 && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">申请中 </a>
    {{# }if(d.checkState ==2 && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">成功放款 </a>
    {{# }if(d.checkState ==3 && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">申请被拒绝 </a>
    {{# }if(d.checkState ==7  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">贷款未结清 </a>
    {{# }if(d.checkState ==8  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">贷款已结清 </a>
    {{# }if(d.checkState !=0 && d.checkState !=1 && d.checkState !=2 && d.checkState !=3 && d.checkState !=7 && d.checkState !=8 && d.checkState !=null ){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">未处理 </a>
    {{#  } }}
	</script>
	<script id="handleBarDemo" type="text/html">
	{{#  if(d.withdrawState ==0&& d.withdrawState !=null){ }}
			<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
			<a class="layui-btn layui-btn-xs callCustomer" lay-event="callCustomer" style="background-color: red">通知客户</a>
    {{# }if(d.withdrawState ==6 && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	{{# }if(d.withdrawState !=5 && d.checkState !=6 && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    {{#  } }}
	</script>
	<!-- 类型在Table上的 “显示转换” -->
	<script id="amount" type="text/html">
	{{#  if(d.amount !=null && d.amount !=""){ }}
    <span>{{d.amount}}</span>
	<em>元</em>
	{{#  } }}
	</script>
	<script src="layui.js" charset="utf-8"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

	<script>
		
			layui.use('table', function() {
				var table = layui.table;
				var form = layui.form;
				var loadingPage=layer.msg("数据加载中，请稍后...");
				var salesManId="${sessionScope.backGroundUser.userId}";
				console.log(salesManId);
				//table 渲染初始化
				table.render({
					elem: '#test',
					url: '<%=path%>customerManager/getCustomerList.action?salesManId='+salesManId,
					toolbar: '#toolbarDemo',
					even:true,
					//cellMinWidth: 170,
					cols: [
/* 						[
							{align: 'center', title: '贷款人信息', colspan: 7},
							{align: 'center', title: '放款信息', colspan: 3},
							{align: 'center', title: '客户经理意向', colspan: 2},
							{align: 'center', title: '签约经理信息', colspan: 2},
							{align: 'center', title: '房贷详情', colspan: 2},
							{align: 'center', title: '保单详情', colspan: 3},
							{align: 'center', title: '公积金详情', colspan: 4}
							], */
						[{
							field: 'applyDate',
							title: '提现申请日期',
							//minWidth: '166px',
							width: '165',
							sort: true
						}, {
							field: 'withdrawName',
							title: '提现人姓名',
							width: '110'
						}, {
							field: 'amount',
							title: '提现金额',
							templet:'#amount',
							width: '110'
						},  {
							field: 'withdrawCard',
							title: '银行卡号',
							width: '115'
						},{
							//隐藏的“列名”========================
							field: 'id',
							title: '提现id',
 							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;', 
							sort: true
						}, {
							field: 'userId',
							title: '体现人id',
 							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;', 
							sort: true
						}, {
							fixed: 'right',
							title: '提现状态',
							width: '8%',
							toolbar: '#stateBarDemo',
						},{
							fixed: 'right',
							title: '可进行操作',
							width: '12%',
							toolbar: '#handleBarDemo',
						}]
					],
					//修改表头、表体样式
					done : function(res, curr, count) {
						tableList = res.data;
						$('th').css({'font-weight' : 'bold','font-size':'15px'});//'background-color' : '#008B8B','color' : '#fff',
						$('.laytable-cell-group').css({'font-weight' : 'bold','font-size':'25px','color':'black'});
						layer.close(loadingPage);
					},
					page : true
				});
				
				//操作栏、监听行工具事件（编辑、删除 行数据）
				table.on('tool(test)', function(obj) {
					var data = obj.data;
					
					// 通知客户去现场签约
					 if (obj.event === 'callCustomer') {
						console.log("通知");
						console.log(data);
						//获取工具栏按钮dom
						//var stateIndex = $('.state').index(this);
						//“状态栏”中的状态按钮 dom
						var stateDom =$(this).parent().parent().parent().find(".state");
						//保留
						var handleIndex = $('.callCustomer').index(this);
						var handleDom = $('.callCustomer').eq(handleIndex);
						console.log("==="+data.paxydBusId);
						var callCustomerData={
								paxydBusId:data.paxydBusId
						};
						//工具栏样式更新
						if(data.checkState == 5){
	 			               $.ajax({
	 			                   url:'<%=path%>customerManager/callCustomer.action',
	 			                   type:'POST',
	 			                   dataType : 'json',
	 			                   contentType : "application/json;charset=UTF-8",
	 			                   data:JSON.stringify(callCustomerData),
	 			                   success:function (msg) {
	 			                       var returnCode = msg.returnCode;//取得返回数据（Sting类型的字符串）的信息进行取值判断
	 			                       if(returnCode==200){
	 			                           layer.closeAll('loading');
	 			                           layer.load(2);
	 			                           layer.msg("通知成功", {icon: 6});
	 			  						   //当前点击的“通知客户” 移除
	 			  						   //$(this).remove();
	 			  						   handleDom.remove();
	 			  						   //状态栏中的 dom 改变
	 			  						   stateDom.removeClass().addClass('layui-btn primary layui-btn-xs state');
	 			  						   stateDom.attr("style","background-color: #09BB07;");
	 			  						   stateDom.html('已通知现场签约')
	 			  						   //数据更新
	 			  						   obj.update({
	 			  							   checkState:6
	 			  							   });
 	 			                           setTimeout(function(){
	 			                               layer.closeAll();//关闭所有的弹出层
	 			                           }, 1000); 
	 			                          // 加载层-风格
	 			                       }else{
	 			                           layer.msg("通知失败", {icon: 5});
	 			                       }
	 			                   }
	 			               })
	 			              return false;

						};
				   // 删除业务信息
					}else if (obj.event === 'del') {
			                layer.confirm('真的删除行么', function (index) {
								console.log(obj);
								console.log("当前页---"+$(".layui-laypage-curr").find("em:eq(1)").html());
								console.log("总页数---"+$(".layui-laypage-last").attr("data-page"));
								console.log("总条数---"+$(".layui-laypage-count").html());
								console.log("每页条数---"+$(".layui-laypage-limits").find("option:selected").val() );
<%-- 			                    $.ajax({
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
			                    }); --%>
			                    return false; 
			                });
			                
					// 编辑客户信息
					} else if (obj.event === 'edit') {
						console.log(data);
						console.log("业务id---"+data.paxydBusId+"---");
						console.log(typeof data.paxydBusId);//string
						//编辑客户信息 弹出层
 						layer.open({       
					        title:'编辑客户信息',
					        type:1,
					        skin: 'layui-layer-molv',    
					        shade: 0.8,  
					        area:['1500px','760px'],//'1100px','760px'
					        content:$("#form1")
						}); 
						//给编辑弹出层  赋值
						var typeSelect = "dd[lay-value='" + data.type + "']";
						$('#editType').siblings("div.layui-form-select").find('dl').find(typeSelect).click();
						var housingLoanTypeSelect = "dd[lay-value='" + data.housingLoanType + "']";
						$('#editHousingLoanType').siblings("div.layui-form-select").find('dl').find(housingLoanTypeSelect).click();
						var warrantyTypeSelect = "dd[lay-value='" + data.warrantyType + "']";
						$('#editWarrantyType').siblings("div.layui-form-select").find('dl').find(warrantyTypeSelect).click();
						var ownBusinessLicenseSelect = "dd[lay-value='" + data.ownBusinessLicense + "']";
						$('#editOwnBusinessLicense').siblings("div.layui-form-select").find('dl').find(ownBusinessLicenseSelect).click();
						var sexSelect = "dd[lay-value='" + data.sex + "']";
						$('#editSex').siblings("div.layui-form-select").find('dl').find(sexSelect).click();
						var salesManAdviceProductSelect = "dd[lay-value='" + data.salesManAdviceProduct + "']";
						$('#editSalesManAdviceProduct').siblings("div.layui-form-select").find('dl').find(salesManAdviceProductSelect).click();
						$('#editPaxydBusId').val(data.paxydBusId);
						$('#editApplyDate').val(data.applyDate);
						
						if(data.contractManModel!=null){
							$('#editContractMan').val(data.contractManModel.userName);
						}else{
							$('#editContractMan').val("");
						}
						
						$('#editName').val(data.name);
						$('#editApplicantJob').val(data.applicantJob);
						$('#editApplicantTel').val(data.applicantTel);
						$('#editApplicatExpectLoanAccount').val(data.applicatExpectLoanAccount);
						$('#editHousingLoanTerm').val(data.housingLoanTerm);
						$('#editWarrantyTerm').val(data.warrantyTerm);
						$('#editWarrantyCount').val(data.warrantyCount);
						$('#editAccumulationFundAddress').val(data.accumulationFundAddress);
						$('#editAccumulationFundTerm').val(data.accumulationFundTerm);
						$('#editAccumulationFundAmount').val(data.accumulationFundAmount);
						$('#editSalesManRemarkAndAdvice').val(data.salesManRemarkAndAdvice);
						$('#editContractManRemarkAndAdvice').val(data.contractManRemarkAndAdvice);
						$('#editApplyFailReason').val(data.applyFailReason);
						$('#editApplyRefuseReason').val(data.applyRefuseReason);
						transferProduction(data.finalProduct,"editFinalProduct_Input");
						$('#editFinalProduct_Input').attr("typeCode",""+data.finalProduct);
						$('#editLoanAmount').val(data.loanAmount);
						
						if(data.checkState==0){
							$('#editCurrentCheckState').val("不可申请");
							//显示页面该有的 组件
							$("#Processing_Item").css('display','none');//隐藏
							$("#ApplyFailReason_Item").css('display','block');//显示
							$("#ApplyRefuseReason_Item").css('display','none');//隐藏
							$("#LoanInfo_Item").css('display','none');//隐藏
						}else if(data.checkState==1){
							$('#editCurrentCheckState').val("申请中");
							//显示页面该有的 组件
							$("#Processing_Item").css('display','none');//隐藏
							$("#ApplyFailReason_Item").css('display','none');//隐藏
							$("#ApplyRefuseReason_Item").css('display','none');//隐藏
							$("#LoanInfo_Item").css('display','none');//隐藏
						}else if(data.checkState==2){
							$('#editCurrentCheckState').val("成功放款");
							//显示页面该有的 组件
							$("#Processing_Item").css('display','none');//隐藏
							$("#ApplyFailReason_Item").css('display','none');//隐藏
							$("#ApplyRefuseReason_Item").css('display','none');//隐藏
							$("#LoanInfo_Item").css('display','block');//显示
							$('#editLoanStartDate_Input').val(data.loanStartDate);
							$('#editRepaymentDate_Input').val(data.repaymentDate);
							//将放款金额为"不可输入/修改"
							$("#editLoanAmount").attr("readonly","readonly");
						}else if(data.checkState==3){
							$('#editCurrentCheckState').val("申请被拒绝");
							//显示页面该有的 组件
							$("#Processing_Item").css('display','none');//隐藏
							$("#ApplyFailReason_Item").css('display','none');//隐藏
							$("#ApplyRefuseReason_Item").css('display','block');//显示
							$("#LoanInfo_Item").css('display','none');//隐藏
						}else if(data.checkState==4){
							$('#editCurrentCheckState').val("未处理");
							//显示页面该有的 组件
							$("#Processing_Item").css('display','none');//隐藏
							$("#ApplyFailReason_Item").css('display','none');//隐藏
							$("#ApplyRefuseReason_Item").css('display','none');//隐藏
							$("#LoanInfo_Item").css('display','none');//隐藏
						}else if(data.checkState==5){
							$('#editCurrentCheckState').val("未通知");
							//显示页面该有的 组件
							$("#Processing_Item").css('display','none');//隐藏
							$("#ApplyFailReason_Item").css('display','none');//隐藏
							$("#ApplyRefuseReason_Item").css('display','none');//隐藏
							$("#LoanInfo_Item").css('display','none');//隐藏
						}else if(data.checkState==6){
							$('#editCurrentCheckState').val("已通知");
							//显示页面该有的 组件
							$("#Processing_Item").css('display','none');//隐藏
							$("#ApplyFailReason_Item").css('display','none');//隐藏
							$("#ApplyRefuseReason_Item").css('display','none');//隐藏
							$("#LoanInfo_Item").css('display','none');//隐藏
						}else if(data.checkState==7){
							$('#editCurrentCheckState').val("贷款未结清");
							//显示页面该有的 组件
							$("#Processing_Item").css('display','none');//隐藏
							$("#ApplyFailReason_Item").css('display','none');//隐藏
							$("#ApplyRefuseReason_Item").css('display','none');//隐藏
							$("#LoanInfo_Item").css('display','block');//显示
							//放款时间 为文本框且不可修改
							$('#editLoanStartDate_Input').val(data.loanStartDate); 
							//每月放款日期 未文本框且不可修改
							$('#editRepaymentDate_Input').val(data.repaymentDate); 
							//将放款金额为"不可输入/修改"
							$("#editLoanAmount").attr("readonly","readonly");
						}else if(data.checkState==8){
							$('#editCurrentCheckState').val("贷款已结清");
							//显示页面该有的 组件
							$("#Processing_Item").css('display','none');//隐藏
							$("#ApplyFailReason_Item").css('display','none');//隐藏
							$("#ApplyRefuseReason_Item").css('display','none');//隐藏
							$("#LoanInfo_Item").css('display','block');//显示
							//放款时间 为文本框且不可修改
							$('#editLoanStartDate_Input').val(data.loanStartDate);
							//每月放款日期 未文本框且不可修改
							$('#editRepaymentDate_Input').val(data.repaymentDate);
							//将放款金额为"不可输入/修改"
							$("#editLoanAmount").attr("readonly","readonly");
						}
						
						
 			           form.on('submit(demo11)', function(massage) {
 			        	  var editData={
 			        			paxydBusId:data.paxydBusId,
 			        			type:massage.field.editType,//$("#editType").attr("typeCode"),
  			                	applyDate:massage.field.editApplyDate,
  			                	name:massage.field.editName,
  			                	sex:massage.field.editSex,
  			                	applicantJob:massage.field.editApplicantJob,
  			                	applicantTel:massage.field.editApplicantTel,
  			                	applicatExpectLoanAccount:massage.field.editApplicatExpectLoanAccount,
  			                	housingLoanType:massage.field.editHousingLoanType,
  			                	housingLoanTerm:massage.field.editHousingLoanTerm,
  			                	warrantyType:massage.field.editWarrantyType,
  			                	warrantyTerm:massage.field.editWarrantyTerm,
  			                	warrantyCount:massage.field.editWarrantyCount,
  			                	accumulationFundAddress:massage.field.editAccumulationFundAddress,
  			                	accumulationFundTerm:massage.field.editAccumulationFundTerm,
  			                	accumulationFundAmount:massage.field.editAccumulationFundAmount,
  			                	ownBusinessLicense:massage.field.editOwnBusinessLicense,
  			                	salesManAdviceProduct:massage.field.editSalesManAdviceProduct,
  			                	salesManRemarkAndAdvice:massage.field.editSalesManRemarkAndAdvice
 			        	  };
 			               $.ajax({
 			                   url:'<%=path%>customerManager/editCustomerInfo.action',
 			                   type:'POST',
 			                   dataType : 'json',
 			                   contentType : "application/json;charset=UTF-8",
 			                   data:JSON.stringify(editData),
 			                   success:function (msg) {
 			                       var returnCode = msg.returnCode;//取得返回数据（Sting类型的字符串）的信息进行取值判断
 			                       if(returnCode==200){
 			                           layer.closeAll('loading');
 			                           layer.load(2);
 			                           layer.msg("修改成功", {icon: 6});
 			                           setTimeout(function(){
 			                              obj.update({
 			                            	// userId:massage.field.userId,
 			                            	type:massage.field.editType,//$("#editType").attr("typeCode"),
 			  			                	applyDate:massage.field.editApplyDate,
 			  			                	name:massage.field.editName,
 			  			                	sex:massage.field.editSex,
 			  			                	applicantJob:massage.field.editApplicantJob,
 			  			                	applicantTel:massage.field.editApplicantTel,
 			  			                	applicatExpectLoanAccount:massage.field.editApplicatExpectLoanAccount,
 			  			                	housingLoanType:massage.field.editHousingLoanType,
 			  			                	housingLoanTerm:massage.field.editHousingLoanTerm,
 			  			                	warrantyType:massage.field.editWarrantyType,
 			  			                	warrantyTerm:massage.field.editWarrantyTerm,
 			  			                	warrantyCount:massage.field.editWarrantyCount,
 			  			                	accumulationFundAddress:massage.field.editAccumulationFundAddress,
 			  			                	accumulationFundTerm:massage.field.editAccumulationFundTerm,
 			  			                	accumulationFundAmount:massage.field.editAccumulationFundAmount,
 			  			                	ownBusinessLicense:massage.field.editOwnBusinessLicense,
 			  			                	salesManAdviceProduct:massage.field.editSalesManAdviceProduct,
 			  			                	salesManRemarkAndAdvice:massage.field.editSalesManRemarkAndAdvice
 			                                });//修改成功修改表格数据不进行跳转
 			                                layer.closeAll();//关闭所有的弹出层
 			                           }, 1000);
 			                          // 加载层-风格
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
				   A.style.backgroundColor="#B0C4DE";
				   X.style.backgroundColor="#B0C4DE";//layui-table tr  .layui-table[lay-even] tr
				  }); 
				
				// 上方工具按钮监听 （批量导入、单挑数据添加、条件搜索）
				// 条件搜索
				var $ = layui.$, active = {
					reload : function() {
						var conditionData={
								queryName:$('#queryName').val(),
								queryApplicantTel:$('#queryApplicantTel').val(),
								queryCustomerState:$('#queryCustomerState').val(),
								queryBusSpeed:$('#queryBusSpeed').val(),
								queryApplyDateStart:$('#queryApplyDateStart').val(),
								queryApplyDateEnd:$('#queryApplyDateEnd').val()	
						};
						     
						console.log("条件对象："+conditionData.queryName);
						console.log("条件对象："+conditionData.queryApplicantTel);
						console.log("条件对象："+conditionData.queryCustomerState);
						console.log("条件对象："+conditionData.queryBusSpeed);
						console.log("条件对象："+conditionData.queryApplyDateStart);
						console.log("条件对象："+conditionData.queryApplyDateEnd);
						//执行重载                      
						table.reload('test', {
							page : {
								curr : 1//重新从第 1 页开始                                  
							},
							where : {
								salesManId:salesManId,
								name:$('#queryName').val(),//向后台传递的参数
								applicantTel:$('#queryApplicantTel').val(),
								customerState:$('#queryCustomerState').val(),
								busSpeed:$('#queryBusSpeed').val(),
								applyDateStart:$('#queryApplyDateStart').val(),
								applyDateEnd:$('#queryApplyDateEnd').val()	 
							},                     
							url : '<%=path%>customerManager/getCustomerList.action'//后台做模糊搜索接口路径                        
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
				$('body').on('click','#addCustomer',function(){
					console.log("点击 → 单条数据添加");
                    //将添加页面数据置空
                    document.getElementById("form2").reset();
                    $("#validateResultInfo").empty();
					//添加单条数据   弹出层
				    layer.open({       
					        title:'添加客户信息',
					        type:1,
					        skin: 'layui-layer-molv',    
					        shade: 0.8,  
					        area:['1500px','760px'],
					        content:$("#form2")
						}); 

	 			           form.on('submit(demo12)', function(massage) {
	 							var addCustomerInfo={
	 									salesManId:salesManId,
	 									//paxydBusId:data.paxydBusId,
	 				        			type:massage.field.addType,
	 				                	//applyDate:massage.field.addApplyDate,
	 				                	name:massage.field.addName,
	 				                	sex:massage.field.addSex,
	 				                	applicantJob:massage.field.addApplicantJob,
	 				                	applicantTel:massage.field.addApplicantTel,
	 				                	applicatExpectLoanAccount:massage.field.addApplicatExpectLoanAccount,
	 				                	housingLoanType:massage.field.addHousingLoanType,
	 				                	housingLoanTerm:massage.field.addHousingLoanTerm,
	 				                	warrantyType:massage.field.addWarrantyType,
	 				                	warrantyTerm:massage.field.addWarrantyTerm,
	 				                	warrantyCount:massage.field.addWarrantyCount,
	 				                	accumulationFundAddress:massage.field.addAccumulationFundAddress,
	 				                	accumulationFundTerm:massage.field.addAccumulationFundTerm,
	 				                	accumulationFundAmount:massage.field.addAccumulationFundAmount,
	 				                	ownBusinessLicense:massage.field.addOwnBusinessLicense,
	 				                	salesManAdviceProduct:massage.field.addSalesManAdviceProduct,
	 				                	salesManRemarkAndAdvice:massage.field.addSalesManRemarkAndAdvice
	 							}
	 			        	   
	 			               $.ajax({
	 			                   url:'<%=path%>customerManager/addCustomerInfo.action',
	 			                   type:'POST',
	 			                   dataType : 'json',
	 			                   contentType : "application/json;charset=UTF-8",
	 			                   data:JSON.stringify(addCustomerInfo),
	 			                   success:function (msg) {
	 			                       var returnCode = msg.returnCode;//取得返回数据（Sting类型的字符串）的信息进行取值判断
	 			                       if(returnCode==200){
	 			                           layer.closeAll('loading');
	 			                           layer.load(2);
	 			                           layer.msg("添加客户贷款申请信息成功！", {icon: 6});
	 			                           //将添加页面数据置空
	 			                           document.getElementById("form2").reset();
	 			                          $("#validateResultInfo").empty();
	 			                           setTimeout(function(){
	 			                                layer.closeAll();//关闭所有的弹出层
	 			                           }, 400);
	 			                          //重载 到第一页
 	 			 						table.reload('test', {
	 			 							page : {                           
	 			 								curr:1
	 			 							},
	 			 							where : {
	 			 								//name : demoReload //向后台传递的参数
	 			 							},                     
	 			 							url : '<%=path%>customerManager/getCustomerList.action?salesManId='+salesManId,
	 			 							method : 'get'
	 			 						}); 
 	 									//重新渲染日期插件
 	 									renderLayDate();
	 			                       }else{
	 			                           layer.msg("添加失败", {icon: 5});
	 			                       }
	 			                   }
	 			               })
	 			              return false;
	 			           })
					
				}); 
 				//取消添加
				$('body').on('click','#cancelAdd',function(){
					console.log("取消");
                    layer.closeAll();//关闭所有的弹出层
				}); 
 				//取消修改
				$('body').on('click','#cancelEdit',function(){
					console.log("取消");
                    layer.closeAll();//关闭所有的弹出层
				}); 
 				//重置修改页面
 				$('body').on('click','#editReset',function(){
					console.log("重置");
					var select = "dd[lay-value='']";
					
					$('#editType').siblings("div.layui-form-select").find('dl').find(select).click();
					$("#editName").val("");
					$('#editSex').siblings("div.layui-form-select").find('dl').find(select).click();
					$("#editApplicantJob").val("");
					$("#editApplicantTel").val("");
					$("#editApplicatExpectLoanAccount").val("");
					$('#editHousingLoanType').siblings("div.layui-form-select").find('dl').find(select).click();
					$("#editHousingLoanTerm").val("");
					$('#editWarrantyType').siblings("div.layui-form-select").find('dl').find(select).click();
					$("#editWarrantyTerm").val("");
					$("#editWarrantyCount").val("");
					$("#editAccumulationFundAddress").val("");
					$("#editAccumulationFundTerm").val("");
					$("#editAccumulationFundAmount").val("");
					$('#editOwnBusinessLicense').siblings("div.layui-form-select").find('dl').find(select).click();
					$("#editSalesManAdviceProduct").siblings("div.layui-form-select").find('dl').find(select).click();
					$("#editSalesManRemarkAndAdvice").val("");
				}); 
 				
				$('body').on('input propertychange','#validateTel',function(){
					console.log("失去焦点验证---");
		            $.ajax({
		                type: "get",
		                url: '<%=path%>customerManager/verifyUserPhone.action',
		                async: false,//同步提交。不设置则默认异步，异步的话，最后执行ajax
		                data: {userPhone:$("#validateTel").val()},
		                success: function (msg) {
		                   if(msg.code==200){
			                    layer.msg("该手机已在公众号注册！可申请业务！", {icon: 6});
			                    $("#validateResultInfo").empty();
			                    $("#validateResultInfo").html("√ &nbsp;&nbsp;&nbsp;该手机已在公众号注册！可申请业务！");
			                    $("#validateResultInfo").css('color','green'); 
			                    //将贷款人手机号自动填写
			                     $("#addApplicantTel").val($("#validateTel").val());
		                   }else{
		                       layer.msg("该手机未在公众号注册！不可申请业务！", {icon: 2});
			                    $("#validateResultInfo").empty();
			                    $("#validateResultInfo").html("× 该手机未在公众号注册！不可申请业务！");
			                    $("#validateResultInfo").css('color','red'); 
		                   }
		                }
		            });
				}); 
				
				//日期控件
				//执行一个laydate实例
				renderLayDate();
				
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
    						                url: '<%=path%>userManager/verifyUserPhone.action',
    						                async: false,//同步提交。不设置则默认异步，异步的话，最后执行ajax
    						                data: {userPhone:value},
    						                success: function (ev) {
    						                    code = ev.code;
    						                }
    						            });
    									if(code!=200){
    										return "该手机未在公众号注册！不可申请业务！";
    									}
    								},
    								inputNumber:function(value){
    									if(value!="" && !new RegExp("^[0-9]+([.]{1}[0-9]+){0,1}$").test(value)){
 				 					       return '必须是数字,且格式正确!';
 				 					     }//"^[1[34578]\d{9}]+$"	
    								}
									})
								});

	function renderLayDate(){
		//重新渲染日期插件
		layui.use(['laydate'], function(){
			  var form = layui.form,
			  laydate = layui.laydate;
			  $('.my_class_name').each(function(){
					laydate.render({
							elem: this       //使用this指向当前元素,不能使用class名, 否则只有第一个有效
					});
		})
		});
	}
	
	function transferProduction(fieldData,id){
		if(fieldData!=null){
			if(fieldData==1){
				$("#"+id+"").val("平安新一贷");
			}else if(fieldData==2){
				$("#"+id+"").val("兴业消费金融");
			}else if(fieldData==3){
				$("#"+id+"").val("中国银行消费金融");
			}else if(fieldData==4){
				$("#"+id+"").val("海尔-玖康");
			}else if(fieldData==5){
				$("#"+id+"").val("小额贷款");
			}
		}else{
			$("#"+id+"").val(null);
		}
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
