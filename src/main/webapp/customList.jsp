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
            <div class="divHeight"></div>
            <div class="tab-panel">
                <div class="tab-panel-item tab-active">
                    <c:forEach var="custom"   items="${customList}"   >
                        <a href="javascript:;" class="aui-flex">
                            <div class="aui-flex-box">
                                <c:if test="${custom.userName == '' or custom.userName == null}">
                                    <h2><em>用户名</em>未填写</h2>
                                </c:if>
                                <c:if test="${custom.userName != '' and custom.userName != null}">
                                    <h2><em>用户名</em>${custom.userName}</h2>
                                </c:if>
                                <h3>注册时间: ${custom.registerTime}</h3>
                                <div class="aui-list-info">
                                    <span><img src="${path}images/tel.png" alt=""></span>
                                    <span>${custom.uPhone}</span>
                                </div>
                            </div>
                            <div class="aui-plate-img">
                                <img src="${path}images/user-004.png" alt="">
                            </div>
                        </a>
                    </c:forEach>
                </div>

                <div class="tab-panel-item">

                </div>





            </div>
        </div>
    </section>
</section>
<script>
    $("#search").on("click",function () {
        var searchText = $("#searchText").val();
        search(searchText);
    });
    function search(searchText) {
        $.ajax({
            url:"${path}customList/searchCustomer.action",
            data:{
                searchText:searchText
            },
            type:"post",
            dataType:"json",
            success:function(data){
                $(".tab-active").empty();
                for(var i=0;i<data.result.length;i++){
                    var name = data.result[i].userName;
                    var time = data.result[i].registerTime;
                    if (name == null){
                        name = "未填写";
                    }
                    if (time == null){
                        time = "";
                    }
                        $(".tab-active").append("<a href=\"javascript:;\" class=\"aui-flex\">\n" +
                        "                            <div class=\"aui-flex-box\">\n" +
                        "                                <h2><em>用户名</em>"+name+"</h2>\n" +
                        "                                <h3>注册时间: "+time+"</h3>\n" +
                        "                                <div class=\"aui-list-info\">\n" +
                        "                                    <span><img src=\"${path}images/tel.png\" alt=\"\"></span>\n" +
                        "                                    <span>"+data.result[i].uPhone+"</span>\n" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                            <div class=\"aui-plate-img\">\n" +
                        "                                <img src=\"${path}images/user-004.png\" alt=\"\">\n" +
                        "                            </div>\n" +
                        "                        </a>");


                }


            }
        })
    }
</script>
</body>
</html>
