<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
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
    <link href="${path}css/font-awesome.min.css" rel="stylesheet"/>
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
        .center-vertical {

            position: relative;

            top: 50%;

            transform: translateY(50%);

        }

        #topImg {
            display: none;
            position: absolute;
            z-index: 2;
            width: 100%;
            height: 100%;
            background: #000;
            filter: alpha(Opacity=80);
            -moz-opacity: 0.5;
            opacity: 0.6;
        }

    </style>
</head>
<body>
<div id="topImg">
    <img src="${path}img/share.jpg" style="width:100%;"></img>
</div>
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="${path}img/b1.png" class="img-responsive" alt="First slide" style="width:100%;">
        </div>
        <div class="item">
            <img src="${path}img/b2.png" class="img-responsive" alt="Second slide" style="width:100%;">
        </div>
        <div class="item">
            <img src="${path}img/b3.png" class="img-responsive" alt="Third slide" style="width:100%;">
        </div>
        <div class="item">
            <img src="${path}img/b4.png" class="img-responsive" alt="Third slide" style="width:100%;">
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
        <li class="active" style="width:24.5%;"><a href="#bulletin" role="tab" data-toggle="pill">
            <small>贷款</small>
        </a></li>
        <li style="width:24.5%"><a href="#rule" role="tab" data-toggle="pill">
            <small>信用卡</small>
        </a></li>
        <li style="width:24.5%"><a href="#rank" role="tab" data-toggle="pill" id="rankList">
            <small>明星经理</small>
        </a></li>
        <li style="width:24.5%"><a href="#introduction" role="tab" data-toggle="pill">
            <small>公司简介</small>
        </a></li>
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
                                <img src="${path}images/pingan.png" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h3><font size="4px">平安新一贷</font></h3>
                            </div>
                        </div>
                        <div class="aui-flex">
                            <div class="aui-text-one">
                                <h2>500000</h2>
                                <p>可贷额度(元)</p>
                            </div>
                            <div class="aui-flex-box">
                                <h4>1-2个工作日放款</h4>
                                <h5>万元日利率2.8元</h5>
                            </div>
                            <div class="aui-text-two">
                                <a href="${path}xinyidaiHandle.jsp" class="btn btn-info"
                                   style="padding-top:0px;padding-bottom:0px;">咨询</a>
                                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;"
                                   id="shareBtn">分享</a>
                            </div>
                        </div>
                    </div>
                    <div class="aui-show-box">
                        <div class="aui-flex">
                            <div class="aui-sml-img">
                                <img src="${path}images/xingye.png" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h3><font size="4px">兴业消费金融</font></h3>
                            </div>
                        </div>
                        <div class="aui-flex">
                            <div class="aui-text-one">
                                <h2>400000</h2>
                                <p>可贷额度(元)</p>
                            </div>
                            <div class="aui-flex-box">
                                <h4>2-3个工作日放款</h4>
                                <h5>万元日利率3.3元</h5>
                            </div>
                            <div class="aui-text-two">
                                <a href="${path}xingyeHandle.jsp" class="btn btn-info"
                                   style="padding-top:0px;padding-bottom:0px;">咨询</a>
                                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;"
                                   id="shareBtn">分享</a>
                            </div>
                        </div>
                    </div>
                    <div class="aui-show-box">
                        <div class="aui-flex">
                            <div class="aui-sml-img">
                                <img src="${path}images/zhongyin.png" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h3><font size="4px">中银消费金融</font></h3>
                            </div>
                        </div>
                        <div class="aui-flex">
                            <div class="aui-text-one">
                                <h2>400000</h2>
                                <p>可贷额度(元)</p>
                            </div>
                            <div class="aui-flex-box">
                                <h4>2-3个工作日放款</h4>
                                <h5>万元日利率3.3元</h5>
                            </div>
                            <div class="aui-text-two">
                                <a href="${path}zhonghangHandle.jsp" class="btn btn-info"
                                   style="padding-top:0px;padding-bottom:0px;">咨询</a>
                                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;"
                                   id="shareBtn">分享</a>
                            </div>
                        </div>
                    </div>
                    <div class="aui-show-box">
                        <div class="aui-flex">
                            <div class="aui-sml-img">
                                <img src="${path}images/haier.png" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h3><font size="4px">海尔-玖康</font></h3>
                            </div>
                        </div>
                        <div class="aui-flex">
                            <div class="aui-text-one">
                                <h2>200000</h2>
                                <p>可贷额度(元)</p>
                            </div>
                            <div class="aui-flex-box">
                                <h4>2-3个工作日访客量</h4>
                                <h5>万元日利率3.3元</h5>
                            </div>
                            <div class="aui-text-two">
                                <a href="${path}haierHandle.jsp" class="btn btn-info"
                                   style="padding-top:0px;padding-bottom:0px;">咨询</a>
                                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;"
                                   id="shareBtn">分享</a>
                            </div>
                        </div>
                    </div>

                    <div class="aui-show-box">
                        <div class="aui-flex">
                            <div class="aui-sml-img">
                                <img src="${path}images/smallamount.png" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h3><font size="4px">小额贷款</font></h3>
                            </div>
                        </div>
                        <div class="aui-flex">
                            <div class="aui-text-one">
                                <h2>1-20万</h2>
                                <p>可贷额度(元)</p>
                            </div>
                            <div class="aui-flex-box">
                                <h4>当天放款</h4>
                                <h5>万元日利率3-5.2元</h5>
                            </div>
                            <div class="aui-text-two">
                                <a href="${path}smallamount.jsp" class="btn btn-info"
                                   style="padding-top:0px;padding-bottom:0px;">咨询</a>
                                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;"
                                   id="shareBtn">分享</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="rule">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <div class="aui-show-box">
                        <div class="aui-flex">
                            <div class="aui-sml-img">
                                <img src="${path}img/pfyh.jpg" alt="">
                            </div>
                            <div class="aui-flex-box">
                                <h3><font size="4px">浦发银行信用卡</font></h3>
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
                                <a href="javascript:void(0)" class="btn btn-info"
                                   style="padding-top:0px;padding-bottom:0px;">咨询</a>
                                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;"
                                   id="shareBtn">分享</a>
                            </div>
                        </div>
                    </div>
                    <div class="aui-show-box">
                        <div class="aui-flex">
                            <div class="aui-sml-img">
                                <img src="${path}img/xyyh.jpg" alt="">
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
                                <a href="javascript:void(0)" class="btn btn-info"
                                   style="padding-top:0px;padding-bottom:0px;">咨询</a>
                                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;"
                                   id="shareBtn">分享</a>
                            </div>
                        </div>
                    </div>
                    <div class="aui-show-box">
                        <div class="aui-flex">
                            <div class="aui-sml-img">
                                <img src="${path}img/msyh.jpg" alt="">
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
                                <a href="javascript:void(0)" class="btn btn-info"
                                   style="padding-top:0px;padding-bottom:0px;">咨询</a>
                                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;"
                                   id="shareBtn">分享</a>
                            </div>
                        </div>
                    </div>
                    <div class="aui-show-box">
                        <div class="aui-flex">
                            <div class="aui-sml-img">
                                <img src="${path}img/payh.jpg" alt="">
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
                                <a href="javascript:void(0)" class="btn btn-info"
                                   style="padding-top:0px;padding-bottom:0px;">咨询</a>
                                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;"
                                   id="shareBtn">分享</a>
                            </div>
                        </div>
                    </div>
                    <div class="aui-show-box">
                        <div class="aui-flex">
                            <div class="aui-sml-img">
                                <img src="${path}img/zxyh.jpg" alt="">
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
                                <a href="javascript:void(0)" class="btn btn-info"
                                   style="padding-top:0px;padding-bottom:0px;">咨询</a>
                                <a href="#" class="btn btn-info shareBtn" style="padding-top:0px;padding-bottom:0px;"
                                   id="shareBtn">分享</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="tab-pane fade" id="introduction">
        <section class="aui-flexView">
            <%--<header class="aui-navBar aui-navBar-fixed b-line">
                <div class="aui-center">
                    <span class="aui-center-title">公司信息</span>
                </div>
            </header>--%>
            <section class="aui-scrollView">
                <div class="aui-flex">
                    <div class="aui-com-img">
                        <img src="${path}images/p1.png" alt="">
                    </div>
                    <div class="aui-flex-box">
                        <h2>中天金融</h2>
                        <h3>
                            <span><i class="fa fa-flag" style="color: #5bc0de;"></i>&nbsp;民营公司</span>
                            <span><i class="fa fa-users" style="color: #5bc0de;"></i>&nbsp;100人以上</span>
                        </h3>
                        <h3>
                            <span><i class="fa fa-building" style="color: #5bc0de;font-size: 11px;"></i>&nbsp;金融</span>

                        </h3>
                    </div>
                </div>
                <div class="aui-slide-list">
                    <ul class="aui-slide-item-list">
                        <%--<li class="aui-slide-item-item">
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
                        </li>--%>
                        <li class="aui-slide-item-item">
                            <a href="javascript:;">
                                <img src="${path}images/p2.png" alt="">
                            </a>
                        </li>
                        <li class="aui-slide-item-item">
                            <a href="javascript:;">
                                <img src="${path}images/p1.png" alt="">
                            </a>
                        </li>
                        <li class="aui-slide-item-item">
                            <a href="javascript:;">
                                <img src="${path}images/p3.png" alt="">
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="aui-flex">
                    <div class="aui-flex-box">
                        <h4>泉州市洛江区首富商城E座中天商务咨询有限公司</h4>
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
                                <p>
                                    21世纪，是一个开创新金融的时代，是一个财富多元化分配的时代，中天商务咨询有限公司（中天金融）创办于2011年，总部坐落在风景优美的泉州洛阳桥之畔，公司团队成员曾任银行信贷部等知名金融机构高管，在金融领领域具有丰富管理经验。中天金融整合众多金融服务机构，并成为兴业银行、平安银行、中国银行非常重要的渠道合作方。随着业务的扩展，跟泉州泉城房产公司等其他房产中介有着紧密的合作关系。</p>
                                <p>
                                    中天金融的发展宗旨是以“成为中国有影响力的家庭生活金融服务平台”为愿景，在商户端，配套定制化金融产品，助力企业业绩增长；在客户端，为居于家庭生活不同阶段的消费者提供金融服务，提前达至品质生活，让幸福变得简单。
                                    更以创新的金融服务模式为中小企业及个人解决融资问题。让企业不在成长中夭折，让企业的未来更加辉煌</p>
                                <p>
                                    现公司规模有三家分公司，分别在泉州市洛江区中心、城东中骏世界城、南安溪美，全体成全有50人。阔步未来。中天金融，架起融资的桥梁，为财富保驾护航。在未来，中天金融必将成为专业为中小企业及个人融资的重要渠道。加入我们公司，有一种智慧，让我们任凭风雨，运筹帷幄。有一种精神，让我们同舟共济</p>
                                <p>
                                    从创立之初，百度便将“让人们最平等便捷地获取信息，找到所求”作为自己的使命，成立以来，公司秉承“用户至上”的理念，不断坚持技术创新，致力于为用户提供“简单可依赖”的互联网搜索产品及服务，其中包括:以网络搜索为主的功能性搜索;以贴吧为主的社区搜索，针对各区域、行业所需的垂直搜索;以及门户频道、IM等，全面覆盖了中文网络世界所有的搜索需求。根据第三方权威数据，在中国，百度PC端和移动端市场份额总量达73.5%，覆盖了中国97.5%的网民，拥有6亿用户，日均响应搜索60亿次</p>

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
    <div class="tab-pane fade" id="rank">
        <section class="aui-flexView">
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
                        <div class="tab-panel-item tab-active" id="rankShow">
                            <%--<c:forEach items="${listRank}" var="rank" varStatus="status">--%>
                            <%--<a href="javascript:;" class="aui-flex b-line">--%>
                            <%--<div class="aui-author-user">--%>
                            <%--<c:if test="${status.index==0}">--%>
                            <%--<img src="${path}images/vip-001.png" alt="">--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${status.index==1}">--%>
                            <%--<img src="${path}images/vip-002.png" alt="">--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${status.index==2}">--%>
                            <%--<img src="${path}images/vip-003.png" alt="">--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${status.index==3}">--%>
                            <%--<img src="${path}images/vip-004.png" alt="">--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${status.index==4}">--%>
                            <%--<img src="${path}images/vip-005.png" alt="">--%>
                            <%--</c:if>--%>
                            <%--</div>--%>
                            <%--<div class="aui-album-img">--%>
                            <%--<img src="${path}images/user-004.png" alt="">--%>
                            <%--</div>--%>
                            <%--<div class="aui-flex-box">--%>
                            <%--<h2><font size="3px">${rank.userName}</font> <em>业务员</em></h2>--%>
                            <%--<h3><font size="2px">总业务量</font> <font color="#dc143c" size="2px">${rank.num}</font></h3>--%>
                            <%--<p><font size="2px">联系电话：${rank.uPhone}</font></p>--%>
                            <%--</div>--%>
                            <%--</a>--%>
                            <%--</c:forEach>--%>
                        </div>

                    </div>
                </div>
            </section>
        </section>
    </div>
    <!--<div class="tab-pane fade" id="welfare">公益内容面板</div> -->
