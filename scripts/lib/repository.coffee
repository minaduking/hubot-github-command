util = require('./util')

class Repository
  constructor: (robot)->
    @robot = robot

  get_user_repos: (user_name)->
    util.GITHUB_URL+"users/"+user_name+"/repos"

  get_owner_repos: ()->
    util.GITHUB_URL+"user/repos"
  
  create_owner_repos: ()->
    util.GITHUB_URL+"user/repos"
    
  get_organization_repos: (org_name)->
    util.GITHUB_URL+"orgs"+org_name+"/repos"

  create_organization_repos: (org_name)->
    util.GITHUB_URL+"orgs"+org_name+"/repos"

  get_repos: (user_name, repo)->
    util.GITHUB_URL+"repos/"+user_name+"/"+repo

  edit_repos: (user_name, repo)->
    util.GITHUB_URL+"repos/"+user_name+"/"+repo

  get_contributors: (user_name, repo)->
    util.GITHUB_URL+"/repos/"+user_name+"/"+repo+"/contributors"    

  get_teams: (user_name, repo)->
    util.GITHUB_URL+"/repos/"+user_name+"/"+repo+"/teams"    

  get_tags: (user_name, repo)->
    util.GITHUB_URL+"/repos/"+user_name+"/"+repo+"/tags"
  
  delete_repo: (user_name, repo)->
    util.GITHUB_URL+"/repos/"+user_name+"/"+repo

module.exports = Repository
