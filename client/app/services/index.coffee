'use strict'
require 'angular'
config = (new (require('./../config'))[0])
app = angular.module config.appName

# Global
app.service 'ConstantsSvc', require('./contstantsSvc')
app.service 'GlobalSvc', require('./globalSvc')
