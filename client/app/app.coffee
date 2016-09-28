'use strict'
require 'angular'
require 'angular-ui-router'
require 'angular-ui-bootstrap'
require 'ui-select'
require 'angular-sanitize'
# Need to initialize bootstrap js when page load
require 'bootstrap'


config = (new (require('./config'))[0])
routers = require './routes'
globalCtrl = require './controllers/globalCtrl'

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
