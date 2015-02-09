'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main',
    abstract: true
    url: ''
    templateUrl: 'app/main/main.html'
    controller: 'MainCtrl'
