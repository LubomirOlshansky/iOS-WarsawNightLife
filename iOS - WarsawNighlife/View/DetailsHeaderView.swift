//
//  DetailsTableView.swift
//  iOS - WarsawNighlife
//
//  Created by Lubomir Olshansky on 10/03/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import UIKit

class DetailsHeaderView: UIView {

    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel! {
        didSet {
            nameLabel.numberOfLines = 0
        }
    }
    @IBOutlet var dresscodeLabel: UILabel! {
        didSet {
            dresscodeLabel.layer.cornerRadius = 5.0
            dresscodeLabel.layer.masksToBounds = true
        }
    }
    @IBOutlet var heartImageView: UIImageView! {
        didSet {
            heartImageView.image = UIImage(named: "icons8-heart-outline-100")?.withRenderingMode(.alwaysTemplate)
            heartImageView.tintColor = .white
        }
    }
}
