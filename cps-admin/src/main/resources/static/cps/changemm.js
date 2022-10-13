$(function () {
    validateRule();
});

$.validator.setDefaults({
    submitHandler: function () {
        changemm();
    }
});

function changemm() {
    var email = $.common.trim($("input[name='email']").val());
    var password = $.common.trim($("input[name='password']").val());
    // if(password==""){
    //     $.modal.msgError("请输入您的密码");
    //     return
    // }

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