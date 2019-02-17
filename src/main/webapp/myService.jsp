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
    <title>我的业务</title>
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
                    <c:forEach var="service"   items="${listService}"   >
                        <a href="javascript:;" class="aui-flex">
                            <div class="aui-flex-box">
                                    <%--<c:if test="${custom.}"></c:if>--%>
                                <h2><em>业务类型</em>${service.serviceName}</h2>
                                <h3>申请时间: ${service.applyDate}</h3>
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
<script >

</script>
</body>
</html>
