<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	String path=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";	
%>
<html>
	<head>
		<meta charset="utf-8">
		<title>layui</title>
		<!-- layUI 所需组件-->
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="css/layui.css" media="all"> <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
		<!-- H+ 所需组件-->
		<link rel="shortcut icon" href="favicon.ico">
		<link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
		<link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
		<link href="css/animate.min.css" rel="stylesheet">
		<link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
	</head>
	<body class="gray-bg">
		<div class="row  border-bottom white-bg dashboard-header">
			<div class="col-sm-12">
				<p>该测试页面标题！！！！！ <a href="http://echarts.baidu.com/doc/about.html" target="_blank">了解更多</a>
				</p>
				<p>ECharts官网：<a href="http://echarts.baidu.com/" target="_blank">http://echarts.baidu.com/</a>
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
								<a class="collapse-link">
									<i class="fa fa-chevron-up"></i>
								</a>
								<a class="dropdown-toggle" data-toggle="dropdown" href="graph_flot.html#">
									<i class="fa fa-wrench"></i>
								</a>
								<ul class="dropdown-menu dropdown-user">
									<li><a href="graph_flot.html#">选项1</a>
									</li>
									<li><a href="graph_flot.html#">选项2</a>
									</li>
								</ul>
								<a class="close-link">
									<i class="fa fa-times"></i>
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
								<a class="collapse-link">
									<i class="fa fa-chevron-up"></i>
								</a>
								<a class="dropdown-toggle" data-toggle="dropdown" href="graph_flot.html#">
									<i class="fa fa-wrench"></i>
								</a>
								<ul class="dropdown-menu dropdown-user">
									<li><a href="graph_flot.html#">选项1</a>
									</li>
									<li><a href="graph_flot.html#">选项2</a>
									</li>
								</ul>
								<a class="close-link">
									<i class="fa fa-times"></i>
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
								<a class="collapse-link">
									<i class="fa fa-chevron-up"></i>
								</a>
								<a class="dropdown-toggle" data-toggle="dropdown" href="graph_flot.html#">
									<i class="fa fa-wrench"></i>
								</a>
								<ul class="dropdown-menu dropdown-user">
									<li><a href="graph_flot.html#">选项1</a>
									</li>
									<li><a href="graph_flot.html#">选项2</a>
									</li>
								</ul>
								<!-- 				                <a class="close-link">
				                    <i class="fa fa-times"></i>
				                </a> -->
							</div>
						</div>
						<div class="ibox-content">
							<!-- <div class="echarts" id="echarts-line-chart"></div> -->
							<table class="layui-hide" id="test"></table>
						</div>
					</div>
				</div>

			</div>
		</div>

		<!-- <table class="layui-hide" id="test"></table> -->
		<!-- layUI javascrip部分 -->
		<script src="layui.js" charset="utf-8"></script><!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
		<script>
			layui.use('table', function() {
				var table = layui.table;
				table.render({
					elem: '#test',
					url: '<%=path%>userManager/getUserList.action',
					cols: [
						[{
							field: 'uPhone',
							width: 80,
							title: '手机号',
							sort: true
						}, {
							field: 'uPsw',
							width: 80,
							title: '密码',
							sort: true
						}]
					],
					page: true
				});
			});
		</script>
		<!-- H+ javascrip部分 -->
		<script src="js/jquery.min.js?v=2.1.4"></script>
		<script src="js/bootstrap.min.js?v=3.3.6"></script>
		<script src="js/plugins/echarts/echarts-all.js"></script>
		<script src="js/content.min.js?v=1.0.0"></script>
		<script src="js/demo/echarts-demo.min.js"></script>
		<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	</body>
</html>
