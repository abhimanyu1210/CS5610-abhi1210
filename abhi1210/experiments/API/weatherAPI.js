function getWeather() {
    var city = $("#cityInp").val();
    
    if (city == undefined || city == "")
        alert("Please Enter A Valid City");
    else {
        $.ajax({
            url: "http://api.openweathermap.org/data/2.5/weather?q=" + city,
            dataType: "json",
            success: function (weather) {
                var tr = $("#resultTr");
                var temp = weather.main.temp;
                temp = (temp - 273.15) * 1.8 + 32;


                var min_temp = weather.main.temp_min;
                min_temp = (min_temp - 273.15) * 1.8 + 32;

                var max_temp = weather.main.temp_max;
                max_temp = (max_temp - 273.15) * 1.8 + 32;


                tr.empty();
                $("<td>").append(city).appendTo(tr);
                $("<td>").append(weather.sys.country).appendTo(tr);
                $("<td>").append(temp).appendTo(tr);
                $("<td>").append(min_temp).appendTo(tr);
                $("<td>").append(max_temp).appendTo(tr);
                $("<td>").append(weather.wind.speed).appendTo(tr);
            }
        });
    }
};
