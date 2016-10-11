'use strict'
require 'angular'
config = (new (require('./../config'))[0])

app = angular.module config.appName
app.directive 'copyClipboard', require('./copyClipboard')
