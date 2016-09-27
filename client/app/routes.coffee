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
# Contact
# ==============================
      .state
          name: 'contact'
          url: '/contact'
          templateUrl: '/assets/views/contact.html'
          controller: 'HomeCtrl'

# ==============================
# Privacy Policy
# ==============================
      .state
          name: 'privacyPolicy'
          url: '/privacyPolicy'
          templateUrl: '/assets/views/privacypolicy.html'
          controller: 'HomeCtrl'

# ==============================
# Terms of Service
# ==============================
    .state
        name: 'termsofservice'
        url: '/termsofservice'
        templateUrl: '/assets/views/termsofservice.html'
        controller: 'HomeCtrl'

# ==============================
# Project
# ==============================
      .state
          name: 'project'
          url: '/project'
          templateUrl: '/assets/views/project.html'
          controller: 'HomeCtrl'

# ==============================
# Project Display
# ==============================
      .state
          name: 'projectDisplay'
          url: '/projectDisplay'
          templateUrl: '/assets/views/projectdisplay.html'
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
