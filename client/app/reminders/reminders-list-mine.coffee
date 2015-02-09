'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.reminders.list-mine',
    url: '/mine'
    controller: 'RemindersListMineCtrl'
    templateUrl: 'app/reminders/reminders.html'