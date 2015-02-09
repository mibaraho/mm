'use strict'

angular.module('mmApp').controller 'RemindersListOthersCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Reminders'
    subtitle: 'For other people'