<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<!--BootStrap设计的页面支持响应式的 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<title>个人中心</title>
<link rel='stylesheet' href='${path}css/bootstrap.min.css'> 
<link rel='stylesheet' href='${path}css/login1.css'>
<link rel='stylesheet' href='${path}css/toastr.min.css'>
<link href="${path}css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${path}css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${path}css/default.css">
<link href="${path}css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
<link href="${path}css/site.css" rel="stylesheet" type="text/css" />
    <link href="${path}css/usercenterstyle.css" rel="stylesheet" type="text/css"/>
<script src="${path}js/jQuery.js"></script>
<script src="${path}js/toastr.min.js"></script>
<script src="${path}js/bootstrap.js"></script>
<script src="${path}js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<script src="${path}js/jquery.bootstrap.newsbox.min.js" type="text/javascript"></script>
<style type="text/css">
#topImg{
display:none;
position:absolute;
z-index:2;
width:100%;
height:100%;
background:#000;
filter:alpha(Opacity=80);
-moz-opacity:0.5;
opacity: 0.6;
}


/*
横线，并通过z-index：-1将or附近的横线遮盖住
*/
#left-line:before {

    border-left: 1px solid #d4d4d4;

}
.text-with-hr span {
    display: inline-block;
    background: #FFFACD;
    padding: 0px;
}
/*.form-horizontal{
background-color:#white;
}*/
body{
background-color:#F5F5F5;
}
#blue-bg{
	height:220px;
	
	background: -webkit-linear-gradient(#BBFFFF, #00BFFF); /* Safari 5.1 - 6.0 */

    background: -o-linear-gradient(#BBFFFF, #00BFFF); /* Opera 11.1 - 12.0 */

    background: -moz-linear-gradient(#BBFFFF, #00BFFF); /* Firefox 3.6 - 15 */

    background: linear-gradient(#BBFFFF, #00BFFF); /* 标准的语法（必须放在最后） */
    text-align: center;
}
</style>
</head>
<body>
<section class="aui-flexView">
    <header class="aui-navBar aui-navBar-fixed">
        <%--<a href="javascript:;" class="aui-navBar-item">
            <i class="icon icon-return"></i>签到赚金币
        </a>--%>
        <div class="aui-center">
            <span class="aui-center-title"></span>
        </div>
        <a href="${path}userCenter/gotoExit.action" class="aui-navBar-item">
            <i class="icon icon-set"></i>
            <%--<i class="icon icon-new"></i>--%>
        </a>
    </header>
    <section class="aui-scrollView">
        <div class="aui-tour-content"></div>
        <div class="aui-tour-box">
            <div class="aui-tour-box-item">
                <div class="aui-tour-layout">
                    <div class="aui-flex">
                        <div class="aui-flex-user">
                            <img src="${path}images/user-004.png" alt="">
                        </div>
                        <div class="aui-flex-box">
                            <h3 style="font-size: 16px">您好， ${user.uPhone}</h3>
                            <div class="aui-flex-org">
                                <i class="icon icon-vip"></i>普通会员
                            </div>
                        </div>
                    </div>
                    <div class="aui-palace aui-palace-one b-line">
                        <a href="javascript:;" class="aui-palace-grid" style="text-decoration:none">
                            <c:if test="${uRegRecommendPeople != null and uRegRecommendPeople != ''}">
                            <div class="aui-palace-grid-icon1" style="margin-left: 0px;">
                                <span>
                                    ${uRegRecommendPeople}
                                </span>
                            </div>
                            <div class="aui-palace-grid-text">
                                <h2>推荐导师</h2>
                            </div>
                            </c:if>
                            <c:if test="${uRegRecommendPeople == null or uRegRecommendPeople == ''}">
                                <div class="aui-palace-grid-icon1">
                                <span>
                                        平台
                                </span>
                                </div>
                                <div class="aui-palace-grid-text">
                                    <h2>推荐导师</h2>
                                </div>
                            </c:if>
                        </a>


                        <a href="javascript:;" class="aui-palace-grid" style="text-decoration:none">
                            <div class="aui-palace-grid-icon1">
                                <span>
                                    <c:if test="${people.studentNum != null }">${people.studentNum}</c:if>
				                    <c:if test="${people.studentNum == null }">0</c:if>
                                </span>
                            </div>
                            <div class="aui-palace-grid-text">
                                <h2>徒弟人数</h2>
                            </div>
                        </a>
                        <a href="javascript:;" class="aui-palace-grid" style="text-decoration:none">
                            <div class="aui-palace-grid-icon1">
                                <span><font color="red" >
                                <c:if test="${people.uRecommendAmount != null }">${people.uRecommendAmount}</c:if>
                                <c:if test="${people.uRecommendAmount == null }">0</c:if>
                                </font></span>
                            </div>
                            <div class="aui-palace-grid-text">
                                <h2>账户余额(元)</h2>
                            </div>
                        </a>
                    </div>
                    <div class="aui-flex aui-flex-news">
                        <%--<div class="aui-flex-icon">
                            <i class="icon icon-news"></i>
                        </div>--%>
                        <%--<div class="aui-flex-box">
                            <p>您有 <em>8888元新用户大礼包</em>尚未领取</p>
                        </div>--%>
                        <%--<div class="aui-flex-arrow"></div>--%>
                    </div>
                </div>
                <%--<div class="aui-tour-layout aui-tour-layout-pad">

                    <div class="aui-palace aui-palace-two">
                        <a href="javascript:;" class="aui-palace-grid">
                            <div class="aui-palace-grid-icon">
                                <img src="images/icon-head-001.png" alt="">
                            </div>
                            <div class="aui-palace-grid-text">
                                <h2>待支付</h2>
                            </div>
                        </a>
                        <a href="javascript:;" class="aui-palace-grid">
                            <div class="aui-palace-grid-icon">
                                <img src="images/icon-head-002.png" alt="">
                            </div>
                            <div class="aui-palace-grid-text">
                                <h2>待出行</h2>
                            </div>
                        </a>
                        <a href="javascript:;" class="aui-palace-grid">
                            <div class="aui-palace-grid-icon">
                                <img src="images/icon-head-003.png" alt="">
                            </div>
                            <div class="aui-palace-grid-text">
                                <h2>待点评</h2>
                            </div>
                        </a>
                        <a href="javascript:;" class="aui-palace-grid">
                            <div class="aui-palace-grid-icon">
                                <img src="images/icon-head-004.png" alt="">
                            </div>
                            <div class="aui-palace-grid-text">
                                <h2>全部订单</h2>
                            </div>
                        </a>
                    </div>

                </div>--%>
                <div class="aui-tour-layout aui-tour-layout-pad">

                    <div class="aui-palace aui-palace-two">
                        <a href="${path}userCenter/gotoWithdraw.action" class="aui-palace-grid"style="text-decoration:none">
                            <div class="aui-palace-grid-icon">
                                <img src="${path}images/icon-head-005.png" alt="">
                            </div>
                            <div class="aui-palace-grid-text">
                                <h2>我要提现</h2>
                            </div>
                        </a>
                        <a href="${path}customList/gotoCustomList.action" class="aui-palace-grid" style="text-decoration:none">
                            <div class="aui-palace-grid-icon">
                                <img src="${path}images/icon-head-006.png" alt="">
                            </div>
                            <div class="aui-palace-grid-text">
                                <h2>客户列表</h2>
                            </div>
                        </a>
                        <c:if test="${people.userType != '2' }">
                            <a href="${path}userCenter/gotoMyService.action" class="aui-palace-grid" style="text-decoration:none">
                                <div class="aui-palace-grid-icon">
                                    <img src="${path}images/icon-head-007.png" alt="">
                                </div>
                                <div class="aui-palace-grid-text">
                                    <h2>我的业务</h2>
                                </div>
                            </a>
                        </c:if>
                        <c:if test="${people.userType == '2' }">
                            <a href="${path}userCenter/gotoService.action" class="aui-palace-grid" style="text-decoration:none">
                                <div class="aui-palace-grid-icon">
                                    <img src="${path}images/icon-head-007.png" alt="">
                                </div>
                                <div class="aui-palace-grid-text">
                                    <h2>经办业务</h2>
                                </div>
                            </a>
                        </c:if>
                        <%--<a href="javascript:;void(0)" class="aui-palace-grid" style="text-decoration:none">--%>
                            <%--<div class="aui-palace-grid-icon">--%>
                                <%--<img src="${path}images/icon-head-008.png" alt="">--%>
                            <%--</div>--%>
                            <%--<div class="aui-palace-grid-text">--%>
                                <%--<h2>我的资质</h2>--%>
                            <%--</div>--%>
                        <%--</a>--%>
                    </div>
                </div>
                <div class="aui-tour-layout">

                    <div class="aui-tour-news">
                        <a href="${path}userCenter/gotoPeople.action" class="aui-flex b-line" style="text-decoration:none">
                            <div class="aui-flex-box-head">个人信息</div>
                            <div class="aui-flex-box aui-flex-box-right">
                                <%--旅客、地址、银行卡--%>
                            </div>
                        </a>
                        <%--<a href="javascript:;" class="aui-flex b-line">
                            <div class="aui-flex-box-head">我的点评</div>
                            <div class="aui-flex-box aui-flex-box-right">
                                图片、文字
                            </div>
                        </a>--%>
                        <%--<a href="javascript:;" class="aui-flex b-line">
                            <div class="aui-flex-box-head">已办业务</div>
                            <div class="aui-flex-box aui-flex-box-right">
                            </div>
                        </a>--%>
                        <%--<a href="javascript:;" class="aui-flex b-line" style="text-decoration:none">--%>
                            <%--<div class="aui-flex-box-head">帮助中心</div>--%>
                            <%--<div class="aui-flex-box aui-flex-box-right">--%>
                            <%--</div>--%>
                        <%--</a>--%>
                        <a href="${path}userCenter/gotoObjection.action" class="aui-flex b-line" style="text-decoration:none">
                            <div class="aui-flex-box-head">意见反馈</div>
                            <div class="aui-flex-box aui-flex-box-right">
                            </div>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </section>
<%--<div class="form-group" id="blue-bg">
<img src="${path}img/a5.jpg" style="width:25%;margin-top:5%" class="img-circle img-thumbnail"></img>
<div class="form-group" style="margin-top:2%">
<label class="control-label" style="font-size:120%"><font style="color:white;">
				您好， ${user.uPhone}</font></label>
</div>

<div class="form-inline">
<div class="text-left col-xs-6" >
<label class="control-label" style="font-size:100%"><font style="color:white;">				
				<c:if test="${user.uRegRecommendPeople != null }">您的导师：${user.uRegRecommendPeople}</c:if>
				<c:if test="${user.uRegRecommendPeople == null }">您的导师：平台</c:if>
				</font></label>
</div>
<div class="text-right col-xs-6" >
<label class="control-label" style="font-size:100%"><font style="color:white;">				
				<c:if test="${user.studentNum != null }">徒弟人数：${user.studentNum}</c:if>
				<c:if test="${user.studentNum == null }">徒弟人数：0</c:if>
				</font></label>
</div>
</div>
</div>

<div class="container-fluid " >
<div class="form-group" style="background-color:white;text-align:center;border-radius:10px;">
<div class="row">

<div class="col-xs-12 " >


<div class="col-xs-6 " style="border-right: 1px solid #d4d4d4;">
<div class="col-xs-12 " >
<font color="#FF7F00" size="4px">账户余额(元)</font>
</div>
<div class="col-xs-12 " >
<font color="red" size="4px" >
<c:if test="${user.uRecommendAmount != null }">${user.uRecommendAmount}</c:if>
<c:if test="${user.uRecommendAmount == null }">0</c:if>
</font>
</div>
</div>
<div class="col-xs-6" >
<div class="col-xs-12 " >
<font color="#FF7F00" size="4px">剩余积分(分)</font>
</div>
<div class="col-xs-12 " >
<font color="red" size="4px" >0</font>
</div>
</div>

</div>
</div>

</div>

<div class="col-xs-12" style="background-color:white;text-align:center;">

<div class="col-xs-6" >
<a href="http://www.baidu.com" style="text-decoration:none">
<div class="form-group" >
<img src="${path}img/people.jpg" style="width:15%"></img>
</div>
<font  size="2px" color="black">客户列表</font>
</a>
</div>


<div class="col-xs-6" >
<a href="http://www.baidu.com" style="text-decoration:none">
<div class="form-group" >
<img src="${path}img/withdraw.jpg" style="width:15%;" ></img>
</div>
<font  size="2px" color="black" style="margin-top: 2px;">我要提现</font>
</a>
</div>


</div>


</div>

<div class="col-xs-12" style="margin-top:3%;">
  <div class="panel panel-default">
    <div class="panel-heading">
      <span class="glyphicon glyphicon-list-alt"></span>
      <b>公告</b>
      <a href="#" style="float:right;text-decoration:none;">查看更多</a>
      </div>
    <div class="panel-body ">
      <div class="row " >
        <div class="col-xs-12" style="text-align:center;">
          <ul class="demo1" >
            <li class="news-item">              
                  &lt;%&ndash; <td><img src="${path}img/a3.jpg" width="60" class="img-circle" /></td> &ndash;%&gt;
                  	<font color="#828282">中天商务公众号上线啦</font>                                 
            </li>
            <li class="news-item">
             <font color="#828282"> 新一贷业务一月份将暂停</font>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="panel-footer">
    </div>
  </div>
</div> --%>

 

<%-- <div class="container-fluid">
    <div class="row">
        <div class="col-xs-12">
            <form class="form-horizontal">
                <label class="control-label" style="font-size:100%"><font style="color:#FFC125;">推荐码（长按可复制）</font></label>
                <div class="form-group">
                  <label class="control-label"><font style="color:red;">${user.uRecommendCode}</font></label>    
                    <!-- <a href="#" class="fa fa-question-circle"></a> -->
                </div>
                <div class="form-group">  
      			<a href="#" class="btn btn-info shareBtn" style="padding-top:1%;padding-bottom:1%;" id="shareBtn">分享</a>
      			</div>
                <div class="text-with-hr">
    			<span><font size="3" color="#CDC9C9">使用规则</font></span>
				</div>
				<div class="form-group text-left" >
				<label class="control-label" style="font-size:80%"><font style="color:red;">
				1、当您推荐其它朋友使用中天商务时，建议他们使用推荐码注册，发展为您的徒弟</font></label>
				</div>
				<div class="form-group text-left" >
				<label class="control-label" style="font-size:80%"><font style="color:red;">
				2、当您每成功发展1名徒弟即可获得10积分</font></label>
				</div>
				<div class="form-group text-left" >
				<label class="control-label" style="font-size:80%"><font style="color:red;">
				3、当您的徒弟或者您徒弟的客户办理业务成功时，您可以收到一定比例的推广奖金</font></label>
				</div>
				<div class="form-group text-left" >
				<label class="control-label" style="font-size:80%"><font style="color:red;">
				4、推广码只在注册时进行填写，漏填将没有渠道补填</font></label>
				</div>
				<div class="form-group text-left" >
				<label class="control-label" style="font-size:80%"><font style="color:red;">
				5、具体推广奖金金额以中天商务最新规定为准</font></label>
				</div>
            </form>
        </div>
            
    </div>    

</div> --%>

</body>

<script type="text/javascript">
$(".demo1").bootstrapNews({
    newsPerPage: 1,
    autoplay: true,
    pauseOnHover:false,
    direction: 'up',
    newsTickerInterval: 4000,
    navigation:false,
    onToDo: function () {
        //console.log(this);
    }
});   
</script>
</html>