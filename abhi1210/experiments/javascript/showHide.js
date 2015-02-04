var main = function () {

    $('#toggle')
		.click(
			function () {
			    if (parseInt(document.getElementById('sideMenu').offsetLeft, 10) < 0) {
			        $('.sideMenu').animate({ left: '0px' }, 400);
			        $('body').animate({ left: '285px' }, 400);
			    }
			    else {
			        $('.sideMenu').animate({ left: '-285px' }, 400);
			        $('body').animate({ left: '0px' }, 400);
			    }
			});

};


$(document).ready(main);