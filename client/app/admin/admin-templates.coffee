'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.admin.templates',
    url: '/templates'
    templateUrl: 'app/admin/admin.html'
    controller: 'AdminTemplatesCtrl'
