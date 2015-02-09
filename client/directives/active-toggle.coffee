'use strict'


angular.module('mmApp').directive 'activeToggle', ->
  {
    restrict: 'A'
    link: (scope, element, attr) ->
      element.on 'click', ->
        target = angular.element(attr.target) or Array(element)
        if element.hasClass('active')
          element.removeClass 'active'
          target.removeClass 'show'
        else
          element.addClass 'active'
          target.addClass 'show'
        return
      return

  }
