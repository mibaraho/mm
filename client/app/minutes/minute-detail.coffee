'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.minutes.minute',
    url: '/:id'
    controller: 'MinuteDetailCtrl'
    templateUrl: 'app/minutes/minute-detail.html'
    authenticate: true