util = require('./util')

class Search
  constructor: (robot)->
    @robot = robot

  get_repositories: ()->
    util.GITHUB_URL+"search/repositories"
  
  get_code: ()->
    util.GITHUB_URL+"search/code"

  get_issues: ()->
    util.GITHUB_URL+"search/issues"

  get_users: ()->
    util.GITHUB_URL+"search/users"

module.exports = Search
