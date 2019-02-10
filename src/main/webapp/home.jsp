<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<!--BootStrap设计的页面支持响应式的 -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
<title>业务办理</title>

<link rel='stylesheet' href='${path}css/bootstrap.css'>
<link rel='stylesheet' href='${path}css/toastr.min.css'>
<link href="${path}css/font-awesome.min.css" rel="stylesheet" />
    <link href="${path}css/cardstyle.css" rel="stylesheet" type="text/css"/>
    <link href="${path}css/introductionstyle.css" rel="stylesheet" type="text/css"/>
    <link href="${path}css/rankstyle.css" rel="stylesheet" type="text/css"/>
<script src="${path}js/jQuery.js"></script>
<script src="${path}js/toastr.min.js"></script>
<script src="${path}js/bootstrap.js"></script>
<script src="${path}js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
    <script type="text/javascript" src="${path}js/introductiontab.js"></script>
<style>
.center-vertical{

position: relative;

top: 50%;

transform: translateY(50%);

}
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

</style>
</head>
<body>
<div id="topImg">
<img  src="${path}img/share.jpg" style="width:100%;"  ></img>
</div>
<div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner" >
		<div class="item active" >
			<img src="${path}img/ac1.jpg" class="img-responsive" alt="First slide" style="width:100%;">
		</div>
		<div class="item">
			<img src="${path}img/ac1.jpg" class="img-responsive" alt="Second slide" style="width:100%;">
		</div>
		<div class="item">
			<img src="${path}img/ac1.jpg" class="img-responsive" alt="Third slide" style="width:100%;">
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<!-- <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a> -->
</div>
<!-- <div class="container-fluid">
<div class="row">
<div class="col-xs-12"> -->
<div class="form-group"> 
<ul id="myTab" class="nav nav-pills" role="tablist" style="text-align:center;">
    <li class="active" style="width:24.5%;"><a href="#bulletin" role="tab" data-toggle="pill" ><small>贷款</small></a></li>
    <li style="width:24.5%"><a href="#rule" role="tab" data-toggle="pill"><small>信用卡</small></a></li>
    <li style="width:24.5%"><a href="#rank" role="tab" data-toggle="pill"><small>明星经理</small></a></li>
    <li style="width:24.5%"><a href="#introduction" role="tab" data-toggle="pill"><small>公司简介</small></a></li>
</ul>
</div>
<!-- </div>
</div>
</div> -->

<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active" id="bulletin">
<div class="container-fluid">
<div class="row">
<div class="col-xs-12">
    <div class="aui-show-box">
        <div class="aui-flex">
            <div class="aui-sml-img">
                <img src="${path}img/logo.jpg" alt="">
            </div>
            <div class="aui-flex-box">
                <h3><font size="4px">平安新一贷</font></h3>
            </div>
        </div>
        <div class="aui-flex">
            <div class="aui-text-one">
                <h2>50000</h2>
                <p>可贷额度(元)</p>
            </div>
            <div class="aui-flex-box">
                <h4>即刻到账</h4>
                <h5>千元日费用0.1元</h5>
            </div>
            <div class="aui-text-two">
                <a href="${path}xinyidaiHandle.jsp" class="btn btn-info" style="padding-top:0px;padding-bottom:0px;">咨询</a>
                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;" id="shareBtn">分享</a>
            </div>
        </div>
    </div>
    <div class="aui-show-box">
        <div class="aui-flex">
            <div class="aui-sml-img">
                <img src="${path}img/logo.jpg" alt="">
            </div>
            <div class="aui-flex-box">
                <h3><font size="4px">兴业消费金融</font></h3>
            </div>
        </div>
        <div class="aui-flex">
            <div class="aui-text-one">
                <h2>50000</h2>
                <p>可贷额度(元)</p>
            </div>
            <div class="aui-flex-box">
                <h4>即刻到账</h4>
                <h5>千元日费用0.1元</h5>
            </div>
            <div class="aui-text-two">
                <a href="${path}xinyeHandle.jsp" class="btn btn-info" style="padding-top:0px;padding-bottom:0px;">咨询</a>
                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;" id="shareBtn">分享</a>
            </div>
        </div>
    </div>
    <div class="aui-show-box">
    <div class="aui-flex">
        <div class="aui-sml-img">
            <img src="${path}img/logo.jpg" alt="">
        </div>
        <div class="aui-flex-box">
            <h3><font size="4px">中行消费金融</font></h3>
        </div>
    </div>
    <div class="aui-flex">
        <div class="aui-text-one">
            <h2>50000</h2>
            <p>可贷额度(元)</p>
        </div>
        <div class="aui-flex-box">
            <h4>即刻到账</h4>
            <h5>千元日费用0.1元</h5>
        </div>
        <div class="aui-text-two">
            <a href="${path}zhonghangHandle.jsp" class="btn btn-info" style="padding-top:0px;padding-bottom:0px;">咨询</a>
            <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;" id="shareBtn">分享</a>
        </div>
    </div>
