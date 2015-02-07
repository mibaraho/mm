'use strict'

angular.module('mmApp').controller 'ActionsListMineCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Actions'
    subtitle: 'My actions'