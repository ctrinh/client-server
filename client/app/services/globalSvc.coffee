'use strict'

class Service
  constructor: ($rootScope, $state)->
    return obj =
      storage:
        get: (type, key)->
          switch type
            when 'session'
              val = sessionStorage.getItem(key)
            else
              val = localStorage.getItem(key)

          if typeof val is 'undefined' or val is null or val is 'undefined'
            return {}
          else
            return JSON.parse(val)

        set: (type, key, val)->
          switch type
            when 'session'
              val = JSON.stringify(val)
              sessionStorage.setItem(key, val)
            else
              val = JSON.stringify(val)
              localStorage.setItem(key, val)

        del: (type, key)->
          switch type
            when 'session'
              sessionStorage.removeItem(key)
            else
              localStorage.removeItem(key)

# ==============================
# Return main services
# ==============================
module.exports = [
  '$rootScope'
  '$state'
  Service
]
