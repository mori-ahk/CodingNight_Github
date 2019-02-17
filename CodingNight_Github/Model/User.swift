//
//  User.swift
//  CodingNight_Github
//
//  Created by Morteza Ahmadi on 2019-02-15.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import Foundation

struct User: Codable {
    
    var login: String
    var avatar_url: String?
    var followers_url: String
    var following_url: String
    var starred_url: String
    var repos_url: String
    var name: String?
    var company: String?
    var email: String?
    var bio: String?
    var location: String?
    var followers: Int?
    var following: Int?
    var public_repos: Int?
    
    
    init() {
        self.login = ""
        self.followers_url = ""
        self.following_url = ""
        self.starred_url = ""
        self.repos_url = ""
        //remove optional to show if there were all optionals, there would be no need for init()
        self.company = ""
        self.email = ""
        self.bio = ""
        self.location = ""
        //-------------------------------------------------------------------------------------
        self.followers = 0
        self.following = 0
        self.public_repos = 0
    }
    
    func trim(url URLString: String?) -> String {
        guard var URLString = URLString else { return String() }
        let index = URLString.firstIndex(of: "{") ?? URLString.endIndex
        URLString = String(URLString[..<index])
        return URLString
    }
}

//"login": "mori-ahk",
//"id": 24929178,
//"node_id": "MDQ6VXNlcjI0OTI5MTc4",
//"avatar_url": "https://avatars3.githubusercontent.com/u/24929178?v=4",
//"gravatar_id": "",
//"url": "https://api.github.com/users/mori-ahk",
//"html_url": "https://github.com/mori-ahk",
//"followers_url": "https://api.github.com/users/mori-ahk/followers",
//"following_url": "https://api.github.com/users/mori-ahk/following{/other_user}",
//"gists_url": "https://api.github.com/users/mori-ahk/gists{/gist_id}",
//"starred_url": "https://api.github.com/users/mori-ahk/starred{/owner}{/repo}",
//"subscriptions_url": "https://api.github.com/users/mori-ahk/subscriptions",
//"organizations_url": "https://api.github.com/users/mori-ahk/orgs",
//"repos_url": "https://api.github.com/users/mori-ahk/repos",
//"events_url": "https://api.github.com/users/mori-ahk/events{/privacy}",
//"received_events_url": "https://api.github.com/users/mori-ahk/received_events",
//"type": "User",
//"site_admin": false,
//"name": "Mori Ahmadi",
//"company": "@ConcordiaUniversity",
//"blog": "",
//"location": null,
//"email": null,
//"hireable": null,
//"bio": null,
//"public_repos": 22,
//"public_gists": 1,
//"followers": 7,
//"following": 10,
//"created_at": "2017-01-05T03:52:02Z",
//"updated_at": "2019-01-31T17:09:51Z"
//}
