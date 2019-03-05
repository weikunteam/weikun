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
<!-- 日历插件所需的js、css -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/fullcalendar/fullcalendar.min.css" rel="stylesheet">
	<link href="css/fullcalendar/fullcalendar.print.min.css" rel="stylesheet" media="print">
	<link href="css/jquery-ui-1.10.4.custom/css/base/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<link href="css/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
	<link href="css/fullcalendar/lib/cupertino/jquery-ui.min.css" rel="stylesheet">
	<link href="css/artDialog/css/ui-dialog.css" rel="stylesheet">
	<link href="css/wickedpicker/dist/wickedpicker.min.css" rel="stylesheet">
	<script src="js/jquery-ui-1.10.4.custom/js/jquery-1.10.2.js"></script>
	<script src="js/fullcalendar/lib/jquery.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/fullcalendar/lib/jquery-ui.min.js"></script>
	<script src="js/fullcalendar/lib/moment.min.js"></script>
	<script src="js/fullcalendar/fullcalendar.js"></script>
	<script src="js/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js"></script>
	<script src="js/artDialog/dist/dialog-min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/wickedpicker/dist/wickedpicker.min.js"></script>
	<script src="js/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script src="js/bootstrap-datepicker/dist/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<style>
</style>
<script src="js/echarts.js" charset="utf-8"></script>
<script src="layui.js" charset="utf-8"></script>
<script type="text/javascript">
</script>
</head>
<body style="">
<br>
<br>
<div id="main" style="width: 1500px;height:700px;"></div>
	<div id="refuseShow" style="display: none">
		<p id="showErroInfo" style="color:red;font-weight: bold;font-size: 15px;">正在加载数据...请稍后...</p>
	</div>
</body>
<script type="text/javascript">
 var d=dialog({
	title:"数据加载提示",
	content:$("#refuseShow")
}).showModal();
   setTimeout(function(){
	  //初始化
	  initEcharts();
	  d.close();
  },50);//3s延时自动关闭 
  
  function initEcharts(){
	// 基于准备好的dom，初始化echarts实例
	  var myChart = echarts.init(document.getElementById('main'));
	  var base = +new Date(2019, 2, 01);//月份减1的 正常是 01 01 减1 为0 01
	  var baseX = new Date("2019-03-01");//这里月份要正常输入
	  var oneDay = 24 * 3600 * 1000;
	  var date = [];
	  var dateArray=[];
	  var data = [];
	  var dateTody=new Date();//[(new Date).getFullYear(), (new Date).getMonth() + 1, (new Date).getDate()].join('-')
	  console.log(dateTody)
	  //相差天数
	  var differDateCount=parseInt((dateTody.getTime()-baseX.getTime())/(1000*60*60*24));
	     console.log(differDateCount)
	  //10000为查询起始时间到今天的天数
	  for (var i = 0; i < differDateCount+1; i++) {
	  if(i==0){
	  var now = new Date(base);
	  }else{
	  var now = new Date(base += oneDay);
	  }
	  //数据 1日期
	  date.push([now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'));
	  //console.log([now.getFullYear(), now.getMonth() + 1, now.getDate()].join('-'));
	  //将日期格式变为 - - - 并装载，传给后台进行获取 注册量 数据。
	  if((now.getMonth() + 1).toString().length==1 && now.getDate().toString().length==1){
	  	dateArray.push([now.getFullYear(), "0"+(now.getMonth() + 1), "0"+now.getDate()].join('-'));
	  }else if((now.getMonth() + 1).toString().length==2 && now.getDate().toString().length==1){
	  	dateArray.push([now.getFullYear(), now.getMonth() + 1, "0"+now.getDate()].join('-'));
	  }else if((now.getMonth() + 1).toString().length==1 && now.getDate().toString().length==2){
	  	dateArray.push([now.getFullYear(), "0"+(now.getMonth() + 1), now.getDate()].join('-'));
	  }else if((now.getMonth() + 1).toString().length==2 && now.getDate().toString().length==2){
	  	dateArray.push([now.getFullYear(), now.getMonth() + 1, now.getDate()].join('-'));
	  }
	  //数据 2数据
	  //data.push(parseInt(Math.random() * 300));
	  }
	   //获取统计数据
	      $.ajax({
	     	type: "POST",
	     	data: {dateArray:dateArray},
	     	dataType: "json",
	     	async:false, 
	     	url: "<%=path%>customerManager/userRegisterStatistic.action",
	     	success: function (dataArray) {
	          for ( var i = 0; i < dataArray.length; i++) {
	          	//console.log(dataArray[i]);
	          	data.push(dataArray[i]);
	          }    
	     	},
	     	error: function(json){  	
	     		alert("no");
	     	}  
	     });  
	   
	  option = {
	  tooltip: {
	  trigger: 'axis',
	  position: function (pt) {
	      return [pt[0], '10%'];
	  }
	  },
	  title: {
	  left: 'center',
	  text: '每日公共号用户注册数量统计图',
	  },
	  toolbox: {
	  feature: {
	      dataZoom: {
	          yAxisIndex: 'none'
	      },
	      restore: {},
	      saveAsImage: {}
	  }
	  },
	  xAxis: {
	  type: 'category',
	  boundaryGap: false,
	  data: date
	  },
	  yAxis: {
	  type: 'value',
	  boundaryGap: [0, '100%']
	  },
	  dataZoom: [{
	  type: 'inside',
	  start: 0,
	  end: 10
	  }, {
	  start: 0,
	  end: 10,
	  handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
	  handleSize: '80%',
	  handleStyle: {
	      color: '#fff',
	      shadowBlur: 3,
	      shadowColor: 'rgba(0, 0, 0, 0.6)',
	      shadowOffsetX: 2,
	      shadowOffsetY: 2
	  }
	  }],
	  series: [
	  {
	      name:'当日注册数量',
	      type:'line',
	      smooth:true,
	      symbol: 'none',
	      sampling: 'average',
	      itemStyle: {
	          color: 'rgb(255, 70, 131)'
	      },
	      areaStyle: {
	          color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
	              offset: 0,
	              color: 'rgb(255, 158, 68)'
	          }, {
	              offset: 1,
	              color: 'rgb(255, 70, 131)'
	          }])
	      },
	      data: data
	  }
	  ]
	  };

	  // 使用刚指定的配置项和数据显示图表。
	  myChart.setOption(option);
  }

</script>
</html>
