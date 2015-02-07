var main = function () {
    var openMenu = "images/homepage/menuIcon.jpg";
    var closeMenu = "images/homepage/backIcon.jpg"
    
    document.getElementById('menuImg').src = openMenu;

    /*Function to toggle Menu Image*/
    $('.menuIcon')
        .click(function () {
            if (parseInt(document.getElementById('sideMenuId').offsetLeft, 10) < 0) {
                $('#sideMenuId').animate({ left: '0%' }, 400);
                $('#mainPageId').animate({ left: '25%' }, 400);
                document.getElementById('menuImg').src = closeMenu;
            } else {
                $('#sideMenuId').animate({ left: '-25%' }, 400);
                $('#mainPageId').animate({ left: '0%' }, 400);
                document.getElementById('menuImg').src = openMenu;
            }
        });

    /* direct link effects */
    $('#expLink')
        .hover(function () {
            $("#expLink").effect("highlight", "slow");
        });
    $('#projectLink')
        .hover(function () {
            $("#projectLink").effect("highlight", "slow");
        });
    $('#docsLink')
        .hover(function () {
            $("#docsLink").effect("highlight", "slow");
        });

    /* Slideshow */
    $('.textDiv > p:gt(0)').hide();
    setInterval(function () {
        $('.textDiv > p:first')
          .fadeOut(3000)
          .next()
          .fadeIn(3000)
          .end()
          .appendTo('.textDiv');
    }, 7000);

};


$(document).ready(main);