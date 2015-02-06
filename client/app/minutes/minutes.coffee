'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state('main.minutes', {
    url: '/m',
    template: '<div ui-view></div>'
  })