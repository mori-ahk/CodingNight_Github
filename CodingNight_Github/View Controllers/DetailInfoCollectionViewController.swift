//
//  DetailInfoCollectionViewController.swift
//  CodingNight_Github
//
//  Created by Morteza Ahmadi on 2019-02-17.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import UIKit

private let reuseIdentifierForRepos = "detailInfoForReposCellIdentifier"
private let reuseIdentifierForUsers = "detailInfoForUsersCellIdentifier"

class DetailInfoCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var dataSource: [AnyObject]?
    var cellType: CellType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource?.count ?? 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch cellType {
        case .repos?:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierForRepos, for: indexPath) as! DetailInfoForReposCollectionViewCell
            let repo = dataSource?[indexPath.row] as! Repository
            cell.configCell(with: repo)
            return cell
        case .users?:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierForUsers, for: indexPath) as! DetailInfoForUsersCollectionViewCell
            let user = dataSource?[indexPath.row] as! User
            cell.configCell(with: user)
            return cell
        case .none:
            break
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch cellType {
        case .repos?:
            let repo = dataSource?[indexPath.row] as! Repository
            guard let des = repo.description else {
                return CGSize(width: self.view.frame.width - 20, height: 70)
            }
            let font = UIFont.systemFont(ofSize: 17, weight: .medium)
            let height = des.height(withConstrainedWidth: self.view.frame.width, font: font)
            return CGSize(width: self.view.frame.width - 20, height: height + 85)
        default:
            return CGSize(width: self.view.frame.width - 20, height: 105)
        }
    }
    
}

extension String {
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [.font: font], context: nil)
        
        return ceil(boundingBox.height)
    }
}
