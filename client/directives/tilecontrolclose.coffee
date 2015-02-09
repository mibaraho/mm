'use strict'

angular.module('mmApp').directive 'tileControlClose', ->
  {
    restrict: 'A'
    link: (scope, element) ->
      tile = element.parents('.tile')
      element.on 'click', ->
        tile.addClass('closed').fadeOut()
  }
