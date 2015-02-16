'use strict'

angular.module('mmApp').controller 'MinuteDetailSummaryCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Meeting minutes'
    subtitle: 'Detail'