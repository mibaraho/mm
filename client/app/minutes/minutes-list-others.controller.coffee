'use strict'

angular.module('mmApp').controller 'MinutesListOthersCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Meeting minutes'
    subtitle: 'Authored by other people'