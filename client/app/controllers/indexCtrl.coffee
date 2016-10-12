'use strict'
$ = require 'jquery'
_ = require 'lodash'

class Controller
  constructor: ($rootScope, $scope, $state, ConstantsSvc)->

# ==============================
# Init
# ==============================
    # Default

    # if not admin go login
    # else go client page
    $state.go('clients')


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
