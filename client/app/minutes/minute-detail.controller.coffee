'use strict'

angular.module('mmApp').controller 'MinuteDetailCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Meeting minutes'
    subtitle: 'Detail'