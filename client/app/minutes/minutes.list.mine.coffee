'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.minutes.list-mine',
    url: '/mine'
    controller: 'MinutesListMineCtrl'
    templateUrl: 'app/minutes/minutes.html'