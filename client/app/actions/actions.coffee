'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state('main.actions', {
    url: '/a',
    template: '<div ui-view></div>'
  })