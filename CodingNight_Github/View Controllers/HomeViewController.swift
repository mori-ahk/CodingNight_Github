//
//  ViewController.swift
//  CodingNight_Github
//
//  Created by Morteza Ahmadi on 2019-02-15.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

//TODO: Explain
    //Explain closure and the concept of completion handlers, async
    //Explain Codable protocol and how it works
    //Explain API and JSON


import UIKit


class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var optionsCollectionView: UICollectionView! {
        didSet {
            optionsCollectionView.delegate = self
            optionsCollectionView.dataSource = self
            optionsCollectionView.backgroundColor = UIColor.white.withAlphaComponent(0.945)
        }
    }
    
    @IBOutlet weak var followingLabel: UILabel! {
        didSet {
            followingLabel.text = "Following"
        }
    }
    
    @IBOutlet weak var followingCount: UILabel! {
        didSet {
            followingCount.text = "\(currentUser?.following ?? 0)"
        }
    }
    
    @IBOutlet weak var followersLabel: UILabel! {
        didSet {
            followersLabel.text = "Followers"
        }
    }
    
    @IBOutlet weak var followersCount: UILabel! {
        didSet {
            followersCount.text = "\(currentUser?.followers ?? 0)"
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.text = currentUser?.name
        }
    }
    
    @IBOutlet weak var profileImage: CachableImage! {
        didSet {
            guard let avatarURL = currentUser?.avatar_url else {
                profileImage.isHidden = true
                return
            }
            profileImage.downloadImage(from: avatarURL)
        }
    }
    
    let titles = ["Repositories", "Followers", "Following", "Starred"]
    
    var currentUser : User?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white.withAlphaComponent(0.945)
    }
    
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "optionCellIdentifier", for: indexPath) as! OptionCollectionCell
        cell.optionLabel.text = titles[indexPath.row]
        cell.backgroundColor = UIColor.black.withAlphaComponent(0.85)
        cell.layer.cornerRadius = 20
        cell.clipsToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width - 40, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            guard let reposURL = currentUser?.repos_url else { return }
            NetworkServices.sharedInstance.fetchData(for: RequestType.repos, from: reposURL) { (serverResponse: [Repository]) in
                print(serverResponse)
            }
        case 1:
            guard let followersURL = currentUser?.followers_url else { return }
            NetworkServices.sharedInstance.fetchData(for: RequestType.followers, from: followersURL) { (serverResponse: [User]) in
                print(serverResponse)
            }
        case 2:
            guard let followingURL = currentUser?.following_url else { return }
            NetworkServices.sharedInstance.fetchData(for: RequestType.following, from: followingURL) { (serverResponse: [User]) in
                print(serverResponse)
            }
        case 3:
            guard let starredURL = currentUser?.starred_url else { return }
            NetworkServices.sharedInstance.fetchData(for: RequestType.starred, from: starredURL) { (serverResponse: [Repository]) in
                print(serverResponse)
            }
        default:
            break
        }
    }
    
}