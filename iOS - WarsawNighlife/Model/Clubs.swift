//
//  Clubs.swift
//  iOS - WarsawNighlife
//
//  Created by Lubomir Olshansky on 10/03/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import Foundation

class Clubs {
        var name: String
        var dresscode: String
        var location: String
        var phone: String
        var description: String
        var image: String
        var isVisited: Bool
        var rating: String
        
        init(name: String, dresscode: String, location: String, phone: String, description: String, image: String, isVisited: Bool, rating: String = "") {
            self.name = name
            self.dresscode = dresscode
            self.location = location
            self.phone = phone
            self.description = description
            self.image = image
            self.isVisited = isVisited
            self.rating = rating
    }
    
    convenience init() {
        self.init(name: "", dresscode: "", location: "", phone: "", description: "", image: "", isVisited: false)
    }
}
