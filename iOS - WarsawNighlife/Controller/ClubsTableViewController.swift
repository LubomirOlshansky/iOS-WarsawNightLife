//
//  ClubsTableViewController.swift
//  iOS - WarsawNighlife
//
//  Created by Lubomir Olshansky on 10/03/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import UIKit

class ClubsTableViewController: UITableViewController {

    var clubs:[Clubs] = [
        Clubs(name: "level27", dresscode: "Elegant", location: "Aleje Jerozolimskie 123A, Warsaw", phone: "+48 733 661 094", description: "level27 to stylowa przestrzeń klubowa, znajdująca się na 27 piętrze budynku biurowego w samym sercu miasta z unikatowym widokiem na panoramę Warszawy.", image: "level27.png", isVisited: false),
        Clubs(name: "XOXO party", dresscode: "High street", location: "Marii Konopnickiej 6, Warsaw", phone: " +48 665 225 226", description: "party with friends :) so simple.", image: "xoxo.png", isVisited: false),
        Clubs(name: "Bank club", dresscode: "Elegant", location: "Mazowiecka 14, Warsaw", phone: "+48 22 468 85 10", description: "An exclusive music club with the largest dance floor in Warsaw! 1200 m².", image: "bank.png", isVisited: false),
        Clubs(name: "Room13", dresscode: "Casual", location: "Mazowiecka 13, Warsaw", phone: "+48 22 827 60 44", description: "To miejsce stworzone dla ludzi poszukujących rozrywki na najwyższym poziomie, ceniących muzykę klubową w najlepszym jej wydaniu, stylowe wnętrza oraz wysoką jakość obsługi.", image: "room13.png", isVisited: false),
        Clubs(name: "The View", dresscode: "Elegant", location: "Twarda 18, Warsaw", phone: "+48 663 971 942", description: " The View is almost 1000m2 of unique area, consisting of two levels to ensure the highest quality of clubbing, designed in the spirit of the architecture of New York and strictly referring to the atmosphere of the best places in this city.", image: "theview.png", isVisited: false)
]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clubs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ClubsTableViewCell
        
        cell.nameLabel.text = clubs[indexPath.row].name
        cell.clubImageView.image = UIImage(named: clubs[indexPath.row].image)
        cell.locationLabel.text = clubs[indexPath.row].location
        cell.dresscodeLabel.text = clubs[indexPath.row].dresscode
        
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showClubDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! ClubsDetailViewController
                destinationController.clubs = clubs[indexPath.row]
                print(clubs.count)
            }
        }
    }
    
}
