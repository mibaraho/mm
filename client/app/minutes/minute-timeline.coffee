'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.minutes.timeline',
    url: '/timeline'
    controller: 'MinuteTimelineCtrl'
    templateUrl: 'app/minutes/minute-timeline.html'
    authenticate: true