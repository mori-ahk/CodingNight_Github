//
//  Repository.swift
//  CodingNight_Github
//
//  Created by Morteza Ahmadi on 2019-02-16.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import Foundation

struct Repository: Codable {
    var name: String
    var full_name: String
    var owner: User
    var description: String?
    var language: String?
}

/*
 "id":136660452,
 "node_id":"MDEwOlJlcG9zaXRvcnkxMzY2NjA0NTI=",
 "name":"Alamofire",
 "full_name":"mori-ahk/Alamofire",
 "private":false,
 "owner":{
 "login":"mori-ahk",
 "id":24929178,
 "node_id":"MDQ6VXNlcjI0OTI5MTc4",
 "avatar_url":"https://avatars3.githubusercontent.com/u/24929178?v=4",
 "gravatar_id":"",
 "url":"https://api.github.com/users/mori-ahk",
 "html_url":"https://github.com/mori-ahk",
 "followers_url":"https://api.github.com/users/mori-ahk/followers",
 "following_url":"https://api.github.com/users/mori-ahk/following{/other_user}",
 "gists_url":"https://api.github.com/users/mori-ahk/gists{/gist_id}",
 "starred_url":"https://api.github.com/users/mori-ahk/starred{/owner}{/repo}",
 "subscriptions_url":"https://api.github.com/users/mori-ahk/subscriptions",
 "organizations_url":"https://api.github.com/users/mori-ahk/orgs",
 "repos_url":"https://api.github.com/users/mori-ahk/repos",
 "events_url":"https://api.github.com/users/mori-ahk/events{/privacy}",
 "received_events_url":"https://api.github.com/users/mori-ahk/received_events",
 "type":"User",
 "site_admin":false
 },
 "html_url":"https://github.com/mori-ahk/Alamofire",
 "description":"Elegant HTTP Networking in Swift",
 "fork":true,
 "url":"https://api.github.com/repos/mori-ahk/Alamofire",
 "forks_url":"https://api.github.com/repos/mori-ahk/Alamofire/forks",
 "keys_url":"https://api.github.com/repos/mori-ahk/Alamofire/keys{/key_id}",
 "collaborators_url":"https://api.github.com/repos/mori-ahk/Alamofire/collaborators{/collaborator}",
 "teams_url":"https://api.github.com/repos/mori-ahk/Alamofire/teams",
 "hooks_url":"https://api.github.com/repos/mori-ahk/Alamofire/hooks",
 "issue_events_url":"https://api.github.com/repos/mori-ahk/Alamofire/issues/events{/number}",
 "events_url":"https://api.github.com/repos/mori-ahk/Alamofire/events",
 "assignees_url":"https://api.github.com/repos/mori-ahk/Alamofire/assignees{/user}",
 "branches_url":"https://api.github.com/repos/mori-ahk/Alamofire/branches{/branch}",
 "tags_url":"https://api.github.com/repos/mori-ahk/Alamofire/tags",
 "blobs_url":"https://api.github.com/repos/mori-ahk/Alamofire/git/blobs{/sha}",
 "git_tags_url":"https://api.github.com/repos/mori-ahk/Alamofire/git/tags{/sha}",
 "git_refs_url":"https://api.github.com/repos/mori-ahk/Alamofire/git/refs{/sha}",
 "trees_url":"https://api.github.com/repos/mori-ahk/Alamofire/git/trees{/sha}",
 "statuses_url":"https://api.github.com/repos/mori-ahk/Alamofire/statuses/{sha}",
 "languages_url":"https://api.github.com/repos/mori-ahk/Alamofire/languages",
 "stargazers_url":"https://api.github.com/repos/mori-ahk/Alamofire/stargazers",
 "contributors_url":"https://api.github.com/repos/mori-ahk/Alamofire/contributors",
 "subscribers_url":"https://api.github.com/repos/mori-ahk/Alamofire/subscribers",
 "subscription_url":"https://api.github.com/repos/mori-ahk/Alamofire/subscription",
 "commits_url":"https://api.github.com/repos/mori-ahk/Alamofire/commits{/sha}",
 "git_commits_url":"https://api.github.com/repos/mori-ahk/Alamofire/git/commits{/sha}",
 "comments_url":"https://api.github.com/repos/mori-ahk/Alamofire/comments{/number}",
 "issue_comment_url":"https://api.github.com/repos/mori-ahk/Alamofire/issues/comments{/number}",
 "contents_url":"https://api.github.com/repos/mori-ahk/Alamofire/contents/{+path}",
 "compare_url":"https://api.github.com/repos/mori-ahk/Alamofire/compare/{base}...{head}",
 "merges_url":"https://api.github.com/repos/mori-ahk/Alamofire/merges",
 "archive_url":"https://api.github.com/repos/mori-ahk/Alamofire/{archive_format}{/ref}",
 "downloads_url":"https://api.github.com/repos/mori-ahk/Alamofire/downloads",
 "issues_url":"https://api.github.com/repos/mori-ahk/Alamofire/issues{/number}",
 "pulls_url":"https://api.github.com/repos/mori-ahk/Alamofire/pulls{/number}",
 "milestones_url":"https://api.github.com/repos/mori-ahk/Alamofire/milestones{/number}",
 "notifications_url":"https://api.github.com/repos/mori-ahk/Alamofire/notifications{?since,all,participating}",
 "labels_url":"https://api.github.com/repos/mori-ahk/Alamofire/labels{/name}",
 "releases_url":"https://api.github.com/repos/mori-ahk/Alamofire/releases{/id}",
 "deployments_url":"https://api.github.com/repos/mori-ahk/Alamofire/deployments",
 "created_at":"2018-06-08T19:53:07Z",
 "updated_at":"2018-06-08T19:53:10Z",
 "pushed_at":"2018-06-07T18:37:22Z",
 "git_url":"git://github.com/mori-ahk/Alamofire.git",
 "ssh_url":"git@github.com:mori-ahk/Alamofire.git",
 "clone_url":"https://github.com/mori-ahk/Alamofire.git",
 "svn_url":"https://github.com/mori-ahk/Alamofire",
 "homepage":"",
 "size":6259,
 "stargazers_count":0,
 "watchers_count":0,
 "language":"Swift",
 "has_issues":false,
 "has_projects":true,
 "has_downloads":true,
 "has_wiki":false,
 "has_pages":false,
 "forks_count":0,
 "mirror_url":null,
 "archived":false,
 "open_issues_count":0,
 "license":{  },
 "forks":0,
 "open_issues":0,
 "watchers":0,
 "default_branch":"master"
 },
*/
