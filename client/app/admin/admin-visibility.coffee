'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.admin.visibility',
    url: '/visibility'
    templateUrl: 'app/admin/admin.html'
    controller: 'AdminVisibilityCtrl'
