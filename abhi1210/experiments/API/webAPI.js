
$.ajax({
    url: "http://www.myapifilms.com/imdb?title=Batman&format=JSONP&aka=0&business=0&seasons=0&seasonYear=0&technical=0&filter=N&exactFilter=0&limit=1&lang=en-us&actors=N&biography=0&trailer=0&uniqueName=0&filmography=0&bornDied=0&starSign=0&actorActress=0&actorTrivia=0&movieTrivia=0&awards=0&moviePhotos=N&movieVideos=N",
    dataType: "jsonp",
    success: function (response) {
        // Log the response.
        console.log(response);

        //Show the response in text-area
        $('#responseText').val(JSON.stringify(response));

        // traverse through JSON object
        var content = "";
        for (var i = 0; i < response.length; i++) {
            content = "Countries:\n"
            content += response[i].countries;
            content += "\n\n";

            content += "Languages:\n"
            content += response[i].languages;
            content += "\n\n";

            content += "Plot:\n"
            content += response[i].plot;
            content += "\n\n";
        }
        $('#resultsText').val(content);
        
        
    }
            
});
