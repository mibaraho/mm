'use strict'

angular.module 'mmApp'
.controller 'MainCtrl', ($scope) ->
  $scope.main =
    title: 'MM'
    settings:
      navbarHeaderColor: 'scheme-default'
      sidebarColor: 'scheme-default'
      brandingColor: 'scheme-default'
      activeColor: 'default-scheme-color'
      headerFixed: true
      asideFixed: true
      rightbarShow: false

  $scope.caca = ->
    alert('asdf')
