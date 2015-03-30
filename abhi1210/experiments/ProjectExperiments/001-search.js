var app = angular.module("NutritionSearchApp", ["ngRoute"]);

app.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.
        when('/details/:mid', {
            templateUrl: 'views/001-NutrientDetails.html',
            controller:'ShowNutrientDetailsController'
        })
        .otherwise({
            redirectTo: '/'
        });

}]);

app.controller("ShowNutrientDetailsController", function ($scope, $http, $routeParams) {

    var free_base_api_key = "AIzaSyDpUvdddaA3s-S5d-iP4mlJo9W_QHrYIzk";
    $scope.mid = $routeParams.mid.replaceAll('+','/');

    var nutrition_url = "https://www.googleapis.com/freebase/v1/topic" + $scope.mid + "?key=" + free_base_api_key + "&limit=70";

    $scope.energyVal = null;
    $scope.nutrientInfoArr = [];

    $http.get(nutrition_url)
        .success(function (allNutritionResult) {

            if(allNutritionResult.property["/food/food/energy"] != undefined){
                $scope.energyVal = allNutritionResult.property["/food/food/energy"].values[0].text;
            }

            var nutrients = allNutritionResult.property["/food/food/nutrients"].values;
            
            if (nutrients != undefined) {
                for(var nutrient in nutrients){
                    var splittedNutrients = nutrients[nutrient].text.split("-");
                    $scope.nutrientInfoArr.push({
                        nutrient: splittedNutrients[0].trim(),
                        value: splittedNutrients[1].trim()
                    });
                }
            }
        });

});

app.controller("NutritionAppController", function ($scope, $http,$location) {
    var free_base_api_key = "AIzaSyDpUvdddaA3s-S5d-iP4mlJo9W_QHrYIzk";
    
    $scope.allSearchResults = [];
    

    $scope.fetchResults = function () {
        $location.url("/");
        var query = $("#searchInputId").val();
        var service_url = "https://www.googleapis.com/freebase/v1/search?query=" + query + "&key=" + free_base_api_key;


        $http.get(service_url)
            .success(function (allResults) {
                $scope.allSearchResults = [];
                var results = allResults.result;

                for (var i in results) {
                    var eachResult = results[i];
                    if (eachResult.notable != undefined) {
                        if (eachResult.notable.name.toLowerCase().indexOf("food") > -1
                                || eachResult.notable.name.toLowerCase().indexOf("bio") > -1){
                            $scope.allSearchResults.push({
                                id: eachResult.mid,
                                text: eachResult.name,
                                domain: eachResult.notable.name,
                                score: eachResult.score
                            });
                        }
                    }
                }
            });
    };

    String.prototype.replaceAll = function (target, replacement) {
        return this.split(target).join(replacement);
    };

    $scope.learnMore = function (selectedResult) {
        $scope.allSearchResults = [];
        var mid = selectedResult.id.replaceAll('/', '+');
        $('#tableId').effect("drop", 1000);
        $location.url("/details/" + mid);
    };
    

});