</div>
    <div class="aui-show-box">
        <div class="aui-flex">
            <div class="aui-sml-img">
                <img src="${path}img/logo.jpg" alt="">
            </div>
            <div class="aui-flex-box">
                <h3><font size="4px">海尔-玖康</font></h3>
            </div>
        </div>
        <div class="aui-flex">
            <div class="aui-text-one">
                <h2>50000</h2>
                <p>可贷额度(元)</p>
            </div>
            <div class="aui-flex-box">
                <h4>即刻到账</h4>
                <h5>千元日费用0.1元</h5>
            </div>
            <div class="aui-text-two">
                <a href="${path}haierHandle.jsp" class="btn btn-info" style="padding-top:0px;padding-bottom:0px;">咨询</a>
                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;" id="shareBtn">分享</a>
            </div>
        </div>
    </div>

    <div class="aui-show-box">
        <div class="aui-flex">
            <div class="aui-sml-img">
                <img src="${path}img/logo.jpg" alt="">
            </div>
            <div class="aui-flex-box">
                <h3><font size="4px">小额贷款</font></h3>
            </div>
        </div>
        <div class="aui-flex">
            <div class="aui-text-one">
                <h2>50000</h2>
                <p>可贷额度(元)</p>
            </div>
            <div class="aui-flex-box">
                <h4>即刻到账</h4>
                <h5>千元日费用0.1元</h5>
            </div>
            <div class="aui-text-two">
                <a href="${path}smallamountHandle.jsp" class="btn btn-info" style="padding-top:0px;padding-bottom:0px;">咨询</a>
                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;" id="shareBtn">分享</a>
            </div>
        </div>
    </div>

    </div>
  </div>