</div>

</body>
<script>
    $('#myCarousel').carousel({
        interval: 3000
    })
    $.ajax({
        url: "${path}home/getRank.action",
        type: "post",
        dataType: "json",
        success: function (data) {
            if (data.code == 1) {
                $("#rankShow").empty();
                for (var i = 0; i < data.result.length; i++) {
                    $("#rankShow").append(
                        "<a href=\"javascript:;\" class=\"aui-flex b-line\">\n" +
                        "                                <div class=\"aui-author-user\">\n" +
                        "                                        <img src=\"${path}images/vip-00" + (i + 1) + ".png\" alt=\"\">\n" +
                        "                                </div>\n" +
                        "                                <div class=\"aui-album-img\">\n" +
                        "                                    <img src=\"${path}images/user-004.png\" alt=\"\">\n" +
                        "                                </div>\n" +
                        "                                <div class=\"aui-flex-box\">\n" +
                        "                                    <h2><font size=\"3px\">" + data.result[i].userName + "</font> <em>业务员</em></h2>\n" +
                        "                                    <h3><font size=\"2px\">总业务量</font> <font color=\"#dc143c\" size=\"2px\">" + data.result[i].num + "</font></h3>\n" +
                        "                                    <p><font size=\"2px\">联系电话：" + data.result[i].uPhone + "</font></p>\n" +
                        "                                </div>\n" +
                        "                            </a>"
                    );

                }
            }
        }

    });

