# Description:
#   Github Webhook.
#
# Commands:
module.exports = (robot)->
  robot.logger.info "hubot-github start"
  robot.logger.info 'https://api.github.com/orgs/some_private/repos?access_token='+process.env.HUBOT_GITHUB_COMMAND_ACCESS_TOKEN
