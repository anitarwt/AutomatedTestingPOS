angular.module("search",[]).controller("searchCtrl",function($scope,$http){
    $http.get("http://localhost:8000/api/tempatmakan")
    .then(function(response) {
        $scope.tempatmakan = response.data;
    });               
});

angular.module("carilokasi",[]).controller("lokasisendiri",function($scope,$http){
    
});