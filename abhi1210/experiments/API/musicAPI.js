
$(document).ready(function () {
    $("#resultsTab").hide();
});


function getSongs() {
    var userInp = $("#songInp").val();

    if (userInp == undefined || userInp == "") {
        alert("Invalid Input!");
    } else {
        var myurl = "http://ws.audioscrobbler.com/2.0/?method=track.search&track=" + userInp + "&api_key=644ef0c3c270e9b916642aa04c580b7c&format=json";

        $.ajax({
            url: myurl,
            dataType: "jsonp",
            success: function (songs) {
                $("#resultsTab").show();

                var length = songs['results']['trackmatches']['track'].length;
                
                var tbody = $("#tbody");
                tbody.empty();
                for (var i = 0; i < length; i++) {
                    var tr = $("<tr>");
                    
                    // get album cover
                    if ((typeof (songs['results']['trackmatches']['track'][i]['image']) != "undefined")) {
                        var cover_length = songs['results']['trackmatches']['track'][i]['image'].length;
                        var cover = songs['results']['trackmatches']['track'][i]['image'][cover_length - 1]['#text'];
                    } else {
                        cover = "../../../images/homepage/backIcon.jpg";
                    }
                    var image = $("<img>").attr("src", cover);
                    $("<td>").append(image).appendTo(tr);


                    // get song name
                    var song = songs['results']['trackmatches']['track'][i]['name'];
                    $("<td>").append(song).appendTo(tr);

                    // get artist name
                    var artist = songs['results']['trackmatches']['track'][i]['artist'];
                    $("<td>").append(artist).appendTo(tr);

                    // get link to song
                    var linkToSong = songs['results']['trackmatches']['track'][i]['url'];
                    
                    $("<td>").append($('<a>', {text: 'Listen',href: linkToSong})).appendTo(tr);

                    tr.appendTo(tbody);
                }
            }
        });
    }
};