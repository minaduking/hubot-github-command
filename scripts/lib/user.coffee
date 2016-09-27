util = require('./util')

User = ()->
 this.getURL()->
   util.GITHUB_URL

module.exports = User

