app.controller('MealDetailController', function ($scope, $location, $http,$routeParams) {

    window.scrollTo(0,0);

    $scope.Meal = {};

    var apiDetailsUrl = "http://api.yummly.com/v1/api/recipe/" + $routeParams.mealId + "?_app_id=ab22128d&_app_key=26b329f441849cb2562fb667c8b5c97f";
    $http.get(apiDetailsUrl)
        .success(function (mealDetails) {
                            
            var allNutrients = mealDetails.nutritionEstimates;

            var cals = 0;
            for (var i in allNutrients) {
                if (allNutrients[i].attribute === "ENERC_KCAL") {
                    cals = Math.floor(allNutrients[i].value);
                    break;
                }
            }

            $scope.Meal = {
                mealExternalId:$routeParams.mealId,
                mealName: mealDetails.name,
                image: mealDetails.images[0].hostedLargeUrl,
                contents: mealDetails.ingredientLines,
                calories: cals
            };
        });

    $scope.backtosearch = function () {
        $location.url('/');
    }
});