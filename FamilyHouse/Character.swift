//
//  Character.swift
//  FamilyHouse
//
//  Created by Felicity Johnson on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

struct Character {
    
    let name: String
    let realLifeName: String
    let tvSeries: TVSeries
    var currentLocation: FilmLocation
    let image: UIImage
    
    func canReportToSet(on location:FilmLocation) -> Bool {
        return location.tvSeries == self.tvSeries
    }
    
    mutating func reportToSet(on location: FilmLocation) {
        if canReportToSet(on: location) {
            currentLocation = location
        }
    }
    
}
