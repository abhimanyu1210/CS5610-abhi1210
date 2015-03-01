var app = angular.module("MovieNodeJSApp", []);

app.controller("MovieNodeJSController", function ($scope, $http) {

    $http.get("/movies")
        .success(function (response) {
            $scope.moviesList = response;
        });


    $scope.remove = function (index) {
        $http.delete("/movies/" + index)
            .success(function (response) {
                $scope.moviesList = response;
            });
    };
});