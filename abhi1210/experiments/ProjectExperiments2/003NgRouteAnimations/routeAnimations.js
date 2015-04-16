var app = angular.module("RouteAnimationApp", ["ngRoute", "ngAnimate"]);

app.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.
        when('/', {
            templateUrl: "Page1.html",
            controller: "RouteAnimationController"
        })
        .when('/page2', {
            templateUrl: "Page2.html",
            controller: "RouteAnimationController"
        })
}]);

app.controller("RouteAnimationController", function ($scope,$location) {

    $scope.nextPage = function () {
        $location.url('/page2');
    }

    $scope.prevPage = function () {
        $location.url('/');
    }
});
