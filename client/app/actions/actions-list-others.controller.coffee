'use strict'

angular.module('mmApp').controller 'ActionsListOthersCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Actions'
    subtitle: 'For other people'