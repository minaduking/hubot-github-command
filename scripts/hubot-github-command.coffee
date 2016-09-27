# Description:
#   Github Commands.
#
# Commands:
#
# ActivityEvent = require('./lib/activity_event').ActivityEvent
# ActivityEventTypePayload = require('./lib/activity_event_type_payload').ActivityEventTypePayload
# ActivityFeed = require('./lib/activity_feed').ActivityFeed
# ActivityNotification = require('./lib/activity_notification').ActivityNotification
# ActivityStarring = require('./lib/activity_starring').ActivityStarring
# ActivityWatching = require('./lib/activity_watching').ActivityWatching
# Gist = require('./lib/gist').Gist
# GistComment = require('./lib/gist_comment').GistComment
# GitDataBlob = require('./lib/git_data_blob').GitDataBlob
User = require('./lib/user')

module.exports = (robot)->
  access_token = process.env.HUBOT_GITHUB_COMMAND_ACCESS_TOKEN
  username = process.env.HUBOT_GITHUB_COMMAND_USERNAME

  user = new User(robot)

  robot.logger.info "hubot-github start"
  robot.logger.info 'https://api.github.com/orgs/some_private/repos?access_token='+access_token
  robot.logger.info user
