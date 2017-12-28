var search = angular.module("search",[]);
employeeApp.controller("searchCtrl",function($scope,$http){
    $http.get("http://localhost:8000/api/tempatmakan")
    .then(function(response) {
        $scope.tempatmakan = response.data;
    });               
});