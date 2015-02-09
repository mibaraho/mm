'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.dashboard',
    url: '/dashboard'
    controller: 'DashboardCtrl'
    templateUrl: 'app/dashboard/dashboard.html'
    authenticate: true