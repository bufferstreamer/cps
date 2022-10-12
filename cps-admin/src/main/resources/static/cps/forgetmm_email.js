$("#getVerifyCode").click(function (){
    sendEmail($("#getVerifyCode"));
});

// function sleep(ms) {
//     let start = Date.now()
//     let end = start + ms
//     while(true) {
//         if(Date.now() > end) {
//             return
//         }
//     }
// }
//用ajax提交到后台的发送邮件接口
function sendEmail(obj){
    console.log(ctx)
    var email = $.common.trim($("input[name='userMail']").val());
    var result = isEmail();
    if(result) {
        $.ajax({
            url: ctx + "sendEmailCode",
            data:{email:email},
            dataType:"json",
            type:"post",
            async : true,
            cache : false,
            // success:function(res){
            //     debugger;
            //     if(res){
            //         alert("验证码发送成功");
            //     }else{
            //
            //     }
            // },
            beforeSend: function(){
                $.modal.loading("验证码发送中，请稍后-ˏˋෆ( ˶'ᵕ'˶)ෆˎˊ-");
            },
            success: function (r) {
                if (r.code == web_status.SUCCESS) {
                    $.modal.msgSuccess(r.msg);
                } else {
                    $.modal.msgError(r.msg);
                }
                $.modal.closeLoading();
            },
        })
        setTime(obj);//开始倒计时
    }else{
        $.modal.msgWarning("请输入有效的邮箱地址");
    }
}

function sendVerifyCode(obj){
    // var email = $.common.trim($("input[name='userMail']").val());
    var emailVerifyCode = $.common.trim($("input[name='verifyCode']").val());
    if(emailVerifyCode==""){
        $.modal.msgWarning("请输入验证码");
        return
    }
    var result = isEmail();
    if(result) {
        $.ajax({
            url: ctx + "checkEmailVerifyCode",
            data:{emailVerifyCode:emailVerifyCode},
            dataType:"json",
            type:"post",
            async : false,
            cache : false,
            // success:function(res){
            //     debugger;
            //     if(res){
            //         alert("验证码发送成功");
            //     }else{
            //
            //     }
            // },
            success: function (r) {
                if (r.code == web_status.SUCCESS) {
                    $.modal.msgSuccess(r.msg);
                    setTimeout(function () {
                        // 这里就是处理的事件
                        location.href = ctx + 'changemm';
                    }, 1000);

                } else {
                    $.modal.msgError(r.msg);
                }
            }
        })
    }else{
        $.modal.msgWarning("请输入有效的邮箱地址");
    }
}




//60s倒计时实现逻辑
var countdown = 60;
function setTime(obj) {
    if (countdown == 0) {
        obj.prop('disabled', false);
        obj.text("获取验证码");
        countdown = 60;//60秒过后button上的文字初始化,计时器初始化;
        return;
    } else {
        obj.prop('disabled', true);
        obj.text("("+countdown+"s)后重新发送") ;
        countdown--;
    }
    setTimeout(function() { setTime(obj) },1000) //每1000毫秒执行一次
}


//校验邮箱是否合法
function isEmail(){
    var email = $.common.trim($("input[name='userMail']").val());
    var reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    if(!reg.test(email)){
        return false;
    }else{
        return true;
    }
}