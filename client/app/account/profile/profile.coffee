'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.profile',
    url: '/profile/:id'
    templateUrl: 'app/account/profile/profile.html'
    controller: 'ProfileCtrl'
