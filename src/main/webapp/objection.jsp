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
    <title>意见反馈</title>
    <link href="${path}css/new_file.css" rel="stylesheet" type="text/css"/>
    <link rel='stylesheet' href='${path}css/toastr.min.css'>
    <script src="${path}js/jQuery.js"></script>
    <script src="${path}js/toastr.min.js"></script>
</head>
<body>
<!--头部  star-->
<header style="color:#fff">

        <%--<div class="_left"><img src="images/left.png"></div>--%>
        <span>意见反馈</span>
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
    <div class="tkyy">反馈意见</div>


    <section class="assess">
        <div class="assess_nr">
            <textarea rows="4" placeholder="请您输入反馈意见(200字内)" id="objection"></textarea>
        </div>
    </section>

    <!--2-->
    <a href="#" id="submit"><div class="submit_button">提交</div></a>
    <%--<input type="hidden" id="hidden" value="${id}">--%>

</div>
<!--内容 end-->
</body>
<script>
    toastr.options = {
        "closeButton": false, //是否显示关闭按钮
        "debug": false, //是否使用debug模式
        "positionClass": "toast-center-centerthird-xs",//弹出窗的位置
        "showDuration": "300",//显示的动画时间
        "hideDuration": "300",//消失的动画时间
        "timeOut": "2000", //展现时间
        "showEasing": "swing",//显示时的动画缓冲方式
        "hideEasing": "linear",//消失时的动画缓冲方式
        "showMethod": "fadeIn",//显示时的动画方式
        "hideMethod": "fadeOut" //消失时的动画方式
    };
    $("#submit").click(function () {
        var objection = $("#objection").val();
        if (!objection){
            toastr.error("请输入反馈意见");
            return false
        }else {
            if (objection.length>200) {
                toastr.error("反馈意见字数超过200");
                return false;
            }
        }

        $.ajax({
            type:"post",
            url:"${path}userCenter/objection.action",
            dataType: 'json',
            data :{
                objection:objection
            },
            success:function(data){
                    if(data.code==1){
                        toastr.success(data.msg);
                        setTimeout(function(){
                            window.location.href = "${path}userCenter/gotoUserCenter.action";
                        },2000);
                    }else {
                        toastr.error(data.msg);
                    }
            }
        });
    })
</script>
</html>
