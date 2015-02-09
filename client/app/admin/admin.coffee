'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state('main.admin', {
    url: '/admin',
    template: '<div ui-view></div>'
  })