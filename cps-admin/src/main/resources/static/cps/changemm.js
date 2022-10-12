$(function () {
    validateRule();
});

// function getUrlParms (name) {
//     let url = window.location.href;//获取请求进来的完整url
//     let tstr = url.substring(url.indexOf('?') + 1).split('&');//先截取url的?后面的参数部分，在根据&分割成参数数组
//     let result = {};
//     tstr.forEach((item) => {
//         let res = item.split('=');//res为type,my-component1.vue。  res[0]为type，res[1为]my-component1.vue
//         result[res[0]] = res[1];//构造成键值对形式 res[0]为键，res[1]为值 例：type: "my-component1.vue"
//     })
//     return result[name];//通过键取值
// }
//
// var email = getUrlParms("email");//调用函数即可
// document.getElementById('email').value=email;

function changemm() {
    var email = $.common.trim($("input[name='email']").val());
    var password = $.common.trim($("input[name='password']").val());
    $.ajax({
        type: "post",
        url: ctx + "changemm",
        data: {
            "email": email,
            "password": password,
        },
        success: function (r) {
            if (r.code == web_status.SUCCESS) {
                $.modal.msgSuccess(r.msg);
                setTimeout(function () {
                    // 这里就是处理的事件
                    location.href = ctx + 'index';
                }, 1000);
            } else {
                $.modal.msgError(r.msg);
                if(r.msg=="修改失败,请重试"){
                    location.href = ctx + 'forgetmm_email';
                }
            }
        }
    });
}

function validateRule() {
    var icon = "<i class='fa fa-times-circle'></i> ";
    $("#changemmForm").validate({
        rules: {
            password: {
                required: true,
                minlength: 5
            },
            confirmPassword: {
                required: true,
                equalTo: "[name='password']"
            },
        },
        messages: {
            password: {
                required: icon + "请输入您的密码",
                minlength: icon + "密码不能小于5个字符",
            },
            confirmPassword: {
                required: icon + "请再次输入您的密码",
                equalTo: icon + "两次密码输入不一致"
            },

        },
        errorPlacement: function (error, element) {
            if (element.is(':checkbox')) {
                error.appendTo(element.parent().parent());    //将错误信息添加当前元素的父结点的父结点后面
            } else {
                error.insertAfter(element);
            }
        }
    })
}