</div>
</div>
    <div class="tab-pane fade" id="rule"><div class="container-fluid">
    <div class="row">
    <div class="col-xs-12">
        <div class="aui-show-box">
            <div class="aui-flex">
                <div class="aui-sml-img">
                    <img src="${path}img/招商银行.gif" alt="">
                </div>
                <div class="aui-flex-box">
                    <h3><font size="4px">招商银行信用卡</font></h3>
                </div>
            </div>
            <div class="aui-flex">
                <div class="aui-text-one">
                    <h2>65%</h2>
                    <p>通过率</p>
                </div>
                <div class="aui-flex-box">
                    <h4>极速批卡</h4>
                    <h5>成功核卡返现2%</h5>
                </div>
                <div class="aui-text-two">
                    <a href="${path}smallamountHandle.jsp" class="btn btn-info" style="padding-top:0px;padding-bottom:0px;">咨询</a>
                    <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;" id="shareBtn">分享</a>
                </div>
            </div>
        </div>
        <div class="aui-show-box">
            <div class="aui-flex">
                <div class="aui-sml-img">
                    <img src="${path}img/兴业银行.gif" alt="">
                </div>
                <div class="aui-flex-box">
                    <h3><font size="4px">兴业银行信用卡</font></h3>
                </div>
            </div>
            <div class="aui-flex">
                <div class="aui-text-one">
                    <h2>55%</h2>
                    <p>通过率</p>
                </div>
                <div class="aui-flex-box">
                    <h4>极速批卡</h4>
                    <h5>成功核卡返现2%</h5>
                </div>
                <div class="aui-text-two">
                    <a href="${path}smallamountHandle.jsp" class="btn btn-info" style="padding-top:0px;padding-bottom:0px;">咨询</a>
                    <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;" id="shareBtn">分享</a>
                </div>
            </div>
        </div>
        <div class="aui-show-box">
            <div class="aui-flex">
                <div class="aui-sml-img">
                    <img src="${path}img/民生银行.gif" alt="">
                </div>
                <div class="aui-flex-box">
                    <h3><font size="4px">民生银行信用卡</font></h3>
                </div>
            </div>
            <div class="aui-flex">
                <div class="aui-text-one">
                    <h2>45%</h2>
                    <p>通过率</p>
                </div>
                <div class="aui-flex-box">
                    <h4>极速批卡</h4>
                    <h5>成功核卡返现2%</h5>
                </div>
                <div class="aui-text-two">
                    <a href="${path}smallamountHandle.jsp" class="btn btn-info" style="padding-top:0px;padding-bottom:0px;">咨询</a>
                    <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;" id="shareBtn">分享</a>
                </div>
            </div>
        </div>
        <div class="aui-show-box">
            <div class="aui-flex">
                <div class="aui-sml-img">
                    <img src="${path}img/平安银行.gif" alt="">
                </div>
                <div class="aui-flex-box">
                    <h3><font size="4px">平安银行信用卡</font></h3>
                </div>
            </div>
            <div class="aui-flex">
                <div class="aui-text-one">
                    <h2>55%</h2>
                    <p>通过率</p>
                </div>
                <div class="aui-flex-box">
                    <h4>极速批卡</h4>
                    <h5>成功核卡返现2%</h5>
                </div>
                <div class="aui-text-two">
                    <a href="${path}smallamountHandle.jsp" class="btn btn-info" style="padding-top:0px;padding-bottom:0px;">咨询</a>
                    <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;" id="shareBtn">分享</a>
                </div>
            </div>
        </div>
        <div class="aui-show-box">
            <div class="aui-flex">
                <div class="aui-sml-img">
                    <img src="${path}img/中信银行.gif" alt="">
                </div>
                <div class="aui-flex-box">
                    <h3><font size="4px">中信银行信用卡</font></h3>
                </div>
            </div>
            <div class="aui-flex">
                <div class="aui-text-one">
                    <h2>15%</h2>
                    <p>通过率</p>
                </div>
                <div class="aui-flex-box">
                    <h4>极速批卡</h4>
                    <h5>成功核卡返现2%</h5>
                </div>
                <div class="aui-text-two">
                    <a href="${path}smallamountHandle.jsp" class="btn btn-info" style="padding-top:0px;padding-bottom:0px;">咨询</a>
                    <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;" id="shareBtn">分享</a>
                </div>
            </div>
        </div>

    </div>
  </div>
