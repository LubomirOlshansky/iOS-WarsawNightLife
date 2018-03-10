//
//  ClubsTableViewCell.swift
//  iOS - WarsawNighlife
//
//  Created by Lubomir Olshansky on 10/03/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import UIKit

class ClubsTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var dresscodeLabel: UILabel!
    @IBOutlet var clubImageView: UIImageView! {
        didSet {
            clubImageView.layer.cornerRadius = 30.0
            clubImageView.clipsToBounds = true
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
