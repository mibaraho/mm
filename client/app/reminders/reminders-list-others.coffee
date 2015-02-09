'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.reminders.list-others',
    url: '/others'
    controller: 'RemindersListOthersCtrl'
    templateUrl: 'app/reminders/reminders.html'