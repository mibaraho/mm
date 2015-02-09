'use strict'

angular.module('mmApp').controller 'AdminAccountCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Account'
    subtitle: 'Have a view of your ...'