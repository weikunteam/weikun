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
	<!-- 编辑修改 意向客户资质信息 -->
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
					当前业务进度：</label>
				<div class="layui-input-inline">
					<input type="text" name="editCurrentCheckState" id="editCurrentCheckState" style="color:#0000FF;font-weight: bold;font-size: 17px;"
						readonly="readonly" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>
					签约经理姓名：</label>
				<div class="layui-input-inline">
					<input type="text" name="editContractMan" id="editContractMan"
						readonly="readonly" autocomplete="off" class="layui-input">
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
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span style="color:blue;font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>客户意向产品：</label>
				<div class="layui-input-inline">
					<input type="text" name="editType" id="editType"  typeCode="" 
						lay-verify="pass" readonly="readonly" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>意向贷款金额:</label>
				<div class="layui-input-inline">
					<input type="text" name="editApplicatExpectLoanAccount"
						id="editApplicatExpectLoanAccount"  lay-verify="pass"
						readonly="readonly" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>贷款人姓名：</label>
				<div class="layui-input-inline">
					<input type="text" name="editName" id="editName" 
						lay-verify="" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>贷款人性别：</label>
				<div class="layui-input-inline">
					<select name="editSex" id="editSex" lay-search="" 
						lay-verify="">
						<option value="">未填写</option>
						<option value="0">女</option>
						<option value="1">男</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>贷款人职业 ：</label>
				<div class="layui-input-inline">
					<input type="text" name="editApplicantJob" id="editApplicantJob" lay-verify="" 
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>贷款人手机号：</label>
				<div class="layui-input-inline">
					<input type="text" name="editApplicantTel" id="editApplicantTel"
						 lay-verify="tel" autocomplete="off"
						class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>房贷类型：</label>
				<div class="layui-input-inline">
					<select name="editHousingLoanType" id="editHousingLoanType"
						lay-search="" lay-verify="">
						<option value="">未填写</option>
						<option value="0">按揭</option>
						<option value="1">抵押</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;</span>房贷期限（月）：</label>
				<div class="layui-input-inline">
					<input type="text" name="editHousingLoanTerm"
						id="editHousingLoanTerm"  lay-verify="inputNumber"
						autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>保单类型：</label>
				<div class="layui-input-inline">
					<select name="editWarrantyType" id="editWarrantyType" lay-search=""
						lay-verify="">
						<option value="">未填写</option>
						<option value="0">平安保单</option>
						<option value="1">非平安保单</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;</span>保单期限（月）：</label>
				<div class="layui-input-inline">
					<input type="text" name="editWarrantyTerm"
						id="editWarrantyTerm"  lay-verify="inputNumber"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>保单次数：</label>
				<div class="layui-input-inline">
					<input type="text" name="editWarrantyCount" id="editWarrantyCount"
						 lay-verify="inputNumber" autocomplete="off"
						class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*</span>公积金缴纳地址：</label>
				<div class="layui-input-inline">
					<input type="text" name="editAccumulationFundAddress" id="editAccumulationFundAddress" 
						lay-verify="" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;</span>公积金缴纳期限
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(月):</label>
				<div class="layui-input-inline">
					<input type="text" name="editAccumulationFundTerm" id="editAccumulationFundTerm" 
						lay-verify="inputNumber" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;</span>公积金缴纳金额
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(元):</label>
				<div class="layui-input-inline">
					<input type="text" name="editAccumulationFundAmount" id="editAccumulationFundAmount" 
						lay-verify="inputNumber" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*</span>是否有营业执照：</label>
				<div class="layui-input-inline">
					<select name="editOwnBusinessLicense" id="editOwnBusinessLicense" lay-search=""
						lay-verify="">
						<option value="">未填写</option>
						<option value="0">无</option>
						<option value="1">有</option>
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>
					客户经理姓名：</label>
				<div class="layui-input-inline">
					<input type="text" name="editSalesMan" id="editSalesMan"
						readonly="readonly" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;"> *&nbsp;</span>客户经理建议产品:</label>
				<div class="layui-input-inline">
					<input type="text" name="editSalesManAdviceProduct"
						id="editSalesManAdviceProduct" typeCode="" lay-verify="pass"
						readonly="readonly" autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label" style="width: 150px;font-weight: bold;"><span style="color:blue;font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>
				客户经理备注：</label>
				<div class="layui-input-inline">
					<textarea name="editSalesManRemarkAndAdvice"
						id="editSalesManRemarkAndAdvice" lay-search=""  lay-verify="" readonly="readonly" 
						style="width: 800px; height: 100px;" placeholder="客户经理备注以及建议"
						class="layui-textarea"></textarea>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"> <span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>签约经理备注：</label>
				<div class="layui-input-inline">
					<textarea name="editContractManRemarkAndAdvice"
						id="editContractManRemarkAndAdvice" lay-search="" lay-verify=""
						style="width: 800px; height: 100px;" placeholder="签约经理备注以及建议"
						class="layui-textarea"></textarea>
				</div>
			</div>
		</div>
		<div class="layui-form-item" id="ApplyFailReason_Item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>不可申请原因：</label>
				<div class="layui-input-inline">
					<textarea name="editApplyFailReason" id="editApplyFailReason"
						lay-search="" lay-verify="" style="width: 800px; height: 100px;"
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
						lay-search="" lay-verify="" style="width: 800px; height: 100px;"
						placeholder="请填写原因" class="layui-textarea"></textarea>
				</div>
			</div>
		</div>
		<div class="layui-form-item" id="LoanInfo_Item">
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span id="flag_InputLoanStartDate"
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>放款日期：</label>
				<div class="layui-input-inline" id="editLoanStartDate_Input_LineItem">
					<input type="text" name="editLoanStartDate_Input"
						id="editLoanStartDate_Input"   lay-verify=""
						readonly="readonly" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline"  id="editFinalProduct_Input_LineItem">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>最终签约产品：</label>
				<div class="layui-input-inline">
					<input type="text" name="editFinalProduct_Input"
						id="editFinalProduct_Input" typeCode="" lay-verify=""
						readonly="readonly" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span id="flag_InputLoanAmount"
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>放款金额:</label>
				<div class="layui-input-inline">
					<input type="text" name="editLoanAmount" id="editLoanAmount"
						typeCode="" lay-verify="" autocomplete="off" 
						class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 150px; font-weight: bold;"><span id="flag_InputRepaymentDate"
					style="color: blue; font-weight: bold;">*&nbsp;&nbsp;&nbsp;</span>每月还款日期：</label>
				<div class="layui-input-inline" id="editRepaymentDate_Input_LineItem">
					<input type="text" name="editRepaymentDate_Input"
						id="editRepaymentDate_Input" lay-verify="" readonly="readonly"
						autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block" style="margin-left: 1100px;">
				<!-- <button type="button" class="layui-btn layui-btn-primary" id="editReset">重置</button> -->
				<button type="button" class="layui-btn layui-btn-primary" id="cancelEdit">关闭</button>
			</div>
		</div>
	</form>
	<!-- <table class="layui-hide" id="test"></table> -->
	<!-- layUI javascrip部分 -->
	<script id="toolbarDemo" type="text/html">
			<div class="layui-btn-container">
				<span style="float:left;margin-top: 20px;">
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
	{{#  if(d.checkState ==5  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs state"  style="background-color: red">未通知现场签约 </a>
    {{# }if(d.checkState ==6  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs state"  style="background-color: #09BB07">已通知现场签约 </a>
    {{# }if(d.checkState !=5 && d.checkState !=6  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs state"  style="background-color: #1E9FFF">签约经理已接待</a>
    {{#  } }}
	</script>
	<script id="speedBarDemo" type="text/html">
	{{#  if(d.checkState ==0  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">不可申请 </a>
    {{# }if(d.checkState ==1  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">申请中 </a>
    {{# }if(d.checkState ==2  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">成功放款 </a>
    {{# }if(d.checkState ==3  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">申请被拒绝 </a>
    {{# }if(d.checkState ==7  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">贷款未结清 </a>
    {{# }if(d.checkState ==8  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">贷款已结清 </a>
    {{# }if(d.checkState !=0 && d.checkState !=1 && d.checkState !=2 && d.checkState !=3 && d.checkState !=7 && d.checkState !=8  && d.checkState !=null){ }}
			<a class="layui-btn layui-btn-xs speed"  style="background-color: #0000FF">未处理 </a>
    {{#  } }}
	</script>
	<script id="handleBarDemo" type="text/html">
			<a class="layui-btn layui-btn-xs" lay-event="edit">查看详情</a>
	</script>
	<!-- 类型在Table上的 “显示转换” -->
	<script id="sex" type="text/html">
		{{#  if(d.sex ==0){ }}
				女
    	{{# }if(d.sex ==1) { }}
				男
		{{#  } }}
	</script>
	<script id="type" type="text/html">
		{{#  if(d.type ==1){ }}
				平安新一贷
    	{{# }if(d.type ==2) { }}
				兴业消费金融
    	{{# }if(d.type ==3) { }}
				中国银行消费金融
    	{{# }if(d.type ==4) { }}
				海尔-玖康
    	{{# }if(d.type ==5) { }}
				小额贷款
		{{#  } }}
	</script>
	<script id="applicatExpectLoanAccount" type="text/html">
	{{#  if(d.applicatExpectLoanAccount !=null && d.applicatExpectLoanAccount !=""){ }}
    <span>{{d.applicatExpectLoanAccount}}</span>
	<em>元</em>
	{{#  } }}
	</script>
	<script id="salesManModel" type="text/html">
	{{#  if(d.salesManModel !=null ){ }}
    <span>{{d.salesManModel.userName}}</span>
	{{#  } }}
	</script>
	<script id="salesManAdviceProduct" type="text/html">
		{{#  if(d.salesManAdviceProduct ==1){ }}
				平安新一贷
    	{{# }if(d.salesManAdviceProduct ==2) { }}
				兴业消费金融
    	{{# }if(d.salesManAdviceProduct ==3) { }}
				中国银行消费金融
    	{{# }if(d.salesManAdviceProduct ==4) { }}
				海尔-玖康
    	{{# }if(d.salesManAdviceProduct ==5) { }}
				小额贷款
		{{#  } }}
	</script>
	<script id="contractManName" type="text/html">
	{{#  if(d.contractManName !=null && d.contractManName !=""){ }}
    <span>{{d.contractManName}}</span>
	{{#  } }}
	</script>
	<script id="finalProduct" type="text/html">
		{{#  if(d.finalProduct ==1){ }}
				平安新一贷
    	{{# }if(d.finalProduct ==2) { }}
				兴业消费金融
    	{{# }if(d.finalProduct ==3) { }}
				中国银行消费金融
    	{{# }if(d.finalProduct ==4) { }}
				海尔-玖康
    	{{# }if(d.finalProduct ==5) { }}
				小额贷款
		{{#  } }}
	</script>
	<script id="loanAmount" type="text/html">
	{{#  if(d.loanAmount !=null && d.loanAmount !=""){ }}
    <span>{{d.loanAmount}}</span>
	<em>元</em>
	{{#  } }}
	</script>
	<script id="housingLoanType" type="text/html">
    {{#  if(d.housingLoanType ==0){ }}
			按揭
    {{# }if(d.housingLoanType ==1) { }}
			抵押
    {{#  } }}
	</script>
	<script id="housingLoanTerm" type="text/html">
	{{#  if(d.housingLoanTerm !=null && d.housingLoanTerm !=""){ }}
    <span>{{d.housingLoanTerm}}</span>
	<em>月</em>
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
		{{#  if(d.warrantyTerm !=null && d.warrantyTerm !=""){ }}
		<span>{{d.warrantyTerm}}</span>
		<em>月</em>
		{{#  } }}
	</script>
	<script id="accumulationFundTerm" type="text/html">
		{{#  if(d.accumulationFundTerm !=null && d.accumulationFundTerm !=""){ }}
		<span>{{d.accumulationFundTerm}}</span>
		<em>月</em>
		{{#  } }}
	</script>
	<script id="loanTerm" type="text/html">
		{{#  if(d.accrualType ==0 && d.accrualType !=null){ }}
				<span>{{d.loanTerm}}</span>
				<em>月</em>
    	{{# }if(d.accrualType ==1 && d.accrualType !=null) { }}
				<span>{{d.loanTerm}}</span>
				<em>年</em>
		{{#  } }}
	</script>
	<script id="ownBusinessLicense" type="text/html">
		{{#  if(d.ownBusinessLicense ==0){ }}
				无
    	{{# }if(d.ownBusinessLicense ==1) { }}
				有
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
					url: '<%=path%>contractManager/getContractList.action?',               //salesManId='+salesManId,
					toolbar: '#toolbarDemo',
					even:true,
					//cellMinWidth: 170,
					cols: [
						[
							{align: 'center', title: '贷款人信息', colspan: 7},
							{align: 'center', title: '放款信息', colspan: 3},
							{align: 'center', title: '签约经理信息', colspan: 2},
							{align: 'center', title: '客户经理信息', colspan: 3},
							{align: 'center', title: '房贷详情', colspan: 2},
							{align: 'center', title: '保单详情', colspan: 3},
							{align: 'center', title: '公积金详情', colspan: 4}
							],
						[{
							field: 'applyDate',
							title: '业务申请日期',
							width: '165',
							sort: true
						}, {
							field: 'name',
							title: '贷款人姓名',
							width: '110'
						}, {
							field: 'sex',
							title: '性别',
							templet:'#sex',
							width: '61'
						},  {
							field: 'applicantJob',
							title: '职业',
							//templet:'#sex',
							width: '115'
						},{
							field: 'applicantTel',
							title: '手机号',
							width: '120'
						},  {
							field: 'type',
							title: '意向产品',
							templet:'#type',
							width: '115'
						}, {
							field: 'applicatExpectLoanAccount',
							title: '意向贷款金额',
							templet:'#applicatExpectLoanAccount',
							width: '121'
						}, {
							field: 'loanStartDate',
							title: '放款时间',
							//templet:'#housingLoanType',
							width: '114',
							sort: true
						}, {
							field: 'finalProduct',
							title: '最终签约产品',
							templet:'#finalProduct',
							width: '123'
						}, {
							field: 'loanAmount',
							title: '放款金额',
							templet:'#loanAmount',
							width: '100'
						},{
							field: 'contractManName',
							title: '签约经理姓名',
							templet:'#contractManName',
							width: '123'
						},{
							field: 'contractManRemarkAndAdvice',
							title: '签约经理备注',
							//templet:'#housingLoanType',
							width: '126'
						},{
							field: 'salesManModel',
							title: '客户经理姓名',
							templet:'#salesManModel',
							width: '123'
						},{
							field: 'salesManAdviceProduct',
							title: '客户经理建议产品',
							templet:'#salesManAdviceProduct',
							width: '152'
						}, {
							field: 'salesManRemarkAndAdvice',
							title: '客户经理备注',
							width: '126'
						},  {
							field: 'housingLoanType',
							title: '房贷类型',
							templet:'#housingLoanType',
							width: '91'
						}, {
							field: 'housingLoanTerm',
							title: '房贷期限',
							templet:'#housingLoanTerm',
							width: '92'
						}, {
							field: 'warrantyType',
							title: '保单类型',
							templet:'#warrantyType',
							width: '101'
						}, {
							field: 'warrantyTerm',
							title: '保单期限',
							templet:'#warrantyTerm',
							width: '91'
						}, {
							field: 'warrantyCount',
							title: '保单次数',
							width: '100'
						}, {
							field: 'accumulationFundAddress',
							title: '公积金缴纳地址',
							width: '136'
						}, {
							field: 'accumulationFundTerm',
							title: '公积金缴纳期限(月份)',
							templet:'#accumulationFundTerm',
							width: '190'
						}, {
							field: 'accumulationFundAmount',
							title: '公积金缴纳金额',
							width: '136'
						},  {
							field: 'ownBusinessLicense',
							title: '是否有营业执照',
							templet:'#ownBusinessLicense',
							width: '147'
						},  {
							//隐藏的“列名”========================
							field: 'paxydBusId',
							title: '平安新一贷业务id',
 							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;', 
							sort: true
						}, {
							field: 'userId',
							title: '公众号注册人id',
 							minWidth: '0%',
							width: '0%',
							type: 'space',
							style: 'display:none;', 
							sort: true
						},{
							field: 'salesManId',
							title: '客户经理id',
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
						}, {
							fixed: 'right',
							title: '客户状态',
							width: '8%',
							toolbar: '#stateBarDemo',
						}, {
							fixed: 'right',
							title: '签约进度',
							width: '7%',
							toolbar: '#speedBarDemo',
						}, {
							fixed: 'right',
							title: '可进行操作',
							width: '7%',
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
					// 编辑客户信息（业务处理）
					if (obj.event === 'edit') {
						console.log(data);
						console.log("业务id---"+data.paxydBusId+"---");
						console.log("签约进度---"+data.checkState+"---");
						//编辑客户信息 弹出层
 						layer.open({       
					        title:'编辑客户信息',
					        type:1,
					        skin: 'layui-layer-molv',    
					        shade: 0.8,  
					        area:['1500px','760px'],//'1100px','760px'
					        content:$("#form1")
						}); 
						//将下拉框设置为可赋值
						$("#editSex").removeAttr('disabled');
						$("#editHousingLoanType").removeAttr('disabled');
						$("#editWarrantyType").removeAttr('disabled');
						$("#editOwnBusinessLicense").removeAttr('disabled');   
						//渲染下拉框
						form.render('select');
						//重新渲染日期插件
						renderLayDate();
/* 						//将下拉框设置为可赋值
						$("#editSex").removeAttr('disabled');
						$("#editHousingLoanType").removeAttr('disabled');
						$("#editWarrantyType").removeAttr('disabled');
						$("#editOwnBusinessLicense").removeAttr('disabled');   */
						//给编辑弹出层  赋值
						var checkStateSelect = "dd[lay-value=' ']";//流程操作 默认选中第一个“选择操作”
						$('#editCheckState').siblings("div.layui-form-select").find('dl').find(checkStateSelect).click();
						var housingLoanTypeSelect = "dd[lay-value='" + data.housingLoanType + "']";
						$('#editHousingLoanType').siblings("div.layui-form-select").find('dl').find(housingLoanTypeSelect).click();
						var warrantyTypeSelect = "dd[lay-value='" + data.warrantyType + "']";
						$('#editWarrantyType').siblings("div.layui-form-select").find('dl').find(warrantyTypeSelect).click();
						var ownBusinessLicenseSelect = "dd[lay-value='" + data.ownBusinessLicense + "']";
						$('#editOwnBusinessLicense').siblings("div.layui-form-select").find('dl').find(ownBusinessLicenseSelect).click();
						var sexSelect = "dd[lay-value='" + data.sex + "']";
						$('#editSex').siblings("div.layui-form-select").find('dl').find(sexSelect).click();

						$('#editPaxydBusId').val(data.paxydBusId);
						$('#editApplyDate').val(data.applyDate);
						transferProduction(data.type,"editType");
						$('#editType').attr("typeCode",""+data.type);
						if(data.salesManModel!=null){
							$('#editSalesMan').val(data.salesManModel.userName);
						}else{
							$('#editSalesMan').val("");
						}
						if(data.contractManModel!=null){
							$('#editContractMan').val(data.contractManModel.userName);
						}else{
							$('#editContractMan').val("");
						}
						//var contractManName="${sessionScope.backGroundUser.userName}";
						//$('#editContractMan').val(contractManName);
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
						transferProduction(data.salesManAdviceProduct,"editSalesManAdviceProduct");
						$('#editSalesManAdviceProduct').attr("typeCode",""+data.salesManAdviceProduct);
						$('#editSalesManRemarkAndAdvice').val(data.salesManRemarkAndAdvice);
						$('#editContractManRemarkAndAdvice').val(data.contractManRemarkAndAdvice);
						$('#editApplyFailReason').val(data.applyFailReason);
						$('#editApplyRefuseReason').val(data.applyRefuseReason);
						//显示框的形式显示不同 一个是日期插件 一个是文本框(不可修改的)
						//$('#editLoanStartDate').val(data.loanStartDate);
						//显示框的形式显示不同 一个是下拉框 一个是文本框(不可修改的)
						//$('#editFinalProduct').val(data.finalProduct); 
						transferProduction(data.finalProduct,"editFinalProduct_Input");
						$('#editFinalProduct_Input').attr("typeCode",""+data.finalProduct);
						$('#editLoanAmount').val(data.loanAmount);
						
						//对于签约状态的不同、流程页面相应变化。
						if(data.checkState!=null){
							//赋值完 下拉框不可选
  							$("#editSex").attr('disabled','disabled');
							$("#editHousingLoanType").attr('disabled','disabled');
							$("#editWarrantyType").attr('disabled','disabled');
							$("#editOwnBusinessLicense").attr('disabled','disabled');  
							
/* 							$("#editSex").removeAttr('disabled');
							$("#editHousingLoanType").removeAttr('disabled');
							$("#editWarrantyType").removeAttr('disabled');
							$("#editOwnBusinessLicense").removeAttr('disabled');    */
							
							//赋值完 输入框不可读
							$('input,textarea',$('form[name="form1"]')).attr('readonly',true); 
							//空信息 则为未填写
							$('input,textarea',$('form[name="form1"]')).attr('placeholder',"未填写"); 
							
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
						}
							//渲染下拉框
							form.render('select');
						}


 						 //setFormValue(obj,data);
					//}
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
								//salesManId:salesManId,
								name:$('#queryName').val(),//向后台传递的参数
								applicantTel:$('#queryApplicantTel').val(),
								customerState:$('#queryCustomerState').val(),
								busSpeed:$('#queryBusSpeed').val(),
								applyDateStart:$('#queryApplyDateStart').val(),
								applyDateEnd:$('#queryApplyDateEnd').val()	 
							},                     
							url : '<%=path%>contractManager/getContractList.action'//后台做模糊搜索接口路径                        
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
 				//取消修改
				$('body').on('click','#cancelEdit',function(){
					console.log("取消");
                    layer.closeAll();//关闭所有的弹出层
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
