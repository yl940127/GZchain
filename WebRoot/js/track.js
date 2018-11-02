; (function () {
    uiInit();

    dataInit();

    listenerInit();
})();

function uiInit() {
    var $container = $('#masonry');

    $container.masonry({
        itemSelector: '.box',
        gutterWidth: 20,
        isAnimated: true
    });

    $('.user a, img').click(function () {
        document.location.href = './trackUser.jsp';
        return false;
    });

    
}

function dataInit() {

}

function listenerInit() {
    $('#btn-more').click(function () {
        var n = 6;
        while (n-- > 0) {
            createBox();
        }
    });

    $(document).scroll(function () {
        var $this = $(this),
            viewH = $(this).height(),//可见高度
            contentH = $(this).get(0).scrollHeight,//内容高度
            scrollTop = $(this).scrollTop();//滚动高度
        //if(contentH - viewH - scrollTop <= 100) { //到达底部100px时,加载新内容
        if (scrollTop / (contentH - viewH) >= 0.95) { //到达底部100px时,加载新内容
            // 这里加载数据..
            $('#masnory').append($('.box:first-child').clone(true).addClass('animated bounceInUp'));
        }

    })
}

function createBox() {
    $('.box').each(function () {
        $('#masnory').append($(this).clone(true).addClass('animated bounceInUp'));
    })
}