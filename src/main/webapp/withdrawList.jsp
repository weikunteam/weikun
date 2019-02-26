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
    <title>提现记录</title>
    <link href="${path}css/liststyle.css" rel="stylesheet" type="text/css"/>
    <script src="${path}js/jQuery.js"></script>
</head>
<body>
<section class="aui-flexView">
    <header class="aui-navBar aui-navBar-fixed">
        <%--<div class="aui-center aui-center-clear">--%>
            <%--<div class="aui-job-search">--%>
                <%--<div class="aui-job-search-box">--%>
                    <%--<i class="icon icon-search"></i>--%>
                    <%--<input type="text" placeholder="搜索职位/公司">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<a href="javascript:;" class="aui-navBar-item">--%>
            <%--<div class="aui-icon-s"><i class="icon icon-sys"></i></div>--%>
            <%--<div>扫一扫</div>--%>
        <%--</a>--%>

    </header>
    <section class="aui-scrollView">
        <div class="divHeight">
            <div id="divtitle">提现状态：</div>
            <select id="blueselect">
                <option value="">全部</option>
                <option value="0">审核中</option>
                <option value="1">提现成功</option>
                <option value="2">提现失败</option>
            </select>
        </div>
        <div class="aui-job-list">
            <c:forEach items="${listWithdraw}" var="withdraw">
                <a href="javascript:;" class="aui-flex">
                    <div class="aui-flex-box">
                        <h2>${withdraw.applyDate}</h2>
                        <span>
                                <em>${withdraw.state}</em>
                            </span>
                    </div>
                    <div class="aui-monthly">
                        <h3>金额：${withdraw.amount}</h3>
                    </div>
                </a>
            </c:forEach>
        </div>
    </section>
</section>
<script >

    $("#blueselect").change(function () {
        var state = $("#blueselect").val();
        search(state);
    });

    function search(state) {
        $.ajax({
            url:"${path}userCenter/searchWithdraw.action",
            data:{
                state:state
            },
            type:"post",
            dataType:"json",
            success:function(data){
                $(".aui-job-list").empty();
                for(var i=0;i<data.objects.length;i++){
                    $(".aui-job-list").append( "<a href=\"javascript:;\" class=\"aui-flex\">\n" +
                        "                    <div class=\"aui-flex-box\">\n" +
                        "                        <h2>"+data.objects[i].applyDate+"</h2>\n" +
                        "                        <span>\n" +
                        "                                <em>"+data.objects[i].state+"</em>\n" +
                        "                            </span>\n" +
                        "                    </div>\n" +
                        "                    <div class=\"aui-monthly\">\n" +
                        "                        <h3>金额："+data.objects[i].amount+"</h3>\n" +
                        "                    </div>\n" +
                        "                </a>");
                }

            }
        })
    }
</script>
</body>
</html>
