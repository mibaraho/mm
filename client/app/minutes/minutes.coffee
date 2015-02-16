'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.minutes', 
    url: '/minutes'
    template: '<div ui-view></div>'
    authenticate: true