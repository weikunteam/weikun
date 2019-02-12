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
    <title>个人信息</title>
    <link href="${path}css/peoplestyle.css" rel="stylesheet" type="text/css"/>
    <script src="${path}js/jQuery.js"></script>
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
                    <p>请完善个人资料</p>
                </div>
            </div>
        </div>
        <div class="aui-sides-form">
            <a href="javascript:;" class="aui-flex b-line">
                <div class="aui-sides-form-text">
                    <h2>姓名:</h2>
                </div>
                <div class="aui-flex-box">
                    <label class="cell-right ">
                        <input type="text" class="aui-code-line-input" name="search" value="${people.userName}" id="userName" autocomplete="off" placeholder="请输入姓名"/>
                    </label>
                </div>
            </a>
            <a href="javascript:;" class="aui-flex b-line">
                <div class="aui-sides-form-text">
                    <h2>年龄:</h2>
                </div>
                <div class="aui-flex-box">
                    <label class="cell-right ">
                        <input type="text" class="aui-code-line-input" name="search" value="${people.age}" id="age" autocomplete="off" placeholder="请输入年龄"/>
                    </label>
                </div>
            </a>
            <a href="javascript:;" class="aui-flex b-line">
                <div class="aui-sides-form-text">
                    <h2>职业:</h2>
                </div>
                <div class="aui-flex-box">
                    <label class="cell-right ">
                        <input type="text" class="aui-code-line-input" name="search" value="${people.job}" id="job" autocomplete="off" placeholder="请输入职业"/>
                    </label>
                </div>
            </a>

            <%--<a href="javascript:;" class="aui-flex b-line">
                <div class="aui-sides-form-text">
                    <h2>验&nbsp;证&nbsp;&nbsp;码:</h2>
                </div>
                <div class="aui-flex-box">
                    <label class="cell-right ">
                        <input id="code1" type="text" class="aui-code-line-input" autocomplete="off" placeholder="请输入验证码"/>
                        <input id="btnSendCode1" type="button" class="aui-btn-default" value="获取验证码" onClick="sendMessage1()"/>
                    </label>
                </div>
            </a>--%>
            <div class="aui-sides-div"></div>
            <button class="aui-sides-button">保存</button>
        </div>
    </section>
</section>

<script type="text/javascript" charset="utf-8">
   /* $(function() {

        $(".aui-code-line-input").addClear();

    });*/
   $(".aui-sides-button").on("click",function () {
       $.ajax({
           type:"post",
           url:"${path}userCenter/updateUser.action",
           dataType: 'json',
           data :{
               userName:$("#userName").val(),
               age:$("#age").val(),
               job:$("#job").val()
           },
           success:function(data){
               if(data.code == '1'){
                   window.location.href = "${path}userCenter/gotoUserCenter.action";
               }else{
                   toastr.error("数据异常，保存失败");
               }
           }

       })
   })

</script>
</body>
</html>
