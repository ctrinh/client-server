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
# admin login
# ==============================
    .state
        name: 'adminlogin'
        url: '/adminlogin'
        templateUrl: '/assets/views/adminlogin.html'
        controller: 'adminloginCtrl'



# ==============================
# Contact
# ==============================
      .state
          name: 'contact'
          url: '/contact'
          templateUrl: '/assets/views/contact.html'
          controller: 'contactCtrl'

# ==============================
# Privacy Policy
# ==============================
      .state
          name: 'privacyPolicy'
          url: '/privacyPolicy'
          templateUrl: '/assets/views/privacypolicy.html'
          controller: 'privacypolicyCtrl'

# ==============================
# Terms of Service
# ==============================
    .state
        name: 'termsofservice'
        url: '/termsofservice'
        templateUrl: '/assets/views/termsofservice.html'
        controller: 'termsofserviceCtrl'

# ==============================
# Project Display
# ==============================
      .state
          name: 'project'
          url: '/project'
          templateUrl: '/assets/views/projectdisplay.html'
          controller: 'HomeCtrl'


# ==============================
# Project Display for clients
# ==============================
    .state
        name: 'clientProjectView'
        # domain.com/ab/k2h345kjh235l4k?type=web
        url: '/sh/:{id}(0,2)/:{hash}?type'
        templateUrl: '/assets/views/projectView.html'
        controller: 'HomeCtrl'

        dropbox.com/sh/h432ij5h4kl23/hjk543h2lkhj345?type

# ==============================
# Project Display for admin
# ==============================
    .state
        name: 'adminProjectView'
        # domain.com/1P/zoo_3000_test/v1
        url: '/:{client}/:{projectname}/:{projectversion}'
        templateUrl: '/assets/views/projectView.html'
        controller: 'HomeCtrl'



# ==============================
# Client Selection
# ==============================
      .state
          name: 'clientselection'
          url: '/clientselection'
          templateUrl: '/assets/views/clientselection.html'
          controller: 'clientselectionCtrl'

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
