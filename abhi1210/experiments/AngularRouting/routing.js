var app = angular.module('IntroToAngularRouting', ['ngRoute']);

app.config(['$routeProvider',
    function ($routeProvider) {
        $routeProvider.
            when('/page1', {
                templateUrl: 'extras/page1.html'
            }).
            when('/page2', {
                templateUrl: 'extras/page2.html'
            }).
            when('/page3', {
                templateUrl: 'extras/page3.html'
            }).
            otherwise({
                redirectTo: '/page1'
            });
    }]);