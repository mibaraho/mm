'use strict'

angular.module 'mmApp'
.controller 'ForgotPasswordCtrl', ($scope, Auth, $location, $window) ->
  $scope.user = {}
  $scope.errors = {}
  $scope.register = (form) ->
    $scope.submitted = true
