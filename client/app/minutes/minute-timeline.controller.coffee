'use strict'

angular.module('mmApp').controller 'MinuteTimelineCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Project timeline'
    subtitle: 'The project'