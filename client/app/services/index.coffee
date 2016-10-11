'use strict'
require 'angular'
config = (new (require('./../config'))[0])
app = angular.module config.appName

# Global
app.service 'ConstantsSvc', require('./constantsSvc')
app.service 'GlobalSvc', require('./globalSvc')
