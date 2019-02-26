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
.ui-dialog .ui-dialog-title {
    float: left;
    margin: .1em 0;
    white-space: nowrap;
    width: 90%;
    overflow: hidden;
    text-overflow: ellipsis;
    font-size: 17px;    /* 查看详情的字体大小以及样式 */
}
</style>
<script type="text/javascript">
//$(".layui-table-fixed-r").children("div").eq(0).children("div").eq(0).children("div").eq(0).children("div").eq(0);
function showErroInfo(){
	var d=dialog({
		title:"查看还款日错误提示",
		content:$("#refuseShow")
	}).showModal();
	var html=$('#showErroInfo').html();
	setTimeout(function(){
		  $('#showErroInfo').empty();
		  $('#showErroInfo').html("正在更新还款日数据......");
	  },2000);//1.5s延时自动关闭
	  setTimeout(function(){
		  $('#showErroInfo').html(html);
		  d.close();
	  },3000);//3s延时自动关闭
}
$(function(){
    $('#calendar').fullCalendar( 'removeEventSource', this);
	$('#calendar').fullCalendar( 'addEventSource', this); 
	$('#calendar').fullCalendar( 'refetchEvents' );
	var myDate = new Date(2017,0,1);
	console.log("进入");
	$("#calendar").fullCalendar({
		
		contentHeight:667,
		theme: false,//true,
		dayRender: function (date, cell) {
			//设置每天格子的颜色 （限定此刻 - 下个月28号）
			var dateee = new Date(date).toJSON();
	        var cellDateee = new Date(+new Date(dateee)+8*3600*1000).toISOString().replace(/T/g,' ').replace(/\.[\d]{3}Z/,'')  
			var strs= new Array(); //定义一数组 
	        var strs=cellDateee.split(" ");
	        var cellDate=new Date(strs[0]);
			//获取此刻、下个月28号日期
			 var dateToday=new Date; 
			 var yearToday=dateToday.getFullYear(); 
			 var monthToday=dateToday.getMonth()+1;
			 var dayToday=dateToday.getDate();
			 var yyyy_MM_dd_Today=new Date(yearToday+"-"+monthToday+"-"+dayToday);
			 var yyyy_MM_dd_MaxToday;//=yearToday+"-"+monthToday+"-"+dayToday;
				console.log((yearToday+1));
				console.log((monthToday+1));
			 if(monthToday==12){
				 yyyy_MM_dd_MaxToday=new Date((yearToday+1)+"-01-"+28);
			 }else{
				 yyyy_MM_dd_MaxToday=new Date(yearToday+"-"+(monthToday+1)+"-"+28);
			 }
			//进行配色
			 console.log(cellDate+"|"+yyyy_MM_dd_Today+"|"+yyyy_MM_dd_MaxToday);
  			 if(cellDate >=yyyy_MM_dd_Today && cellDate <= yyyy_MM_dd_MaxToday){
  				cell.css("background-color", "#87CEFA");
			 }  
			 
		},
		events:function(date,start,end,callback){
 			 var a = $('#calendar').fullCalendar('getDate');
			 var dateToday=new Date; 
			 var year=dateToday.getFullYear(); 
			 var month=dateToday.getMonth()+1;
			 var strs= new Array(); //定义一数组 
			 strs=moment(a).format('YYYY-MM-DD HH:mm:ss').split("-");
			 //如果下一次操作的月份是“0”开头的
			 var monthHandle;
			 if(strs[1].substring(0,1)=="0"){
				 monthHandle=strs[1].substring(1,2);
			 }else{
				 monthHandle=strs[1];
			 }
			 console.log(monthHandle);
			 
			 //点击前进的时候  下个月与本月差值大于等于2  
			 if((parseInt(monthHandle)-month)>=2 ){
				 //一月份 点击后退 上个月为12月 差值为 12 - 1
				 if((parseInt(monthHandle)-month)==(12-1)){
					 $('#calendar').fullCalendar('next');
					 showErroInfo();
					 //alert("不可后退");
					 return;
				 }else{
					 $('#calendar').fullCalendar('prev');
					 showErroInfo();
					 //alert("不可前进");
					 return;
				 }
			//点击后退的时候  上个月与本月差值小于0  
			 }else if((parseInt(monthHandle)-month)<0){
				 //12月份 点击前进 到2月的时候 不可前进 差值为 2 - 12
				 if((parseInt(monthHandle)-month)==(2-12)){
					 $('#calendar').fullCalendar('prev');
					 showErroInfo();
					 //alert("不可前进");
					 return;
				 }
				 //正常点击后退 上个月与本月差值 为-1
				 if((parseInt(monthHandle)-month)==(-1)){
					 $('#calendar').fullCalendar('next');
					 showErroInfo();
					 //alert("不可后退");
					 return;
				 }
			 }
			 
			 $.ajax({
			        type: "GET",
			        //data: "dateCId=" + $("#qconsultant option:selected").val(),
			        //dataType: "json",
			        url: "<%=path%>contractManager/showAllRepaymentDate.action",
			        success: function (data) {
			        	console.log("初始化------");

						var events=[];
						
						for(var i=0;i<data.length;i++){
							events.push({
								id:data[i].id,
								title:data[i].title,
								start:data[i].start,
								end:data[i].end,
								allDay:data[i].allDay,
								color:data[i].color,
								textColor:"#FFFFFF"
							});
						}
			           callback(events);
			        },
			        error: function(json){  
			            alert("error");  
			        }  
			    });
		},
		
		header: {
			left: 'prev,next today button3',
			//left: ' button3',
			center: 'title',
			//right: 'button1 button2 month,agendaWeek,agendaDay,listMonth'
			//right: 'button1 button2 month,basicWeek,listMonth'
			right: 'button1 button2 month,basicDay,basicWeek,listMonth',
			//right: ''
		},
		firstDay: 1,
		monthNames: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"],
		monthNamesShort: ["1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"],
		dayNames:["星期日","星期一","星期二","星期三","星期四","星期五","星期六"],
		dayNamesShort:["日","一","二","三","四","五","六"],
		buttonText:{
			today: "今天",
			month: "月视图",
			//week: "周",
			//day: "天",
			basicDay:"天列表",
			basicWeek:"周列表",
			listMonth:"月列表"
		},
		allDayDefault:false,
		slotLabelFormat:"H",
		businessHours: {
			dow:[1,2,3,4,5],
			start:"8:00",
			end:"17:00"
		},
		allDaySlot: true,
		allDayText: "全天",
		timeFormat: "HH:mm",//设置的是添加的具体的日程上显示的时间
		views:{
			month:{
				titleFormat:"YYYY年M月"
			},
			week:{
				titleFormat:"YYYY年M月D日",
				columnFormat:"M.D dddd"
			},
			day:{
				titleFormat:"YYYY年M月D日 dddd",
				columnFormat:"M/D dddd"
			}
		},
		
		eventClick:function(event,jsEvent,view){
			console.log(event);
			var busObject;
			$.ajax({
				type: "GET",
				data: {paxydBusId:event.id},
				dataType: "json",
				async:false, 
				url: "<%=path%>contractManager/queryBusById.action",
				success: function (data) {
					busObject=data;
				},
				error: function(json){  	
					alert("no");
				}  
			}); 

			$("#name").empty();
			$("#applicantTel").empty();
			$("#finalProduct").empty();
			$("#loanAmount").empty();
			$("#repaymentDate").empty();
			var finalProduct;
			if(busObject.finalProduct==1){
				finalProduct="平安新一贷";
			}else if(busObject.finalProduct==2){
				finalProduct="兴业消费金融";
			}else if(busObject.finalProduct==3){
				finalProduct="中国银行消费金融";
			}else if(busObject.finalProduct==4){
				finalProduct="海尔-玖康";
			}else if(busObject.finalProduct==5){
				finalProduct="小额贷款";
			}
			$("#name").html("<span style=' font-size: 17px;font-weight: bold; '>贷款人姓名：</span>"+busObject.name);
			$("#applicantTel").html("<span style=' font-size: 17px;font-weight: bold; '>联系方式：</span>"+busObject.applicantTel);
			$("#finalProduct").html("<span style=' font-size: 17px;font-weight: bold; '>贷款产品：</span>"+finalProduct);
			$("#loanAmount").html("<span style=' font-size: 17px;font-weight: bold; '>贷款金额：</span>"+busObject.loanAmount);
			$("#repaymentDate").html("<span style=' font-size: 17px;font-weight: bold; '>每月还款日期：</span><span style=' color:red;font-size: 17px;font-weight: bold; '>"+busObject.repaymentDate+"号</span>");
				dialog({
					title:"查看放款详情",
					content:$("#show"),
					//okValue:"编辑",
					//ok:function(){},
 					button:[{
						value:"通知提醒",
						callback:function(){
							console.log("99999");
							 event.color = "#00CD00";
						     $('#calendar').fullCalendar('updateEvent', event);

						}
					}],
					cancelValue:"关闭",
					cancel:function(){}
				}).showModal();
 			/* } */
		}
	});

});
</script>
</head>
<body style="">
<br>
<button id="nextMonth" type="button" onclick="test()" style="display:none;">nextMonth</button>
<div id="calendar"></div>
	<div id="show" style="display: none">
		<p id="name"></p>
		<p id="applicantTel"></p>
		<p id="finalProduct"></p>
		<p id="loanAmount"></p>
		<p id="loanAmount"></p>
		<p id="repaymentDate"></p>
	</div>
	<div id="refuseShow" style="display: none">
		<p id="showErroInfo" style="color:red;font-weight: bold;font-size: 15px;">查看范围是今天到下个月的28号</p>
	</div>
	<div id="dialog-form" style="display:none">
		<form class="form-inline">
			
			<p>
				<label>事务内容：</label>
				<textarea class="textarea" rows="4" placeholder="内容" id="titledetail"></textarea>
				<span>（必填）</span>
			</p>
			
			<p>
				<label>开始时间：</label>
				<input type="text" class="time datepicker" id="startdate">
				<input type="text" class="time timepicki" id="starttime">
			</p>
			<p style="display:none" id="enddate">
				<label>结束时间：</label>
				<input type="text" class="time datepicker" id="stopdate">
				<input type="text" class="time timepicki" id="endtime">
			</p>
			<p class="checkbox check">
				<label class="checkbox-inline"><input type="checkbox" id="isallday">全天</label>
				<label class="checkbox-inline"><input type="checkbox" id="end">结束时间</label>
				
			</p>
			<p></p>
		</form>
	</div>
	<!-- H+ javascrip部分 -->
<!-- 	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>
	<script src="js/plugins/echarts/echarts-all.js"></script>
	<script src="js/content.min.js?v=1.0.0"></script>
	<script src="js/demo/echarts-demo.min.js"></script>
	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script> -->
</body>
</html>
