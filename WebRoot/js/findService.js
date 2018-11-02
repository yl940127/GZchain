;(function () {
    uiInit();

    dataInit();

    listenerInit();
})();

function uiInit() {

}

function dataInit() {
//    $.ajax({
//        type: 'get',
//        url: './service',
//        data: {
//            city: localStorage.getItem('city')
//        },
//        dataType: 'json',
//        success: function (data) {
//            renderServiceBox(data);
//        }
//    });

    // var data = localStorage.getItem('data');

    // var serviceJson = JSON.parse(data.servicejson);

    // var box = $('guides li').eq(0).clone(true);
    // var service = '';
    
    //         if (serviceJson.room) service += '提供房屋、';
    
    //         if (serviceJson.car) service += '提供车辆、';
    
    //         if (serviceJson.food) service += '提供餐饮、';
    
    //         if (serviceJson.company) service += '伴游';
    // $(box).find('.guide-service-content').text(service);
}

function renderServiceBox(data) {
    data.forEach(function(item, index) {
        var serviceJson = JSON.parse(item.servicejson);
        var service = '';

        if (serviceJson.room) service += '提供房屋、';

        if (serviceJson.car) service += '提供车辆、';

        if (serviceJson.food) service += '提供餐饮、';

        if (serviceJson.company) service += '伴游';

        $('.guide-service-content').eq(index).text(service);

        $('.guide-name').eq(index).text(item.realName);

        $('.guide-pos').eq(index).text(item.cityName);

        $('.guide-voluntorism').eq(index).text('要求:' + item.requireText + ', ' + '时间：' + item.startTime + '-' + item.endTime);
    }, this);
}

function listenerInit() {
    $('.guides li').hide();
//    $('.invest_prochoose a').click(function () {
//        $.ajax({
//            type: 'get',
//            url: './service',
//            data: {
//                status: $('.inpro_cura:first-child').attr('value'),
//                room: $('.inpro_cura:eq(1)').attr('value'),
//                type: $('.inpro_cura:eq(2)').attr('value'),
//                city: $('.inpro_cura:eq(3)').attr('value')
//            },
//            dataType: 'json',
//            success: function (data) {
//            	renderServiceBox(data);
//            }
//        })
//    });

    $('#serviceStatus a').click(function () {
            for (var i = 0; i < 3; i++) {
                $('.guides li').eq(Math.floor(Math.random()*6)).show();
            }
    });

    $('#roomTrue').click(function () {
        $('.guides li').show();
        $('.guide-service-content').each(function () {
            var text = '提供住宿';
            if (Math.random()*2 > 1) {
                text += ', 提供车辆';
            }

            if (Math.random()*2 > 1) {
                text += ', 提供餐饮';
            }

            if (Math.random()*2 > 1) {
                text += ', 陪游';
            }

            $(this).text(text);
        });
    });

    $('#roomFalse').click(function () {
        $('.guides li').show();
        $('.guide-service-content').each(function () {
            var text = '';
            if (Math.random()*2 > 1) {
                text += ', 提供车辆';
            }

            if (Math.random()*2 > 1) {
                text += ', 提供餐饮';
            }

            if (Math.random()*2 > 1) {
                text += ', 陪游';
            }

            $(this).text(text);
        });
    });

    $('#serviceSalary a').click(function () {
        $('.guides li').hide();
        for (var i = 0; i < 4; i++) {
        
        $('.guides li').eq(Math.floor(Math.random()*6)).show();

        $('.guide-pos').text($(this).attr('value'));
        }
    });
    
    
    $('.detail').click(function () {
    	document.location.href="http://localhost:8080/PSP/detail?id=" + $('#detail').text();
    })

    
}
