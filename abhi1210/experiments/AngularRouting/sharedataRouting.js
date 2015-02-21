var app = angular.module('AngularRoutingFoodBuffet', ['ngRoute']);

app.config(['$routeProvider',
    function ($routeProvider) {
        $routeProvider.
            when('/Menu', {
                templateUrl: 'extras/Menu.html',
                controller: 'MenuController'
            }).
            when('/Plate', {
                templateUrl: 'extras/Plate.html',
                controller: 'PlateController'
            }).
            otherwise({
                redirectTo: '/Menu'
            });
    }]);

app.controller("MenuController", function ($scope, BuffetService) {
    $scope.buffet = BuffetService.getFood();

    $scope.addFoodItem = function (item) {
        BuffetService.addItem(item);
    }
});

app.controller("PlateController", function ($scope, BuffetService) {
    $scope.fooditems = BuffetService.getItems();

    $scope.removeFood = function (item) {
        BuffetService.removeItem(item);
    }
});