</div>
</div>
     <div class="tab-pane fade" id="introduction"><section class="aui-flexView">
    <%--<header class="aui-navBar aui-navBar-fixed b-line">
        <div class="aui-center">
            <span class="aui-center-title">公司信息</span>
        </div>
    </header>--%>
    <section class="aui-scrollView">
        <div class="aui-flex">
            <div class="aui-com-img">
                <img src="images/logo-com.png" alt="">
            </div>
            <div class="aui-flex-box">
                <h2>百度网络</h2>
                <h3>
                    <span><i class="fa fa-flag"style="color: #5bc0de;"></i>&nbsp;民营公司</span>
                    <span><i class="fa fa-users"style="color: #5bc0de;"></i>&nbsp;10000人以上</span>
                </h3>
                <h3>
                    <span><i class="fa fa-building" style="color: #5bc0de;font-size: 11px;"></i>&nbsp;互联网电子商务 计算机软件</span>

                </h3>
            </div>
        </div>
        <div class="aui-slide-list">
            <ul class="aui-slide-item-list">
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-001.png" alt="">
                    </a>
                </li>
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-002.png" alt="">
                    </a>
                </li>
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-003.png" alt="">
                    </a>
                </li>
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-001.png" alt="">
                    </a>
                </li>
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-002.png" alt="">
                    </a>
                </li>
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-003.png" alt="">
                    </a>
                </li>
            </ul>
        </div>
        <div class="aui-flex">
            <div class="aui-flex-box">
                <h4>北京海淀区上地十街10号百度大厦</h4>
            </div>
            <div class="aui-arrow"></div>
        </div>
        <div class="divHeight"></div>

        <div class="aui-tab" data-ydui-tab>
            <%--<ul class="tab-nav b-line">
                <li class="tab-nav-item tab-active" style="text-decoration:none">
                    <a href="javascript:;">
                        <span>公司介绍</span>
                    </a>
                </li>
                <li class="tab-nav-item">
                    <a href="javascript:;" style="text-decoration:none">
                        <span>所在职位</span>
                    </a>
                </li>
            </ul>--%>
            <div class="tab-panel">
                <div class="tab-panel-item tab-active">
                    <div class="aui-com-text">
                        <p>百度（纳斯达克：BIDU），全球最大的中文搜索引擎、最大的中文网站。1999年底,身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于 2000年1月1日在中关村创建了百度公司。</p>
                        <p>“百度”二字,来自于八百年前南宋词人辛弃疾的一句词：众里寻他千百度。这句话描述了词人对理想的执着追求。</p>
                        <p>百度拥有数万名研发工程师，这是中国乃至全球最为优秀的技术团队。这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。</p>
                        <p>从创立之初，百度便将“让人们最平等便捷地获取信息，找到所求”作为自己的使命，成立以来，公司秉承“用户至上”的理念，不断坚持技术创新，致力于为用户提供“简单可依赖”的互联网搜索产品及服务，其中包括:以网络搜索为主的功能性搜索;以贴吧为主的社区搜索，针对各区域、行业所需的垂直搜索;以及门户频道、IM等，全面覆盖了中文网络世界所有的搜索需求。根据第三方权威数据，在中国，百度PC端和移动端市场份额总量达73.5%，覆盖了中国97.5%的网民，拥有6亿用户，日均响应搜索60亿次。</p>

                    </div>

                </div>
                <%--<div class="tab-panel-item">
                    <a href="javascript:;" class="aui-flex b-line">
                        <div class="aui-flex-box">
                            <h5>前端开发工程师 </h5>
                            <h6>15k-25k /上海 / 经验3-5年 </h6>
                        </div>
                        <div class="aui-right-text">
                            <h2>15k-25k/月</h2>
                            <h3>今天</h3>
                        </div>
                    </a>

                </div>--%>
            </div>
        </div>

    </section>
