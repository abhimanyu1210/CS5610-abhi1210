var app = angular.module("SoccerApp", []);


app.controller("SoccerController", function ($scope) {

    var soccerData = [{ League: "English Premier League", Club: "Chelsea", Founded: "1869", UEFAStandings: "1", Stadium: "Stamford Bridge" },
                      { League: "LiGA BBVV", Club: "Barcelona FC", Founded: "1903", UEFAStandings: "2", Stadium: "Camp Nou" },
                      { League: "Seria A", Club: "AC Milan", Founded: "1830", UEFAStandings: "19", Stadium: "San Siro" },
                      { League: "English Premier League", Club: "Manchester United", Founded: "1709", UEFAStandings: "7", Stadium: "Old Trafford" },
                      { League: "Portuguese League", Club: "FC Porto", Founded: "1951", UEFAStandings: "27", Stadium: "Estadio Da Dragao" }];


    $scope.soccerData = soccerData;

    $scope.removeClub = function (club) {
        var index = $scope.soccerData.indexOf(club);
        $scope.soccerData.splice(index,1);
    }

    $scope.addClub = function () {
        var newClub = { League: $scope.soccer.League, Club: $scope.soccer.Club, Founded: $scope.soccer.Founded, UEFAStandings: $scope.soccer.UEFAStandings, Stadium: $scope.soccer.Stadium };
        $scope.soccerData.push(newClub);
    }
});


