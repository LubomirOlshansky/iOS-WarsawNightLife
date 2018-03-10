//
//  ClubsDetailViewController.swift
//  iOS - WarsawNighlife
//
//  Created by Lubomir Olshansky on 10/03/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import UIKit

class ClubsDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var headerView: DetailsHeaderView!
    
    var clubs: Clubs = Clubs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
        navigationItem.largeTitleDisplayMode = .never
        
        headerView.nameLabel.text = clubs.name
        print(clubs.description + "ololo")
        print(clubs.phone)
        headerView.dresscodeLabel.text = clubs.dresscode
        headerView.headerImageView.image = UIImage(named: clubs.image)
        headerView.heartImageView.isHidden = (clubs.isVisited) ? false : true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ClubsDetailIconTextCell.self), for: indexPath) as! ClubsDetailIconTextCell
            cell.iconImageView.image = UIImage(named: "phone")
            cell.shortTextLabel.text = clubs.phone
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ClubsDetailIconTextCell.self), for: indexPath) as! ClubsDetailIconTextCell
            cell.iconImageView.image = UIImage(named: "map")
            cell.shortTextLabel.text = clubs.location
            
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ClubsDetailTextCell.self), for: indexPath) as! ClubsDetailTextCell
            cell.descriptionLabel.text = clubs.description
            
            return cell
            
        default:
            fatalError("Failed to instantiate the table view cell for detail view controller")
        }
    }

    

}
