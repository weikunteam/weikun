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
    <title>经办业务</title>
    <link href="${path}css/customliststyle.css" rel="stylesheet" type="text/css"/>
    <script src="${path}js/jQuery.js"></script>
    <script type="text/javascript" src="${path}js/tab.js"></script>
</head>
<body>
<section class="aui-flexView">
    <header class="aui-navBar aui-navBar-fixed">
        <%--<a href="javascript:;" class="aui-navBar-item">
            <i class="icon icon-return"></i>
        </a>--%>

            <div class="aui-center">

                <div class="aui-search-box">
                    <i class="icon icon-search"></i>
                    <input type="text" placeholder="输入手机号搜索" id="searchText">
                </div>
            </div>
            <a href="javascript:;void(0)" class="aui-navBar-item" style="color: white" id="search">
                <%--<i class="icon icon-eid"></i>--%>
                搜索
            </a>
    </header>
    <section class="aui-scrollView">
        <div class="aui-tab" data-ydui-tab>
            <%--<ul class="tab-nav">
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
                &lt;%&ndash;<li class="tab-nav-item">
                    <a href="javascript:;">
                        <span>牌照代办</span>
                    </a>
                </li>&ndash;%&gt;
                &lt;%&ndash;<li class="tab-nav-item">
                    <a href="javascript:;">
                        <span>牌照求购</span>
                    </a>
                </li>&ndash;%&gt;
            </ul>--%>
            <div class="divHeight1">
                <div id="divtitle">审核状态：</div>
                <select id="blueselect">
                    <option value="">全部</option>
                    <option value="0">不可申请</option>
                    <option value="1">申请中</option>
                    <option value="2">成功放款</option>
                    <option value="3">申请被拒</option>
                    <option value="4">未操作</option>
                    <option value="5">未通知</option>
                    <option value="6">已通知</option>
                    <option value="7">未结清</option>
                    <option value="8">已结清</option>
                </select>
                <div id="divtitle1">业务类型：</div>
                <select id="blueselect1">
                    <option value="">全部</option>
                    <option value="1">平安新一贷</option>
                    <option value="2">兴业消费金融</option>
                    <option value="3">中行消费金融</option>
                    <option value="4">海尔玖康</option>
                    <option value="5">小额贷款</option>
                </select>
            </div>
            <div class="tab-panel">
                <div class="tab-panel-item tab-active">
                    <c:forEach var="service"   items="${listService}"   >
                        <a href="javascript:;" class="aui-flex">
                            <div class="aui-flex-box">
                                    <%--<c:if test="${custom.}"></c:if>--%>
                                <h2><em>业务类型</em>${service.serviceName}</h2>
                                <h3>申请时间: ${service.applyDate}</h3>
                                <h3>客户姓名: ${service.name}</h3>
                                <h3>审核状态: <em>${service.state}</em></h3>
                                <div class="aui-list-info">
                                    <span><img src="${path}images/tel.png" alt=""></span>
                                    <span>${service.applicantTel}</span>
                                </div>
                            </div>
                                <div class="aui-plate-img">
                                <%--<img src="${path}img/a3.jpg" alt="">--%>
                                    <button class="suggestion" data-id="${service.id}">建议</button>
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
<script >
    $(".suggestion").on("click",function () {
        var id = $(this).data("id");
        window.location.href = "${path}userCenter/gotoSuggestion.action?id="+id;
    });
    $("#search").on("click",function () {
        var searchText = $("#searchText").val();
        var state = $("#blueselect").val();
        var type = $("#blueselect1").val();
        search(searchText,state,type);
    });

    $(".suggestion").on("click",function () {
        var id = $(this).data("id");
        window.location.href = "${path}userCenter/gotoSuggestion.action?id="+id;
    });

    $("#blueselect").change(function () {
        var searchText = $("#searchText").val();
        var state = $("#blueselect").val();
        var type = $("#blueselect1").val();
        search(searchText,state,type);
    });

    $("#blueselect1").change(function () {
        var searchText = $("#searchText").val();
        var state = $("#blueselect").val();
        var type = $("#blueselect1").val();
        search(searchText,state,type);
    });

    function search(searchText,state,type) {
        $.ajax({
            url:"${path}userCenter/search.action",
            data:{
                searchText:searchText,
                state:state,
                type:type
            },
            type:"post",
            dataType:"json",
            success:function(data){
                $(".tab-active").empty();
                for(var i=0;i<data.result.length;i++){
                    $(".tab-active").append("<a href=\"javascript:;\" class=\"aui-flex\">\n" +
                        "                            <div class=\"aui-flex-box\">\n" +
                        "                                    <%--<c:if test=\"${custom.}\"></c:if>--%>\n" +
                        "                                <h2><em>业务类型</em>"+data.result[i].serviceName+"</h2>\n" +
                        "                                <h3>申请时间: "+data.result[i].applyDate+"</h3>\n" +
                        "                                <h3>客户姓名: "+data.result[i].name+"</h3>\n" +
                        "                                <h3>审核状态: <em>"+data.result[i].state+"</em></h3>\n" +
                        "                                <div class=\"aui-list-info\">\n" +
                        "                                    <span><img src=\"${path}images/tel.png\" alt=\"\"></span>\n" +
                        "                                    <span>"+data.result[i].applicantTel+"</span>\n" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                                <div class=\"aui-plate-img\">\n" +
                        "                                <%--<img src=\"${path}img/a3.jpg\" alt=\"\">--%>\n" +
                        "                                    <button class=\"suggestion\" data-id=\""+data.result[i].id+"\">建议</button>\n" +
                        "                                </div>\n" +
                        "                        </a>");
                }


            }
        })
    }
</script>
</body>
</html>
