'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.admin.users',
    url: '/users'
    templateUrl: 'app/admin/admin.html'
    controller: 'AdminUsersCtrl'
