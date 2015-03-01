var app = angular.module("StaticMessageApp", []);

app.controller("StaticMessageController", function ($scope, $http) {
    $scope.serverMessage = null;

    $scope.callServer = function () {
        $http.get('/callServer')
            .success(function (response) {
                $scope.serverMessage = response;
            });
    };
    

});