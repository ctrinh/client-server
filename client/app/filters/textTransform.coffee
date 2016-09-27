'use strict'

class Filter
  constructor: ()->
    return (value, type)->
      typeLetter = type || 'capitalizeFirstWord';
      value = value || '';
      switch typeLetter
        when 'uppercase'
          value.toUpperCase();
        when 'lowercase'
          value.toLowerCase();
        when 'capitalize'
          return value.replace /\w\S*/g, (txt) ->
            return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase()
        else
          value.charAt(0).toUpperCase() + value.toLowerCase().slice(1)


# ==============================
# Return main services
# ==============================
module.exports = [Filter]
