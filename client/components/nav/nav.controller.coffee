'use strict'

angular.module('mmApp').controller 'NavCtrl', ($scope) ->
  $scope.oneAtATime = false
  $scope.status =
    isFirstOpen: true
    isSecondOpen: true
    isThirdOpen: true
