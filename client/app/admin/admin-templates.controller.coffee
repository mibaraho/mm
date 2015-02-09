'use strict'

angular.module('mmApp').controller 'AdminTemplatesCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Templates'
    subtitle: 'Have a view of your ...'