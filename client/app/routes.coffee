'use strict'

class Routers
  constructor: ($stateProvider, $locationProvider)->
    $stateProvider

# ==============================
# Init
# ==============================
      .state
        name: 'index'
        url: '/'
        templateUrl: '/assets/views/home.html'
        controller: 'HomeCtrl'


# ==============================
# 404
# ==============================
      .state
        name: '404'
        url: '{path:.*}'
        templateUrl: '/404.html'

# ==============================
# Html 5 - No hash
# ==============================
    $locationProvider
      .html5Mode true
      .hashPrefix '!'


# ==============================
# Return main app
# ==============================
module.exports = [
  "$stateProvider"
  "$locationProvider"
  Routers
]
