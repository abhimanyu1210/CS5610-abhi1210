var app = angular.module("NutritionSearchApp", []);

app.controller("NutritionAppController", function ($scope, $http) {
    var free_base_api_key = "AIzaSyDpUvdddaA3s-S5d-iP4mlJo9W_QHrYIzk";
    
    $scope.allSearchResults = [];

    $scope.fetchResults = function () {
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
                            || eachResult.notable.name.toLowerCase().indexOf("bio") > -1)
                        $scope.allSearchResults.push({
                            id: eachResult.mid,
                            text: eachResult.name,
                            domain: eachResult.notable.name,
                            score: eachResult.score
                        });
                    }
                }
            });
    };
    

});

