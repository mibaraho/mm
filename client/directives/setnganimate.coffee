'use strict'


angular.module('mmApp').directive 'setNgAnimate', [
  '$animate'
  ($animate) ->
    { link: ($scope, $element, $attrs) ->
      $scope.$watch (->
        $scope.$eval $attrs.setNgAnimate, $scope
      ), (valnew) ->
        console.log 'Directive animation Enabled: ' + valnew
        $animate.enabled !!valnew, $element
        return
      return
 }
]