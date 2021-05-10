$("#codeLogin").click(function(){
    var tel = $("#inputTel").val();
    var code = $("#code").val();
    var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
    if(!tel){
        toastr.error("请输入手机号");
        return false;
    }
    if(!reg.test(tel)){
        toastr.error("请输入正确手机号");
        return false;
    }
    if(!code){
        toastr.error("请输入验证码");
        return false;
    }
    $.ajax({
        type:"post",
        url:path+"login/codeLogin.action",
        dataType: 'json',
        data :{
            tel:tel,
            code:code
        },
        success:function(data){
            if(data.code == '1'){
                if("${param.isUserCenter}"==1){
                    window.location.href = "${path}userCenter/gotoUserCenter.action";
                }else if ("${param.isRecommend}"==1){
                    window.location.href = "${path}share/recommend.action";
                }else{
                    window.location.href = "${path}home/gotoHome.action";
                }
            }else if(data.code == '2'){
                toastr.error(data.msg);
            }else if(data.code == '3'){
                toastr.error(data.msg);
            }
        }
    });
});

//获取验证码倒计时

var countdown = 60;

$('#checkCode').on('click',function(){
    var tel = $("#inputTel").val();
    var obj = $("#checkCode");
    var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
    if(!tel){
        toastr.error("请输入手机号");
        return false;
    }
    if(!reg.test(tel)){
        toastr.error("请输入正确手机号");
        return false;
    }

    settime(obj);
    $.ajax({
        type:"post",
        url:path+"login/sendCode.action",
        dataType: 'json',
        async : false,
        data :{
            tel:tel
        }
    });
})

function settime(obj) { //发送验证码倒计时

    if (countdown == 0) {

        obj.attr('disabled', false);

        //obj.removeattr("disabled");

        obj.html("发送验证码");

        countdown = 60;

        return;

    } else {

        obj.attr('disabled', true);

        obj.html("重新发送(" + countdown + ")");

        countdown--;

    }

    setTimeout(function () {

            settime(obj)

        }

        , 1000)

}
$("#login").click(function(){
    window.location.href = path+"login/login.action";
})


