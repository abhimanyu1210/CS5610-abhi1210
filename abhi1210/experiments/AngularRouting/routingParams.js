var routingParams = angular.module('RoutingParams', ['ngRoute']);

routingParams.config(['$routeProvider',
  function ($routeProvider) {
      $routeProvider.
        when('/:phoneId', {
            templateUrl: 'extras/phoneDetails.html',
            controller: 'ShowPhoneDetailController'
        });
  }]);


routingParams.controller('ShowPhoneDetailController', function ($scope, $routeParams) {
    $scope.phoneId = $routeParams.phoneId;
});