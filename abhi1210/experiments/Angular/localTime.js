var app = angular.module("app", []);

var URL = "http://api.worldweatheronline.com/free/v1/tz.ashx?key=a44543c2c00b9558112c48c77e6fd7c075d33067&q=LOC&format=json";

app.controller("timeController", function ($scope, $http) {
    var list = [];
    $scope.list = list;
    $scope.search = function () {
        var loc = $scope.loc;
        var url = URL.replace("LOC", loc);

        $http.get(url).success(function (response) {
            var n = response.data.request[0].query;
            var t = response.data.time_zone[0].localtime;

            var hour = t.split(" ");
            hour = hour[1].split(":");
            hour = hour[0];

            var path = "";
            if (hour != null) {
                hour = parseInt(hour);
                if (hour < 18 && hour >= 6)
                    path = "../../../images/experiments/sunny.jpg"
                else
                    path = "../../../images/experiments/moon.jpg";
            }
            console.log(hour);
            console.log(path);

            $scope.list.push({
                name: n,
                time: t,
                icon: path
            });
        });
    };

    $scope.delete = function (place) {
        console.log(place);
        var index = $scope.list.indexOf(place);
        $scope.list.splice(index, 1);
    };
});