</section>
     </div>
    <div class="tab-pane fade" id="rank"><section class="aui-flexView">
        <%--<header class="aui-navBar aui-navBar-fixed">
            &lt;%&ndash;<a href="javascript:;" class="aui-navBar-item">
                <i class="icon icon-return"></i>
            </a>&ndash;%&gt;
            <div class="aui-center">
                <span class="aui-center-title" style="font-size: 15px"><strong>本周之星</strong></span>
            </div>
            &lt;%&ndash;<a href="javascript:;" class="aui-navBar-item">
                <i class="icon icon-sys"></i>
            </a>&ndash;%&gt;
        </header>--%>
        <section class="aui-scrollView">
            <div class="aui-tab" data-ydui-tab>
                <div class="tab-panel">
                    <div class="tab-panel-item tab-active">
                        <a href="javascript:;" class="aui-flex b-line">
                            <div class="aui-author-user">
                                <img src="${path}images/vip-001.png" alt="">
                            </div>
                            <div class="aui-album-img">
                                <img src="${path}images/user-logo-004.png" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h2>小岗村的村长 <em>业务员</em></h2>
                                <h3>周阅读量33万</h3>
                                <p>坐标杭州、上海、北京微信号:yyossom 加好友时请备注公司和职位以及来意、欢迎交流~</p>
                            </div>
                            <div class="aui-album-button aui-album-button-add">
                                <button>联系ta</button>
                            </div>
                        </a>
                        <a href="javascript:;" class="aui-flex b-line">
                            <div class="aui-author-user">
                                <img src="${path}images/vip-002.png" alt="">
                            </div>
                            <div class="aui-album-img">
                                <img src="${path}images/user-logo-004.png" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h2>小梅同志 <em>业务员</em></h2>
                                <h3>周阅读量33万</h3>
                                <p>坐标杭州、上海、北京微信号:yyossom 加好友时请备注公司和职位以及来意、欢迎交流~</p>
                            </div>
                            <div class="aui-album-button aui-album-button-add">
                                <button>联系ta</button>
                            </div>
                        </a>
                        <a href="javascript:;" class="aui-flex b-line">
                            <div class="aui-author-user">
                                <img src="${path}images/vip-003.png" alt="">
                            </div>
                            <div class="aui-album-img">
                                <img src="${path}images/user-logo-004.png" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h2>流浪者 <em>业务员</em></h2>
                                <h3>周阅读量33万</h3>
                                <p>坐标杭州、上海、北京微信号:yyossom 加好友时请备注公司和职位以及来意、欢迎交流~</p>
                            </div>
                            <div class="aui-album-button aui-album-button-add">
                                <button>联系ta</button>
                            </div>
                        </a>

                        <a href="javascript:;" class="aui-flex b-line">
                            <div class="aui-author-user">
                                <img src="${path}images/vip-004.png" alt="">
                            </div>
                            <div class="aui-album-img">
                                <img src="${path}images/user-logo-004.png" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h2>凌驾者 <em>业务员</em></h2>
                                <h3>周阅读量33万</h3>
                                <p>坐标杭州、上海、北京微信号:yyossom 加好友时请备注公司和职位以及来意、欢迎交流~</p>
                            </div>
                            <div class="aui-album-button aui-album-button-add">
                                <button>联系ta</button>
                            </div>
                        </a>
                        <a href="javascript:;" class="aui-flex b-line">
                            <div class="aui-author-user">
                                <img src="${path}images/vip-005.png" alt="">
                            </div>
                            <div class="aui-album-img">
                                <img src="${path}images/user-logo-004.png" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h2>宝来驾驶者 <em>业务员</em></h2>
                                <h3>周阅读量33万</h3>
                                <p>坐标杭州、上海、北京微信号:yyossom 加好友时请备注公司和职位以及来意、欢迎交流~</p>
                            </div>
                            <div class="aui-album-button aui-album-button-add">
                                <button>联系ta</button>
                            </div>
                        </a>
                    </div>

                </div>
            </div>
        </section>
    </section></div>
    <!--<div class="tab-pane fade" id="welfare">公益内容面板</div> -->
</div>

