//
//  OptionCollectionCell.swift
//  CodingNight_Github
//
//  Created by Morteza Ahmadi on 2019-02-16.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import UIKit

class OptionCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var optionLabel: UILabel! {
        didSet {
            optionLabel.textColor = UIColor.black.withAlphaComponent(0.85)
        }
    }
    
}
