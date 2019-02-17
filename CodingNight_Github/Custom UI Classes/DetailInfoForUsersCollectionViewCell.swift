//
//  DetailInfoForUsersCollectionViewCell.swift
//  CodingNight_Github
//
//  Created by Morteza Ahmadi on 2019-02-17.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import UIKit

class DetailInfoForUsersCollectionViewCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
    }
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var profileImage: CachableImage!
    
    func configCell(with user: User) {
        loginLabel.text = user.login
        guard let avatarURL = user.avatar_url else {
            profileImage.isHidden = true
            return
        }
        profileImage.downloadImage(from: avatarURL)
    }
    
}
