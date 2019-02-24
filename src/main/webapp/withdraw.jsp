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
    <title>我要提现</title>
    <link rel='stylesheet' href='${path}css/toastr.min.css'>
    <link href="${path}css/withdrawstyle.css" rel="stylesheet" type="text/css"/>
    <link href="${path}css/peoplestyle.css" rel="stylesheet" type="text/css"/>
    <script src="${path}js/jQuery.js"></script>
    <script src="${path}js/toastr.min.js"></script>
</head>
<body>
<!--头部  star-->
<%--<header style="color:#fff">--%>

        <%--&lt;%&ndash;<div class="_left"><img src="images/left.png"></div>&ndash;%&gt;--%>
        <%--<span>意见反馈</span>--%>
<%--</header>--%>
<!--头部 end-->

<!--内容 star-->
<section class="aui-flexView">
    <header class="aui-navBar aui-navBar-fixed">
        <a href="javascript:;" class="aui-navBar-item">
            <i class="icon icon-return"></i>
        </a>
        <div class="aui-center">
            <span class="aui-center-title">我要提现</span>
        </div>
        <a href="javascript:;" class="aui-navBar-item">
            <i class="icon icon-sys"></i>
        </a>
    </header>
    <section class="aui-scrollView">
        <div class="aui-make-box">
            <div class="aui-make-box-title">
                <p style="">余额(元)</p>
                <h2>${people.uRecommendAmount}</h2>
            </div>
            <div class="aui-make-bottom" >
                <i class="icon1 icon-doubt"></i><a href="${path}userCenter/gotoWithdrawList.action" style="color: white">查看提现记录</a>
            </div>
        </div>
        <%--<div class="divHeight"></div>--%>
        <div class="aui-flex b-line">
            <div class="aui-flex-box">
                <h2>提现信息</h2>
            </div>
        </div>
        <div class="aui-make-list">
            <div class="aui-flex b-line">
                <a href="javascript:;" class="aui-flex b-line">
                    <div class="aui-sides-form-text">
                        <h2>卡号:</h2>
                    </div>
                    <div class="aui-flex-box">
                        <label class="cell-right ">
                            <input type="text" class="aui-code-line-input" name="search" value="" id="card" autocomplete="off" placeholder="请输入提现银行卡号"/>
                        </label>
                    </div>
                </a>
            </div>
            <div class="aui-flex">
                <a href="javascript:;" class="aui-flex b-line">
                    <div class="aui-sides-form-text">
                        <h2>姓名:</h2>
                    </div>
                    <div class="aui-flex-box">
                        <label class="cell-right ">
                            <input type="text" class="aui-code-line-input" name="search" value="" id="name" autocomplete="off" placeholder="请输入姓名"/>
                        </label>
                    </div>
                </a>
            </div>
        </div>
        <div class="aui-flex">
            <a href="javascript:;" class="aui-flex b-line">
                <div class="aui-sides-form-text">
                    <h2>金额:</h2>
                </div>
                <div class="aui-flex-box">
                    <label class="cell-right ">
                        <input type="text" class="aui-code-line-input" name="search" value="" id="amount" autocomplete="off" placeholder="请输入提现金额"/>
                    </label>
                </div>
            </a>
        </div>
        </div>
        <button class="aui-sides-button" id="submit">提交</button>
    </section>
</section>

<!--内容 end-->
</body>
<script>
    toastr.options = {
        "closeButton": false, //是否显示关闭按钮
        "debug": false, //是否使用debug模式
        "positionClass": "toast-center-centerfour-xs",//弹出窗的位置
        "showDuration": "300",//显示的动画时间
        "hideDuration": "300",//消失的动画时间
        "timeOut": "2000", //展现时间
        "showEasing": "swing",//显示时的动画缓冲方式
        "hideEasing": "linear",//消失时的动画缓冲方式
        "showMethod": "fadeIn",//显示时的动画方式
        "hideMethod": "fadeOut" //消失时的动画方式
    };
    $("#submit").click(function () {
        var card = $("#card").val();
        var name = $("#name").val();
        var amount = $("#amount").val();
        var reg = /^([1-9]{1})(\d{12}|\d{18})$/;
        if (!reg.test(card)){
            toastr.error("请输入正确银行卡号");
            return false
        }
        // alert(card.match(reg))
        if(!name){
            toastr.error("请输入名字");
            return false;
        }else{
            if (name.length>10){
                toastr.error("请输入正确名字");
                return false;
            }
        }
        if (isNaN(amount)){
            toastr.error("请输入提现金额");
            return false
        }else {
            if (amount.length>14){
                toastr.error("请输入正确提现金额");
                return false
            }
        }
        $.ajax({
            type:"post",
            url:"${path}userCenter/withdraw.action",
            dataType: 'json',
            data :{
                card:card,
                name:name,
                amount:amount,
                id:${people.userId}
            },
            success:function(data){
                    if(data.code==1){
                        toastr.success(data.msg);
                        setTimeout(function(){
                            window.location.href = "${path}userCenter/gotoUserCenter.action";
                        },2000);
                    }
            }
        });
    })
</script>
</html>
