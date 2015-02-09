'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.actions.list-mine',
    url: '/mine'
    controller: 'ActionsListMineCtrl'
    templateUrl: 'app/actions/actions.html'