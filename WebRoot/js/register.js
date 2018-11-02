;(function () {
    uiInit();

    dataInit();

    listenerInit();
})();

function listenerInit() {
    $('#btn-register').click(function () {
        $.ajax({
            data: 'POST',
            url: './user/register',
            data: {
                email: $('#email').val(),
                username: $('#username').val(),
                password: $('#password').val()
            },
            dataType: 'json',
            success: function (data) {
                if (data.code === '10000') {
                    document.location.reload();
                }
            }
        });
    });
}