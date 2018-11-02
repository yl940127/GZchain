;(function () {
    uiInit();

    dataInit();

    listenerInit();
})();

function uiInit() {
    $('.menu-item > div:not(:first)').hide();
}

function dataInit() {

}

function listenerInit() {
    $('.list-group a').click(function () {
        $(this).addClass('active');
        window.location.hash = $(this).attr('href');
        $('.menu-item > div').each(function () {
            if ($(this).is(':visible')) {
                $('.list-group').children('[href="#'+ $(this).attr('id') +'"]').removeClass('active');
                $(this).hide();
            }
        });
        $($(this).attr('href')).show();
        return false;
    })
}