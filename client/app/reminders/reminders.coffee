'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state('main.reminders', {
    url: '/r',
    template: '<div ui-view></div>'
  })