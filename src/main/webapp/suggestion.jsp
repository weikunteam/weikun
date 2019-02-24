<%--
  Created by IntelliJ IDEA.
  User: 87187
  Date: 2019/2/12
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
    <title>客户建议</title>
    <link href="${path}css/new_file.css" rel="stylesheet" type="text/css"/>
    <script src="${path}js/jQuery.js"></script>
</head>
<body>
<!--头部  star-->
<header style="color:#fff">

        <%--<div class="_left"><img src="images/left.png"></div>--%>
        <span>客户建议</span>
</header>
<!--头部 end-->

<!--内容 star-->
<div class="contaniner fixed-cont">
    <!--1-->
    <%--<div class="tkyy">退款原因<span>*</span></div>
    <div class="demo">
        <select name="position" id="country_id">
            <option value="0">我要退款</option>
            <option value="1">买错了</option>
            <option value="2">不想买了</option>
            <option value="3">申请退款</option>
            <option value="4">其他原因</option>
        </select>
    </div>--%>
    <div class="tkyy">建议</div>


    <section class="assess">
        <div class="assess_nr">
            <textarea rows="4" placeholder="请您输入客户建议" id="suggest"></textarea>
        </div>
    </section>

    <!--2-->
    <a href="#" id="submit"><div class="submit_button">提交</div></a>
    <input type="hidden" id="hidden" value="${id}">

</div>
<!--内容 end-->
</body>
<script>
    $("#submit").click(function () {
        var suggest = $("#suggest").val();
        if(suggest){
            if (suggest.length>200) {
                toastr.error("建议字数超过200");
                return false;
            }
        }
        $.ajax({
            type:"post",
            url:"${path}userCenter/suggest.action",
            dataType: 'json',
            data :{
                suggest:$("#suggest").val(),
                id:$("#hidden").val()
            },
            success:function(data){
                    if(data.code==1){
                        window.location.href = "${path}userCenter/gotoService.action";
                    }
            }
        });
    })
</script>
</html>
