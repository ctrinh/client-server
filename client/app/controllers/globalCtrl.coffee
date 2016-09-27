'use strict'

$ = require 'jquery'
_ = require 'lodash'

class Root
  constructor: ($rootScope, $state, $timeout)->

    console.log 'This is your Global Controller'

# ==============================
# Return main app
# ==============================
module.exports = [
  '$rootScope'
  '$state'
  '$timeout'
  Root
]
