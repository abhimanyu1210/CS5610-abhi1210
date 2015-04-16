var app = angular.module("CalorieTracker", ["ngRoute"]);

app.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.
        when('/', {
            templateUrl: 'searchpage.html',
            controller: 'CalorieTrackerController'
        })
        .when('/mealDetails/:mealId', {
            templateUrl: 'MealDetails.html',
            controller: 'MealDetailController',
        })
}]);

app.controller('CalorieTrackerController', function ($scope, $http, $rootScope, $location) {
    
    $scope.MealResults = [];
    $scope.Err = null;
    $scope.searchFoodItem = function (searchInput) {
        console.log(searchInput);
        if(searchInput){
            var apiUrl = "http://api.yummly.com/v1/api/recipes?_app_id=ab22128d&_app_key=26b329f441849cb2562fb667c8b5c97f&q=" + searchInput + "&&maxResult=80";
            
            $http.get(apiUrl)
                .success(function (searchResults) {
                    console.log(searchResults);
                    $scope.MealResults = searchResults.matches;
                    if ($scope.MealResults.length > 0) {
                        $scope.Err = null;
                        $(".searchResultsContainer").toggle('highlight', 2000);
                    } else {
                        $scope.Err = "OOPS! No matches found for your search. Please try again";
                    }
                });
        }
    };
});