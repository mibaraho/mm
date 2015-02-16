'use strict'

angular.module('mmApp').controller 'MinuteDetailPeopleCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Meeting minutes'
    subtitle: 'Detail'