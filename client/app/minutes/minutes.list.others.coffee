'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.minutes.list-others',
    url: '/others'
    controller: 'MinutesListOthersCtrl'
    templateUrl: 'app/minutes/minutes.html'