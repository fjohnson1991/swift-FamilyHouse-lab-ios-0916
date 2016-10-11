//
//  TVSeries.swift
//  FamilyHouse
//
//  Created by Felicity Johnson on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum TVSeries {
    
    case familyMatters, fullHouse
    
    var description: String {
        
        switch self {
        case .familyMatters:
            return "Family Matter"
        case .fullHouse:
            return "Full House"
            
        }
    }
}
