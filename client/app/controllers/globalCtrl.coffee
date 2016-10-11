'use strict'


class Root
  constructor: ($rootScope, $state, $timeout)->

    console.log 'This is your Global Controller'

    $(window).scrollTop(0)

    console.log($('body'))
    test = _.map [1, 2, 3], (n)->
      return n * 3;
    console.log 'this is a test', test


# ==============================
# Return main app
# ==============================
module.exports = [
  '$rootScope'
  '$state'
  '$timeout'
  Root
]
