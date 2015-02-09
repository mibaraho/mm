'use strict'

angular.module('mmApp').controller 'MinutesListMineCtrl', ($scope, $http) ->
  $scope.page =
    title: 'Meeting minutes'
    subtitle: 'Authored by myself'
  $scope.meetingMinutes = []
  $scope.meetingMinute = 
    name: 'Work meeting for new idea'
    location: 'Clients office'
    info: 'This meeting talks about how can we get more done in less time...'
