'use strict'

angular.module('mmApp').controller 'AdminVisibilityCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Visibility'
    subtitle: 'Have a view of your ...'