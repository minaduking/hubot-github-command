# Description:
#   Github Commands.
#
# Commands:
#
module.exports = (robot)->
  access_token = process.env.HUBOT_GITHUB_COMMAND_ACCESS_TOKEN
  username = process.env.HUBOT_GITHUB_COMMAND_USERNAME

  robot.logger.info "hubot-github start"
  robot.logger.info 'https://api.github.com/orgs/some_private/repos?access_token='+access_token

  robot.respond /github_org_list(.*)/i, (msg)->
    msg.http("https://api.github.com/users/"+username+"/orgs").get()
    request(err, res, body)->
      json = JSON.parse body
      msg.send json
