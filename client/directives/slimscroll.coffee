'use strict'


angular.module('mmApp').directive 'slimscroll', ->
  {
    restrict: 'A'
    link: ($scope, $el, $attr) ->
      option = {}

      refresh = ->
        if $attr.slimscroll
          option = $scope.$eval($attr.slimscroll)
        else if $attr.slimscrollOption
          option = $scope.$eval($attr.slimscrollOption)
        $el.slimscroll destroy: true
        $el.slimscroll option
        return

      refresh()
      collapseBtn = angular.element('.sidebar-collapse')
      $window = angular.element(window)
      sidebar = angular.element('#sidebar')

      checkScrollbar = ->
        refresh()
        if !angular.element('#sidebar .slimScrollBar').is(':visible')
          sidebar.addClass 'scroll-inactive'
        else
          sidebar.removeClass 'scroll-inactive'
        return

      collapseBtn.on 'click', ->
        checkScrollbar()
        return
      $window.resize ->
        checkScrollbar()
        return
      if $attr.slimscroll and !option.noWatch
        $scope.$watchCollection $attr.slimscroll, refresh
      if $attr.slimscrollWatch
        $scope.$watchCollection $attr.slimscrollWatch, refresh
      if $attr.slimssrollListenTo
        $scope.on $attr.slimscrollListenTo, refresh
      return

  }