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
    topic: 'Meeting with the two teams to decide the next steps...'
    date: '2014-11-11'
  $scope.open = ($event) ->
    $event.preventDefault()
    $event.stopPropagation()
    $scope.opened = true
  #Readonly
  $scope.disabled = (date, mode) ->
    mode == 'day' and (date.getDay() >=0)