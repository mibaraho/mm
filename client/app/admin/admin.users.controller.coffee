'use strict'

angular.module('mmApp').controller 'AdminUsersCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Users'
    subtitle: 'Have a view of your ...'