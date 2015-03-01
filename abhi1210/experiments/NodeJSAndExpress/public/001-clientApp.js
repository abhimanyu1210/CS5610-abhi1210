var app = angular.module("MovieNodeJSApp", []);

app.controller("MovieNodeJSController", function ($scope, $http) {
    /*
     * Function to Get all the list of movies
     */
    $http.get("/movies")
        .success(function (response) {
            $scope.moviesList = response;
        });

    /*
     * Function to Add movie to the list
     */
    $scope.add = function (movie) {
        $http.post("/movies", movie)
            .success(function (response) {
                $scope.moviesList = response;
            });
    };


    /*
     * Function to delete Movie from the list
     */
    $scope.remove = function (index) {
        $http.delete("/movies/" + index)
            .success(function (response) {
                $scope.moviesList = response;
            });
    };

    /*
     * Function to edit a movie in the list
     */
    $scope.selectedIndex = null;
    $scope.edit = function (index) {
        $scope.selectedIndex = index;
        $scope.movie = $scope.moviesList[index];
    };

    /*
     * Funciton to save edited data
     */
    $scope.update = function (movie) {
        
        $http.put("/movies/"+$scope.selectedIndex, movie)
            .success(function (response) {
                $scope.moviesList = response;
            });
    };
});