//
//  DetailInfoCollectionViewCell.swift
//  CodingNight_Github
//
//  Created by Morteza Ahmadi on 2019-02-17.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import UIKit

class DetailInfoForReposCollectionViewCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
    }
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.textColor = UIColor.black.withAlphaComponent(0.85)
        }
    }
    
    @IBOutlet weak var languageLabel: UILabel! {
        didSet {
            languageLabel.textColor = UIColor.black.withAlphaComponent(0.85)
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.textColor = UIColor.black.withAlphaComponent(0.85)
            descriptionLabel.sizeToFit()
        }
    }
    
    func configCell(with repo: Repository) {
        nameLabel.text = repo.name
        languageLabel.text = repo.language
        descriptionLabel.text = repo.description
    }
}
