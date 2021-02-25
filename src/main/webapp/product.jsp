<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <!--BootStrap设计的页面支持响应式的 -->
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
    <title>产品海报</title>
    <link rel='stylesheet' href='${path}css/bootstrap.min.css'>
    <link rel='stylesheet' href='${path}css/login1.css'>
    <link rel='stylesheet' href='${path}css/toastr.min.css'>
    <link href="${path}css/font-awesome.min.css" rel="stylesheet" />
    <script src="${path}js/jQuery.js"></script>
    <script src="${path}js/toastr.min.js"></script>
    <script src="${path}js/bootstrap.js"></script>
    <script src="${path}js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
    <script src="${path}js/jquery.qrcode.min.js"></script>
    <style type="text/css">
        .text-with-hr {
            text-align: center;
            position: relative;
            z-index: 2;

        }
        /*
        横线，并通过z-index：-1将or附近的横线遮盖住
        */
        .text-with-hr:before {
            position: absolute;
            content: '';
            top: 11px;
            left: 0px;
            width: 100%;
            border-bottom: 1px solid #d4d4d4;
            z-index: -1;
        }
        .text-with-hr span {
            display: inline-block;
            /*background: #FFFACD;*/
            padding: 0px;
        }
        .form-horizontal{
            /*background-color:#FFFACD;*/
        }
        body{
            /*background-color:#FFFACD;*/
        }
    </style>
</head>
<body>
<%--<div id="topImg">--%>
<%--    <img  src="${path}img/share.jpg" style="width:100%;"  ></img>--%>
<%--</div>--%>
<div class="container-fluid" style="margin-bottom: 0px;">
    <div class="row" style="margin-bottom: 0px;">
        <div class="col-xs-12" style="margin-bottom: 0px;">
            <form class="form-horizontal" style="margin-top:20px;margin-bottom: 0px;">
                <div class="text-with-hr">
                    <span>
                        <font size="4" color="#CDC9C9">扫码申请贷款</font>
                    </span>
                </div>
                <div class="form-group text-left" >
                    <label class="control-label" style="font-size:100%"><font style="color:#ffaf82;" size="3">
                        识别二维码填写资料申请，额度高至50万</font></label>
                </div>
            </form>
        </div>

    </div>

</div>

<div class="form-group" style="position: absolute;top: 100px;">
    <img src="${path}img/pinganQrcode.jpg"  style="width:100%;"></img>
</div>

</body>
<script type="text/javascript">
</script>
</html>