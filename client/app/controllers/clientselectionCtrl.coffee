'use strict'
$ = require 'jquery'
_ = require 'lodash'

class Controller
  constructor: ($rootScope, $scope, $state)->

# ==============================
# Init
# ==============================
# Default
    $(window).scrollTop(0)
    console.log 'This is the Client Selection controller'


# ==============================
# Return main controllers
# ==============================
module.exports = [
  '$rootScope'
  '$scope'
  '$state'
  Controller
]