'use strict'
require 'angular'
require 'angular-ui-router'
require 'angular-ui-bootstrap'
require 'ui-select'
require 'angular-sanitize'

config = (new (require('./config'))[0])
routers = require './routes'
globalCtrl = require './controllers/globalCtrl'

# $ = require 'jquery'
# window.$ = $
# window.jQuery = $
# require './../static/assets/libs/bootstrap/dist/js/bootstrap.min.js'

# =================================
# Init
# =================================
app = angular.module config.appName, [
  'ui.router'
  'ui.bootstrap'
  'ui.select'
  'ngSanitize'
]

app.config routers
app.run globalCtrl

# =================================
# Require after the App is init
# =================================
require './controllers/index'
require './services/index'
require './directives/index'
require './filters/index'
