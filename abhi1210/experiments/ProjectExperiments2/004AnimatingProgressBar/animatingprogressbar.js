var app = angular.module("AnimatingProgressBarApp", []);

app.controller("AnimatingProgressBarController", function ($scope) {
    /*Progress Bar*/
    var progress = function (percent) {
        var progressBarWidth = percent * $('#mycalorieprogress').width() / 100;
        $('#progressBar')
            .animate({ width: progressBarWidth }, 1500)
            .html("&nbsp;");
    }
    
    progress(0);
    
    $scope.caloriesConsumed = 0;
    $scope.targetCalories = 0;
    $scope.updateProgressBar = function (caloriesConsumed, targetCalories) {
        $scope.caloriesConsumed = caloriesConsumed;
        $scope.targetCalories = targetCalories;
        progress((caloriesConsumed / targetCalories) * 100);
    };
    
    $(window).resize(function () {
        if (this.resizeTO) clearTimeout(this.resizeTO);
        this.resizeTO = setTimeout(function () {
            $(this).trigger('resizeEnd');
        }, 500);
    });

    $(window).bind('resizeEnd', function () {
        // progressBar resized
        progress(($scope.caloriesConsumed / $scope.targetCalories) * 100);
    });


});