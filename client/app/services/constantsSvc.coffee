'use strict'

class Service
  constructor: ()->
    return obj =
      storage: 'local'
      apiVersion: '/api/v1'
      clients: ['google', 'yahoo', 'ge']

# ==============================
# Return main services
# ==============================
module.exports = [
  Service
]
