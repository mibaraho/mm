'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.admin.account',
    url: '/account'
    templateUrl: 'app/admin/admin.html'
    controller: 'AdminAccountCtrl'
