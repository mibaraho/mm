'use strict'

angular.module('mmApp').controller 'RemindersListMineCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Reminders'
    subtitle: 'My reminders'