'use strict'

angular.module('mmApp').controller 'MinutesListMineCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Meeting minutes'
    subtitle: 'Authored by myself'