'use strict'

class Service
  constructor: ($state)->
    return obj =
      storage: 'local'
      apiVersion: '/api/v1'
      clients:
        yahoo:
          name: "yahoo"
          modifieddate: ""
          image: ""
        google:
          modifieddate: ""
          image: ""
        ge:
          modifieddate: ""
          image: ""
#      clientsData: (clientName)->
#        obj = http
#          get
#          header token
#          url /client/
#          # pramas or data
#
#        obj.error (status, response)->
#          if status is 404
#            $state.go('index')
#
#        return obj


# ==============================
# Return main services
# ==============================
module.exports = [
  '$state'
  Service
]
