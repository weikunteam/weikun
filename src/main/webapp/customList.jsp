<%--
  Created by IntelliJ IDEA.
  User: 87187
  Date: 2019/2/5
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
    <title>客户列表</title>
    <link href="${path}css/customliststyle.css" rel="stylesheet" type="text/css"/>
    <script src="${path}js/jQuery.js"></script>
    <script type="text/javascript" src="${path}js/tab.js"></script>
</head>
<body>
<section class="aui-flexView">
    <header class="aui-navBar aui-navBar-fixed">
        <a href="javascript:;" class="aui-navBar-item">
            <i class="icon icon-return"></i>
        </a>
        <div class="aui-center">
            <div class="aui-search-box">
                <i class="icon icon-search"></i>
                <input type="text" placeholder="">
            </div>
        </div>
        <a href="javascript:;" class="aui-navBar-item">
            <%--<i class="icon icon-eid"></i>--%>
        </a>
    </header>
    <section class="aui-scrollView">
        <div class="aui-tab" data-ydui-tab>
            <ul class="tab-nav">
                <li class="tab-nav-item tab-active">
                    <a href="javascript:;">
                        <span>贷款</span>
                    </a>
                </li>
                <li class="tab-nav-item">
                    <a href="javascript:;">
                        <span>信用卡</span>
                    </a>
                </li>
                <%--<li class="tab-nav-item">
                    <a href="javascript:;">
                        <span>牌照代办</span>
                    </a>
                </li>--%>
                <%--<li class="tab-nav-item">
                    <a href="javascript:;">
                        <span>牌照求购</span>
                    </a>
                </li>--%>
            </ul>
            <div class="divHeight"></div>
            <div class="tab-panel">
                <div class="tab-panel-item tab-active">
                    <c:forEach var="custom"   items="${customList}"   >
                        <a href="javascript:;" class="aui-flex">
                            <div class="aui-flex-box">
                                <%--<c:if test="${custom.}"></c:if>--%>
                                <h2><em>用户名</em>未填写</h2>
                                <h3>注册时间: ${custom.registerTime}</h3>
                                <div class="aui-list-info">
                                    <span><img src="${path}images/tel.png" alt=""></span>
                                    <span>${custom.uPhone}</span>
                                </div>
                            </div>
                            <div class="aui-plate-img">
                                <img src="${path}img/a3.jpg" alt="">
                            </div>
                        </a>
                    </c:forEach>
                </div>

                <div class="tab-panel-item">
                    <%--<a href="javascript:;" class="aui-flex">
                        <div class="aui-flex-box">
                            <h2><em style="background:#27aaa4">转让</em>低价转让MT4主标一个无客户投诉</h2>
                            <h3>监管机构: ASIc</h3>
                            <h3>出售价格: <em>980000</em></h3>
                            <div class="aui-list-info">
                                <span><img src="images/user-001.png" alt=""></span>
                                <span>188****7887</span>
                                <span><em>交易者</em></span>
                                <span><img src="images/tel.png" alt=""></span>
                                <span><img src="images/wx.png" alt=""></span>
                                <span><img src="images/qq.png" alt=""></span>
                            </div>
                        </div>
                        <div class="aui-plate-img">
                            <img src="${path}img/a3.jpg" alt="">
                        </div>
                        &lt;%&ndash;<div class="aui-time">
                            <em>2小时前</em>
                        </div>&ndash;%&gt;
                    </a>
                    <a href="javascript:;" class="aui-flex">
                        <div class="aui-flex-box">
                            <h2><em>代办</em>低价转让MT4主标一个无客户投诉</h2>
                            <h3>监管机构: ASIc</h3>
                            <h3>出售价格: <em>3000+</em></h3>
                            <div class="aui-list-info">
                                <span><img src="images/user-002.png" alt=""></span>
                                <span>朱子涛</span>
                                <span><em>交易者</em></span>
                                <span><img src="images/tel.png" alt=""></span>
                                <span><img src="images/qq.png" alt=""></span>
                            </div>
                        </div>
                        <div class="aui-plate-img">
                            <img src="images/ad-002.png" alt="">
                        </div>
                        <div class="aui-time">
                            <em>2小时前</em>
                        </div>
                    </a>
                    <a href="javascript:;" class="aui-flex">
                        <div class="aui-flex-box">
                            <h2><em>代办</em>低价转让MT4主标一个无客户投诉</h2>
                            <h3>监管机构: ASIc</h3>
                            <h3>出售价格: <em>3000+</em></h3>
                            <div class="aui-list-info">
                                <span><img src="images/user-003.png" alt=""></span>
                                <span>刘明</span>
                                <span><em>交易者</em></span>
                                <span><img src="images/tel.png" alt=""></span>
                                <span><img src="images/wx.png" alt=""></span>
                            </div>
                        </div>
                        <div class="aui-plate-img">
                            <img src="images/ad-003.png" alt="">
                        </div>
                        <div class="aui-time">
                            <em>2小时前</em>
                        </div>
                    </a>
                    <a href="javascript:;" class="aui-flex">
                        <div class="aui-flex-box">
                            <h2><em>代办</em>低价转让MT4主标一个无客户投诉</h2>
                            <h3>监管机构: ASIc</h3>
                            <h3>出售价格: <em>3000+</em></h3>
                            <div class="aui-list-info">
                                <span><img src="images/user-004.png" alt=""></span>
                                <span>刘明</span>
                                <span><em>交易者</em></span>
                                <span><img src="images/tel.png" alt=""></span>
                                <span><img src="images/wx.png" alt=""></span>
                            </div>
                        </div>
                        <div class="aui-plate-img">
                            <img src="images/ad-004.png" alt="">
                        </div>
                        <div class="aui-time">
                            <em>2小时前</em>
                        </div>
                    </a>
                    <a href="javascript:;" class="aui-flex">
                        <div class="aui-flex-box">
                            <h2><em>代办</em>低价转让MT4主标一个无客户投诉</h2>
                            <h3>监管机构: ASIc</h3>
                            <h3>出售价格: <em>3000+</em></h3>
                            <div class="aui-list-info">
                                <span><img src="images/user-005.png" alt=""></span>
                                <span>刘明</span>
                                <span><em>交易者</em></span>
                                <span><img src="images/tel.png" alt=""></span>
                                <span><img src="images/wx.png" alt=""></span>
                            </div>
                        </div>
                        <div class="aui-plate-img">
                            <img src="images/ad-005.png" alt="">
                        </div>
                        <div class="aui-time">
                            <em>2小时前</em>
                        </div>
                    </a>
                    <a href="javascript:;" class="aui-flex">
                        <div class="aui-flex-box">
                            <h2><em>代办</em>低价转让MT4主标一个无客户投诉</h2>
                            <h3>监管机构: ASIc</h3>
                            <h3>出售价格: <em>3000+</em></h3>
                            <div class="aui-list-info">
                                <span><img src="images/user-006.png" alt=""></span>
                                <span>刘明</span>
                                <span><em>交易者</em></span>
                                <span><img src="images/tel.png" alt=""></span>
                                <span><img src="images/wx.png" alt=""></span>
                            </div>
                        </div>
                        <div class="aui-plate-img">
                            <img src="images/ad-006.png" alt="">
                        </div>
                        <div class="aui-time">
                            <em>2小时前</em>
                        </div>
                    </a>
                    <a href="javascript:;" class="aui-flex">
                        <div class="aui-flex-box">
                            <h2><em>代办</em>低价转让MT4主标一个无客户投诉</h2>
                            <h3>监管机构: ASIc</h3>
                            <h3>出售价格: <em>3000+</em></h3>
                            <div class="aui-list-info">
                                <span><img src="images/user-003.png" alt=""></span>
                                <span>刘明</span>
                                <span><em>交易者</em></span>
                                <span><img src="images/tel.png" alt=""></span>
                                <span><img src="images/wx.png" alt=""></span>
                            </div>
                        </div>
                        <div class="aui-plate-img">
                            <img src="images/ad-007.png" alt="">
                        </div>
                        <div class="aui-time">
                            <em>2小时前</em>
                        </div>
                    </a>--%>
                </div>





            </div>
        </div>
    </section>
</section>
</body>
</html>
