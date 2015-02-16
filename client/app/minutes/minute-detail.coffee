'use strict'

angular.module 'mmApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main.minutes.minute-detail-summary',
    url: '/:id/summary'
    controller: 'MinuteDetailSummaryCtrl'
    templateUrl: 'app/minutes/minute-detail-summary.html'
    authenticate: true
  .state 'main.minutes.minute-detail-content',
    url: '/:id/content'
    controller: 'MinuteDetailContentCtrl'
    templateUrl: 'app/minutes/minute-detail-content.html'
    authenticate: true
  .state 'main.minutes.minute-detail-people',
    url: '/:id/people'
    controller: 'MinuteDetailPeopleCtrl'
    templateUrl: 'app/minutes/minute-detail-people.html'
    authenticate: true
  .state 'main.minutes.minute-detail-documents',
    url: '/:id/documents'
    controller: 'MinuteDetailDocumentsCtrl'
    templateUrl: 'app/minutes/minute-detail-documents.html'
    authenticate: true
