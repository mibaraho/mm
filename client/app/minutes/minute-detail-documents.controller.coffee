'use strict'

angular.module('mmApp').controller 'MinuteDetailDocumentsCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Meeting minutes'
    subtitle: 'Detail'