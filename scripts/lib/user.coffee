util = require('./util')

class User
  constructor: (robot)->
    @robot = robot

  get_user: (user_name)->
    util.GITHUB_URL+"users/"+user_name

  get_user_followers: (user_name)->
    util.GITHUB_URL+"users/"+user_name+"/followers"

  get_user_following: (user_name)->
    util.GITHUB_URL+"users/"+user_name+"/following"

  check_user_following: (user_name, target_user_name)->
    util.GITHUB_URL+"users/"+user_name+"/following/"+target_user_name

  # put
  follow_user: (user_name)->
    util.GITHUB_URL+"user/following/"+user_name

  # delete
  unfollow_user: (user_name)->
    util.GITHUB_URL+"user/following/"+user_name

  get_owner: ()->
    util.GITHUB_URL+"user"

  get_owener_followers: ()->
    util.GITHUB_URL+"user/follows"

  get_owner_following: ()->
    util.GITHUB_URL+"user/following"

  check_owner_following: (user_name)->
    util.GITHUB_URL+"user/following/"+user_name

module.exports = User
