'use strict'
require 'angular'
config = (new (require('./../config'))[0])

app = angular.module config.appName

# Index Page Controller
app.controller 'IndexCtrl', require('./indexCtrl')

# Admin Login Page Controller
app.controller 'adminloginCtrl', require('./adminloginCtrl')

#Client selection page controller
app.controller 'clientselectionCtrl', require('./clientselectionCtrl')

#contact page controller
app.controller 'contactCtrl', require('./contactCtrl')

#privacy policy page controller
app.controller 'privacypolicyCtrl', require('./privacypolicyCtrl')

#terms of service page controller
app.controller 'termsofserviceCtrl', require('./termsofserviceCtrl.coffee')

#project display page controller
app.controller 'projectdisplayCtrl', require('./projectdisplayCtrl')

#upload page controller
app.controller 'uploadCtrl', require('./uploadCtrl')
