'use strict'

class Config
  constructor: ()->

    return obj =
      appName: 'app'

# ==============================
# Return main app
# ==============================
module.exports = [
  Config
]
