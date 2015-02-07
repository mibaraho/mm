'use strict'


angular.module('mmApp').directive 'navCollapse', ->
  {
    restrict: 'A'
    link: ($scope, $el) ->
      $dropdowns = $el.find('ul').parent('li')
      $a = $dropdowns.children('a')
      $notDropdowns = $el.children('li').not($dropdowns)
      $notDropdownsLinks = $notDropdowns.children('a')
      app = angular.element('#mm')
      sidebar = angular.element('#sidebar')
      controls = angular.element('#controls')
      $dropdowns.addClass 'dropdown'
      $submenus = $dropdowns.find('ul >.dropdown')
      $submenus.addClass 'submenu'
      $a.append '<i class="fa fa-plus"></i>'
      $a.on 'click', (event) ->
        if app.hasClass('sidebar-sm') or app.hasClass('sidebar-xs') or app.hasClass('hz-menu')
          return false
        $this = angular.element(this)
        $parent = $this.parent('li')
        $openSubmenu = angular.element('.submenu.open')
        if !$parent.hasClass('submenu')
          $dropdowns.not($parent).removeClass('open').find('ul').slideUp()
        $openSubmenu.not($this.parents('.submenu')).removeClass('open').find('ul').slideUp()
        $parent.toggleClass('open').find('>ul').stop().slideToggle()
        event.preventDefault()
        return
      $dropdowns.on 'mouseenter', ->
        sidebar.addClass 'dropdown-open'
        controls.addClass 'dropdown-open'
        return
      $dropdowns.on 'mouseleave', ->
        sidebar.removeClass 'dropdown-open'
        controls.removeClass 'dropdown-open'
        return
      $notDropdownsLinks.on 'click', ->
        $dropdowns.removeClass('open').find('ul').slideUp()
        return
      $activeDropdown = angular.element('.dropdown>ul>.active').parent()
      $activeDropdown.css 'display', 'block'
      return

  }