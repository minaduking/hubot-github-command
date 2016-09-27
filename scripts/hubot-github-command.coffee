# Description:
#   Github Commands.
#
# Commands:
#
User = require('./lib/user')

module.exports = (robot)->
  access_token = process.env.HUBOT_GITHUB_COMMAND_ACCESS_TOKEN
  username = process.env.HUBOT_GITHUB_COMMAND_USERNAME

  robot.logger.info "hubot-github start"
  robot.logger.info 'https://api.github.com/orgs/some_private/repos?access_token='+access_token
  robot.logger.info User.getURL()
