//
//  CharacterCollectionViewCell.swift
//  FamilyHouse
//
//  Created by Felicity Johnson on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var characterImageView: UIImageView!
    
    @IBOutlet weak var characterNameLabel: UILabel!
    
    var character: Character! {
        didSet {
            characterImageView.image = character.image
            characterNameLabel.text = character.name
        }
    }
    
}
