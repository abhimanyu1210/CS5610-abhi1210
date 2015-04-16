$(function () {
    $(window).scroll(function () {
        // set distance user needs to scroll before we fadeIn navbar
        if ($(document).scrollTop() > 100) {
            $('#myNavBar').hide('slide', 500);
        } else {
            $('#myNavBar').show('slide', 500);
        }
    });
});