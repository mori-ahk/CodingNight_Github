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

