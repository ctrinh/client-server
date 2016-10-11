'use strict'
require 'angular'
config = (new (require('./../config'))[0])

app = angular.module config.appName

# Index Page
app.controller 'HomeCtrl', require('./homeCtrl')

