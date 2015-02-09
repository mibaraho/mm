'use strict'

angular.module('mmApp').controller 'DashboardCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Dashboard'
    subtitle: 'Have a view of your ...'