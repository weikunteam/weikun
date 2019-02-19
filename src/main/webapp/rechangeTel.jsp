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
    <title>更改绑定手机</title>
    <link href="${path}css/peoplestyle.css" rel="stylesheet" type="text/css"/>
    <link rel='stylesheet' href='${path}css/toastr.min.css'>
    <script src="${path}js/jQuery.js"></script>
    <script src="${path}js/toastr.min.js"></script>
</head>
<body>
<section class="aui-flexView">
    <section class="aui-scrollView">
        <div class="aui-sides-head">
            <div class="aui-flex">
                <div class="aui-sides-img">
                    <img src="${path}images/side-logo.png" alt="">
                </div>
                <div class="aui-flex-box">
                    <h2>我们已经做好放款准备</h2>
                    <p>您正在更改绑定手机</p>
                </div>
            </div>
        </div>
        <div class="aui-sides-form">
            <a href="javascript:;" class="aui-flex b-line">
                <div class="aui-sides-form-text">
                    <h2>手机号码:</h2>
                </div>
                <div class="aui-flex-box">
                    <label class="cell-right">
                        <input type="text" class="aui-code-line-input" name="search" value="${people.uPhone}" id="inputTel" autocomplete="off" placeholder="" />
                    </label>
                </div>
            </a>

            <a href="javascript:;" class="aui-flex b-line">
                <div class="aui-sides-form-text">
                    <h2>验&nbsp;证&nbsp;&nbsp;码:</h2>
                </div>
                <div class="aui-flex-box">
                    <label class="cell-right ">
                        <input id="code" type="text" class="aui-code-line-input" autocomplete="off" placeholder="请输入验证码"/>
                        <input type="button" class="aui-btn-default" value="获取验证码" id="checkCode"/>
                    </label>
                </div>
            </a>
            <div class="aui-sides-div"></div>
            <button class="aui-sides-button" id="submit">确定</button>
        </div>
    </section>
</section>
<script type="text/javascript" charset="utf-8"></script>
<script>
    var path = "${path}";
</script>
<script src="${path}js/rechangeTel.js"></script>
/* $(function() {

$(".aui-code-line-input").addClear();

});*/
</body>

</html>
