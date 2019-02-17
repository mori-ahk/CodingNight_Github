//
//  NetworkServices.swift
//  CodingNight_Github
//
//  Created by Morteza Ahmadi on 2019-02-16.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import Foundation

enum RequestType {
    case repos
    case followers
    case following
    case starred
}

class NetworkServices {
    
    static let sharedInstance = NetworkServices()
    
    private init() {}
        
    //Write this function first to show how call back is effecting the return value : getData() -> User?
    func getData(for username: String, completionHandler: @escaping (User) -> Void) {
        guard let url = URL(string: "https://api.github.com/users/\(username)") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            let decoder = JSONDecoder()
            guard error == nil else { return } // A terrible way to handle error!
            guard let data = data else { return }
            guard let user = try? decoder.decode(User.self, from: data) else { return }
            completionHandler(user)
        }.resume()
    }
    
    func fetchData<T: Codable>(for requestType: RequestType, from URLString: String, completionHandler: @escaping (T) -> Void) {
        guard let url = URL(string: URLString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else { return }
            guard let data = data else { return }
            switch requestType {
            case .repos, .starred:
                guard let repos = try? JSONDecoder().decode([Repository].self, from: data) as! T else { return }
                completionHandler(repos)
            default:
                guard let users = try? JSONDecoder().decode([User].self, from: data) as! T else { return }
                completionHandler(users)
            }
        }.resume()
    }
    
}
