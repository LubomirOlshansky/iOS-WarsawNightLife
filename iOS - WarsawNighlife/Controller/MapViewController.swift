//
//  MapViewController.swift
//  iOS - WarsawNighlife
//
//  Created by Lubomir Olshansky on 10/03/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    var clubs = Clubs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(self.clubs.name)
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(clubs.location, completionHandler: { placemarks, error in
            if let error = error {
                print(error)
                return
            }
            
            if let placemarks = placemarks {
                let placemark = placemarks[0]
                
                let annotation = MKPointAnnotation()
                annotation.title = self.clubs.name
                annotation.subtitle = self.clubs.dresscode
                
                if let location = placemark.location {
                    annotation.coordinate = location.coordinate
                    
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation, animated: true)
                }
            }
            
        })
        
    }

   

}
