'use strict'

angular.module('mmApp').controller 'MinuteDetailContentCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Meeting minutes'
    subtitle: 'Detail'