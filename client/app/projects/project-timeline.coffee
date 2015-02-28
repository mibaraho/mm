'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.projects.timeline',
    url: '/timeline'
    controller: 'ProjectTimelineCtrl'
    templateUrl: 'app/projects/project-timeline.html'
    authenticate: true