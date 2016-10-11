'use strict'

class Directive
  constructor: ($rootScope, $timeout)->
    return obj =
      restrict: 'E'
      scope:
        string: '@'
        icon: '@'
      templateUrl: 'assets/views/directives/copyClipboard.html'
      link: (scope, elem, attr)->
        scope.press = false

        scope.copyClipboard = ->
          textarea = elem.find('textarea')[0]
          textarea.focus

          # Need to wait for focus to select text
          $timeout ->
            textarea.select()
            try
              successful = document.execCommand 'copy'
              msg = successful ? 'successful' : 'unsuccessful'

              # $rootScope.alert(false, 'Copying text ' + msg + ' - ' + scope.string, 'success')
            catch error
              $rootScope.alert(false, 'Sorry, Copying text icon did not work')



        scope.mouseEvent = (type)->
          switch type
            when 'mouseDown'
              scope.press = true
            when 'mouseUp'
              scope.press = false

module.exports = ['$rootScope','$timeout', Directive]
