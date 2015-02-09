'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.actions.list-others',
    url: '/others'
    controller: 'ActionsListOthersCtrl'
    templateUrl: 'app/actions/actions.html'