</script>
<script type="text/javascript">
    $(function () {
        $.ajax({
            url: "${path}share/share.action",
            type: "post",
            data: {
                "url": location.href.split('#')[0]// 获取页面当前链接
            },
            dataType: "json",
            async: false,
            success: function (data) {
                wx.config({
                    debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
                    appId: data["appid"], // 必填，公众号的唯一标识
                    timestamp: data["timestamp"], // 必填，生成签名的时间戳
                    nonceStr: data["nonceStr"], // 必填，生成签名的随机串
                    signature: data["signature"],// 必填，签名
                    jsApiList: ["onMenuShareTimeline"
                        , "onMenuShareQQ"
                        , "onMenuShareAppMessage"] // 必填，需要使用的JS接口列表
                });

            }

        });

        wx.ready(function () {
            //分享到朋友
            wx.onMenuShareAppMessage({
                title: '中天商务', // 分享标题
                desc: '测试分享功能', // 分享描述
                link: location.href.split('#')[0], // 分享链接
                imgUrl: 'http://www.zhongtianbusiness.com/OfficialAccounts/img/b1.png', // 分享图标
                type: 'link', // 分享类型,music、video或link，不填默认为link
                success: function () {
                    /*  toastr.error("分享成功");	 */
                    $("#topImg").css("display", "none");
                },
                cancel: function () {
                    /*  toastr.error("未分享!");	 */
                    $("#topImg").css("display", "none");
                }
            });
            //分享到QQ
            wx.onMenuShareQQ({
                title: '中天商务', // 分享标题
                desc: '测试分享功能', // 分享描述
                link: location.href.split('#')[0], // 分享链接
                imgUrl: 'http://www.zhongtianbusiness.com/OfficialAccounts/img/b1.png', //  分享图标
                success: function () {
                    // 用户确认分享后执行的回调函数
                    $("#topImg").css("display", "none");
                },
                cancel: function () {
                    // 用户取消分享后执行的回调函数
                    $("#topImg").css("display", "none");
                }
            });
            wx.onMenuShareTimeline({
                title: '中天商务', // 分享标题
                desc: '测试分享功能', // 分享描述
                link: location.href.split('#')[0], // 分享链接
                imgUrl: 'http://www.zhongtianbusiness.com/OfficialAccounts/img/b1.png', // 分享图标
                type: 'link', // 分享类型,music、video或link，不填默认为link
                success: function () {
                    /*  toastr.error("分享成功");	 */
                    $("#topImg").css("display", "none");
                },
                cancel: function () {
                    /*  toastr.error("未分享!");	 */
                    $("#topImg").css("display", "none");
                }
            });

        });

        wx.error(function (res) {
            /* alert('error') */
            // config信息验证失败会执行error函数，如签名过期导致验证失败，具体错误信息可以打开config的debug模式查看，也可以在返回的res参数中查看，对于SPA可以在这里更新签名。
        });

        $(".shareBtn").on("click", function () {
            $("#topImg").css("display", "block");
        });
        $("#topImg").on("click", function () {
            $("#topImg").css("display", "none");
        });
    });


    $(document).ready(function () {
        var startX, endX;//声明触摸的两个变量
        var offset = 30;//声明触摸距离的变量
        $('.carousel-inner').on('touchstart', function (e) {
            startX = e.originalEvent.touches[0].clientX;//当触摸开始时的x坐标；
        });
        $('.carousel-inner').on('touchmove', function (e) {
            endX = e.originalEvent.touches[0].clientX;//当触摸离开时的x坐标；
        });
        $('.carousel-inner').on('touchend', function (e) {
            //当触摸完成时进行的事件；
            var distance = Math.abs(startX - endX);//不论正负，取值为正值；
            if (distance > offset) {
                if (startX > endX) {
                    $('#myCarousel').carousel('next');//当开始的坐标大于结束的坐标时，滑动到下一附图
                } else {
                    $('#myCarousel').carousel('prev');//当开始的坐标小于结束的坐标时，滑动到上一附图

                }

            }
        });
    });
</script>
</html>