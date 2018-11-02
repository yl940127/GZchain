;(function () {
    listenerInit();
})();

function listenerInit() {

    $('header a').mouseover(function () {
        var t = document.documentElement.scrollTop || document.body.scrollTop;

        if (t > 0) {
            $(this).css('background', 'rgba(56, 222, 207, 0.9)');
        }

        if (t === 0) {
            $(this).css({
                'color': '#38DECF',
                'background': 'rgba(0, 0, 0, 0)'
            });
        }
    });

    $('header a').mouseout(function () {
        backToInit.apply(this);
    });

    $('.carousel-control:eq(0)').mouseover(function () {
        $('.carousel-control:eq(0)').css("opacity", "1");
    });
    $('.carousel-control:eq(1)').mouseover(function () {
        $('.carousel-control:eq(1)').css("opacity", "1");
    });
    $('.carousel-control:eq(0)').mouseleave(function () {
        $('.carousel-control:eq(0)').css("opacity", "0");
    });
    $('.carousel-control:eq(1)').mouseleave(function () {
        $('.carousel-control:eq(1)').css("opacity", "0");
    });
    $('.search > input').focus(function () {
        $('.search > input').attr("placeholder", "");
    });
    $('.search > input').blur(function () {
        if (this.value == "") {
            this.setAttribute("placeholder", "      请输入您想去的国家、城市");
        }
    });

    $('#loginLink').click(function () {
        $('#modalLogin').modal('show');
        return false;
    });

    $('#btnLogin').click(function () {
        //登录ajax操作
        $.ajax({
            type: 'POST',
            url: './user/login',
            data: {
                userid: $('#userId').val(),
                password: $('#password').val()
            },
            dataType: 'json',
            success: function (data) {
                if (data.code === '10000') {
                    document.location.reload();
                }
            }
        })
    });
}

function backToInit() {
    var t = document.documentElement.scrollTop || document.body.scrollTop;

    if (t > 0) {
        $(this).css('background', 'rgba(78, 228, 214, 0.9)');
    }

    if (t === 0) {
        $(this).css({
            'color': '#fff',
            'background': 'rgba(0, 0, 0, 0)'
        });
    }
}
