;(function () {
    uiInit();

    dataInit();

    listenerInit();
})();

function uiInit() {

}

function dataInit() {

}

function listenerInit() {

    $(document).scroll(function () {
        var t = document.documentElement.scrollTop || document.body.scrollTop;

        if (t > 0) {
            $('#banner').css({
                'background': '#4ee4d6',
                'opacity': '0.9'
            });

            $('header .nav a').css('background', 'rgba(78, 228, 214, 0.9)');
        }

        if (t === 0) {
            $('#banner').css('background', 'rgba(0, 0, 0, 0)');

            $('header .nav a, #index').css({
                'color': '#fff',
                'background': 'rgba(0, 0, 0, 0)'
            });
        }
    });
    
    $(document).keydown(function () {
    	if (event.keyCode === 13) {
    		if ($('.search input').val() !== undefined) {
    			localStorage.setItem('city', $('.search input').val());
                document.location.href = "./findService1.jsp";
            } 
    	}
    })

    $('.search-btn').click(function () {
        if ($('.search input').val() !== undefined) {
        	localStorage.setItem('city', $('.search input').val());
            document.location.href = "./findService1.jsp";
        }     
    });

}