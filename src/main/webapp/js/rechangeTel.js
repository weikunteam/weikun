//获取验证码倒计时

var countdown = 60;

$('#checkCode').on('click', function () {
    var tel = $("#inputTel").val();
    var obj = $("#checkCode");
    var reg = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
    if (!tel) {
        toastr.error("请输入手机号");
        return false;
    }
    if (!reg.test(tel)) {
        toastr.error("请输入正确手机号");
        return false;
    }

    settime(obj);
    $.ajax({
        type: "post",
        url: path + "login/sendCode.action",
        dataType: 'json',
        async: false,
        data: {
            tel: tel
        }
    });


})

function settime(obj) { //发送验证码倒计时

    if (countdown == 0) {

        obj.attr('disabled', false);

        //obj.removeattr("disabled");

        obj.val("获取验证码");

        countdown = 60;

        return;

    } else {

        obj.attr('disabled', true);

        obj.val("重新发送(" + countdown + ")");

        countdown--;

    }

    setTimeout(function () {

            settime(obj)

        }

        , 1000)

}

$("#submit").click(function(){
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
        url:path+"userCenter/rechangeTel.action",
        dataType: 'json',
        data :{
            tel:tel,
            code:code
        },
        success:function(data){
            if(data.code == '1'){
                toastr.success(data.msg);
                setTimeout(function(){
                    window.location.href = path+"userCenter/gotoPeople.action";
                },2000);
            }else if(data.code == '2'){
                toastr.error(data.msg);
            }
        }
    });
});


toastr.options = {
    "closeButton": false, //是否显示关闭按钮
    "debug": false, //是否使用debug模式
    "positionClass": "toast-center-centertwo-xs",//弹出窗的位置
    "showDuration": "300",//显示的动画时间
    "hideDuration": "300",//消失的动画时间
    "timeOut": "2000", //展现时间
    "showEasing": "swing",//显示时的动画缓冲方式
    "hideEasing": "linear",//消失时的动画缓冲方式
    "showMethod": "fadeIn",//显示时的动画方式
    "hideMethod": "fadeOut" //消失时的动画方式
};
