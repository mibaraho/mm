'use strict'

angular.module('mmApp').controller 'ProjectTimelineCtrl',['$scope', '$http', 'ProjectService', ($scope, $http, ProjectService) ->
  $scope.page =
    title: 'Project timeline'
    subtitle: 'The project'
]