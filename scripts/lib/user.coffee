util = require('./util')

var User = ()->
   this.getURL()->
     util.GITHUB_URL

module.exports = User

