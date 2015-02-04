var imageArr = new Array();
var i = 0;
//Images:
imageArr[0] = '../../../images/homepage/homeBackground.jpg';
imageArr[1] = '../../../images/homepage/homeBackground2.jpg';
imageArr[2] = '../../../images/homepage/experimentsback.jpg';
imageArr[3] = '../../../images/homepage/experimentsback.jpg';
imageArr[4] = '../../../images/homepage/sideMenu.jpg';
imageArr[5] = '../../../images/responsiveImagesTest/1.jpg';


function slideshow() {
    document.getElementById('myImage').src = imageArr[i];


    if (i < imageArr.length - 1)
        i++;
    else
        i = 0;

    setTimeout("slideshow()", 2000);
}


$(document).ready(slideshow);