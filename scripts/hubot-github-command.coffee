# Description:
#   Github Commands.
#
# Commands:
#
# ActivityEvent = require('./lib/activity_event')
# ActivityEventTypePayload = require('./lib/activity_event_type_payload')
# ActivityFeed = require('./lib/activity_feed')
# ActivityNotification = require('./lib/activity_notification')
# ActivityStarring = require('./lib/activity_starring')
# ActivityWatching = require('./lib/activity_watching')
# Gist = require('./lib/gist')
# GistComment = require('./lib/gist_comment')
# GitDataBlob = require('./lib/git_data_blob')
# GitDataCommit = require('./lib/git_data_commit')
# GitDataReference = require('./lib/git_data_reference')
# GitDataTag = require('./lib/git_data_tag')
# GitDataTree = require('./lib/git_data_tree')
# Issue = require('./lib/issue')
# IssueAssignee = require('./lib/issue_assignee')
# IssueComment = require('./lib/issue_comment')
# IssueEvent = require('./lib/issue_event')
# IssueLabel = require('./lib/issue_label')
# IssueMilestone = require('./lib/issue_milestone')
# IssueTimeline = require('./lib/issue_timeline')
# Migration = require('./lib/migration')
# MigrationSourceImport = require('./lib/migration_source_import')
# Organization = require('./lib/organization')
# OrganizationMember = require('./lib/organization_member')
# OrganizationTeam = require('./lib/organization_team')
# OrganizationWebhook = require('./lib/organization_webhook')
# PullRequest = require('./lib/pull_request')
# PullRequestReviewComment = require('./lib/pull_request_review_comment')
# Reaction = require('./lib/reaction')
# ReactionCommitComment = require('./lib/reaction_commit_comment')
# ReactionIssue = require('./lib/reaction_issue')
# ReactionIssueComment = require('./lib/reaction_issue_comment')
# ReactionPullRequestReviewComment = require('./lib/reaction_pull_request_review_comment')
# Repository = require('./lib/repository')
# RepositoryBranch = require('./lib/repository_branch')
# RepositoryCollaborator = require('./lib/repository_collaborator')
# RepositoryComment = require('./lib/repository_comment')
# RepositoryCommit = require('./lib/repository_commit')
# RepositoryContent = require('./lib/repository_content')
# RepositoryFork = require('./lib/repository_frok')
# RepositoryInvitation = require('./lib/repository_invitation')
# RepositoryMerging = require('./lib/repository_merging')
# RepositoryPage = require('./lib/repository_page')
# RepositoryProject = require('./lib/repository_project')
# RepositoryRelease = require('./lib/repository_release')
# RepositoryStatistic = require('./lib/repository_statistic')
# RepositoryStatus = require('./lib/repository_status')
# RepositoryTraffic = require('./lib/repository_traffic')
# RepositoryWebhook = require('./lib/repository_webhook')
# Search = require('./lib/search')
# User = require('./lib/user')
# UserEmail = require('./lib/user_email')
# UserFollower = require('./lib/user_follower')
Fs = require 'fs'
Path = require 'path'
ChangeCase = require 'change-case' 

module.exports = (robot)->
  access_token = process.env.HUBOT_GITHUB_COMMAND_ACCESS_TOKEN
  username = process.env.HUBOT_GITHUB_COMMAND_USERNAME

  path = Path.resolve __dirname, 'lib'
  Fs.exists path, (exists)->
    if exists
      for file in Fs.readdirSync(path)
        file_name = file.replace(/.coffee/g, "").split('-').join(' ')
        robot.logger.info file_name
        class_name = ChangeCase.pascalCase file_name
        robot.logger.info class_name
        eval(class_name + ' = ' + require(file))
        robot.logger.info eval(class_name + ' = ' + require(file))

  user = new User(robot)

  robot.logger.info 'hubot-github start'
  robot.logger.info 'https://api.github.com/orgs/some_private/repos?access_token='+access_token
  robot.logger.info user