</body>
<script>
$('#myCarousel').carousel({
    interval: 3000
})
</script>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"${path}share/share.action",
			type:"post",
			data:{
				"url":location.href.split('#')[0]// 获取页面当前链接
			},
			dataType:"json",
			async: false,
			success: function(data){
				 wx.config({
				    debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
				    appId:data["appid"], // 必填，公众号的唯一标识
				    timestamp: data["timestamp"], // 必填，生成签名的时间戳
				    nonceStr: data["nonceStr"], // 必填，生成签名的随机串
				    signature: data["signature"],// 必填，签名
				    jsApiList: ["onMenuShareTimeline"
				                ,"onMenuShareQQ"
				                ,"onMenuShareAppMessage"] // 必填，需要使用的JS接口列表
				});
 
			}
 
		});
 
		wx.ready(function () {
			//分享到朋友
			wx.onMenuShareAppMessage({
	    	    title: '中天商务', // 分享标题
	    	    desc: '测试分享功能', // 分享描述
	    	    link: location.href.split('#')[0], // 分享链接
	    	    imgUrl: 'http://23t46112h9.iok.la/OfficialAccounts/img/ac1.jpg', // 分享图标
	    	    type: 'link', // 分享类型,music、video或link，不填默认为link
	    	    success: function () { 
	    	       /*  toastr.error("分享成功");	 */
	    	    	$("#topImg").css("display","none");
	    	    },
	    	    cancel: function () { 
	    	       /*  toastr.error("未分享!");	 */
	    	    	$("#topImg").css("display","none");
	    	    }
			});
			//分享到QQ
			wx.onMenuShareQQ({
				title: '中天商务', // 分享标题
				desc: '测试分享功能', // 分享描述
				link: location.href.split('#')[0], // 分享链接
				imgUrl: 'http://23t46112h9.iok.la/OfficialAccounts/img/ac1.jpg', //  分享图标
				success: function () {
					// 用户确认分享后执行的回调函数
					$("#topImg").css("display","none");
				},
				cancel: function () {
					// 用户取消分享后执行的回调函数
					$("#topImg").css("display","none");
				}
			});
			wx.onMenuShareTimeline({
	    	    title: '中天商务', // 分享标题
	    	    desc: '测试分享功能', // 分享描述
	    	    link: location.href.split('#')[0], // 分享链接
	    	    imgUrl: 'http://23t46112h9.iok.la/OfficialAccounts/img/ac1.jpg', // 分享图标
	    	    type: 'link', // 分享类型,music、video或link，不填默认为link
	    	    success: function () { 
	    	       /*  toastr.error("分享成功");	 */
	    	    	$("#topImg").css("display","none");
	    	    },
	    	    cancel: function () { 
	    	       /*  toastr.error("未分享!");	 */
	    	    	$("#topImg").css("display","none");
	    	    }
			});
			
		});
		
		wx.error(function(res){
            /* alert('error') */
            // config信息验证失败会执行error函数，如签名过期导致验证失败，具体错误信息可以打开config的debug模式查看，也可以在返回的res参数中查看，对于SPA可以在这里更新签名。
        }); 
		
		$(".shareBtn").on("click",function(){
			$("#topImg").css("display","block");
		});
		$("#topImg").on("click",function(){
			$("#topImg").css("display","none");
		});
	});
	

	$(document).ready(function(){  
	                var startX,endX;//声明触摸的两个变量  
	                var offset = 30;//声明触摸距离的变量  
	                $('.carousel-inner').on('touchstart',function (e) {  
	                    startX= e.originalEvent.touches[0].clientX;//当触摸开始时的x坐标；  
	                });  
	                $('.carousel-inner').on('touchmove',function (e) {  
	                    endX = e.originalEvent.touches[0].clientX;//当触摸离开时的x坐标；  
	                });  
	                $('.carousel-inner').on('touchend',function (e) {  
	                    //当触摸完成时进行的事件；  
	                    var distance = Math.abs(startX - endX);//不论正负，取值为正值；  
	                    if (distance > offset){  
	                        if(startX > endX){  
	                            $('#myCarousel').carousel('next');//当开始的坐标大于结束的坐标时，滑动到下一附图  
	                        }else{  
	                            $('#myCarousel').carousel('prev');//当开始的坐标小于结束的坐标时，滑动到上一附图  
	  
	                        }  
	                                  
	                    }  
	                });   
	            }); 
</script>
</html>