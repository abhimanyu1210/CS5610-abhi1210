app = angular.module("ToDoApp", []);
app.controller("TodoController", function ($scope) {

    $scope.tasks = [];
    $scope.todoMessage = "";
    $scope.charactersLeft = function () {
        if ($scope.todoMessage.length > 100)
            $scope.todoMessage = $scope.todoMessage.substring(0, 100);

        var charactersRemaining = 100 - $scope.todoMessage.length;
        return charactersRemaining;
    };
    $scope.clearTask = function () {
        if ($scope.todoMessage == '')
            alert("Nothing To Clear!!");
        else
            $scope.todoMessage = "";
    };  
    $scope.addTask = function () {
        $scope.today = new Date();
        if ($scope.todoMessage == '') {
            alert("Enter A Task To Add");
        } else {
            var task = {
                title: $scope.todoMessage,
                date: $scope.today
            }
            $scope.tasks.push(task);
        }
        
    };
});