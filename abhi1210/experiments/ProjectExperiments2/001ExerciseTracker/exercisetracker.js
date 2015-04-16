var app = angular.module("ExerciseTracker", []);


app.controller('ExerciseTrackerController', function ($scope, $http, $location, $rootScope) {
    $scope.AllExercises = [];

    $http({ method: 'GET', url: 'exer.csv' })
        .success(function (data) {
            var arr = data.split('\n');
            var allExerArr = [];
            for (var i in arr) {
                var splittedArr = arr[i].split(',');
                var exerObj = { exername: $.trim(splittedArr[0]), exervalue: $.trim(splittedArr[1]) };
                $scope.AllExercises.push(exerObj);
            }
        });
    

    $scope.Err = null;
    $scope.calculateCalories = function () {
        if (validations()) {
            $scope.CaloriesBurned = $scope.chosenExer * $scope.minutes * (60 * 2.2);
            animateNumber(0, Math.floor($scope.CaloriesBurned), 100);
        }
    }

    var animateNumber = function animateValue(start, end, duration) {
        var range = end - start;
        var current = start;
        var increment = end > start ? 1 : -1;
        var stepTime = Math.abs(Math.floor(duration / range));

        var timer = setInterval(function () {
            current += increment;
            $("#calsBurned").text(current);
            if (current == end) {
                clearInterval(timer);
            }
        }, stepTime);
    }

    var validations = function () {
        if (!$scope.chosenExer) {
            $scope.Err = "Please choose a work out type from the list";
            return false;
        }

        if (!$scope.minutes) {
            $scope.Err = "Length of Work-out cannot be left blank";
            return false;
        }

        return true;
    }
});