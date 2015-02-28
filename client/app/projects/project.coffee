'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.projects', 
    url: '/projects'
    template: '<div ui-view></div>'
    authenticate: true