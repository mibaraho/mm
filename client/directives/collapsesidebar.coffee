'use strict'

angular.module('mmApp').directive 'collapseSidebar', ($rootScope) ->
  {
    restrict: 'A'
    link: (scope, element) ->
      app = angular.element('#mm')
      $window = angular.element(window)
      width = $window.width()

      removeRipple = ->
        angular.element('#sidebar').find('.ink').remove()
        return

      collapse = ->
        width = $window.width()
        if width < 992
          app.addClass 'sidebar-sm'
        else
          app.removeClass 'sidebar-sm sidebar-xs'
        if width < 768
          app.removeClass('sidebar-sm').addClass 'sidebar-xs'
        else if width > 992
          app.removeClass 'sidebar-sm sidebar-xs'
        else
          app.removeClass('sidebar-xs').addClass 'sidebar-sm'
        if app.hasClass('sidebar-sm-forced')
          app.addClass 'sidebar-sm'
        if app.hasClass('sidebar-xs-forced')
          app.addClass 'sidebar-xs'
        return

      collapse()
      $window.resize ->
        if width != $window.width()
          t = undefined
          clearTimeout t
          t = setTimeout(collapse, 300)
          removeRipple()
        return
      element.on 'click', (e) ->
        if app.hasClass('sidebar-sm')
          app.removeClass('sidebar-sm').addClass 'sidebar-xs'
        else if app.hasClass('sidebar-xs')
          app.removeClass 'sidebar-xs'
        else
          app.addClass 'sidebar-sm'
        app.removeClass 'sidebar-sm-forced sidebar-xs-forced'
        app.parent().removeClass 'sidebar-sm sidebar-xs'
        removeRipple()
        e.preventDefault()
        return
      return

  }