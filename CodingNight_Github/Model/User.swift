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

