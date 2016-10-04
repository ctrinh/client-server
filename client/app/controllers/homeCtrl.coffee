'use strict'
$ = require 'jquery'
_ = require 'lodash'

class Controller
  constructor: ($rootScope, $scope, $state, ConstantsSvc)->

# ==============================
# Init
# ==============================
    # Default
    $(window).scrollTop(0)
    console.log 'This is your Home controller'

    console.log ConstantsSvc


# ==============================
# Return main controllers
# ==============================
module.exports = [
  '$rootScope'
  '$scope'
  '$state'
  'ConstantsSvc'
  Controller
]
