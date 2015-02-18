'use strict'

angular.module('mmApp').controller 'MinuteDetailSummaryCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Meeting minutes'
    subtitle: 'Detail'
  $scope.mainTopic= 'In the meeting we talked about the project status, issues, next steps and in setting the expectations about the release date.'
  $scope.location = '440 North Wolfe Road, Sunnyvale CA, 94085'
  $scope.locationDescription = "Client's office"
  $scope.ourTasks =
    percent: 65
    options:
      animate:
        duration: 3000
        enabled: true
      barColor: '#1693A5'
      lineCap: 'round'
      size: 180
      lineWidth: 5
  $scope.theirTasks =
    percent: 30
    options:
      animate:
         duration: 3000
         enabled: true
      barColor: '#A40778'
      scaleColor: false
      lineCap: 'round'
      size: 180
      lineWidth: 5
