//
//  CharacterCollectionViewController.swift
//  FamilyHouse
//
//  Created by Felicity Johnson on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit


class CharacterCollectionViewController: UICollectionViewController {
   
    var characters: [Character]!
    var filmLocation: FilmLocation!
    var selectedItemsIndex = [IndexPath]()
    
    @IBAction func doneButtonPressed(_ sender: AnyObject) {
        
        var goodToGo = [Character]()
        // Get the array of selected indexpath items
        if let indexPaths = collectionView?.indexPathsForSelectedItems {
 
            // loop over those
            for indexPath in indexPaths {
                let character = characters[indexPath.item]
                
                    if character.canReportToSet(on: filmLocation) {
                        goodToGo.append(character)
                    } else {
                        print("can't report")
                }
            }
            
            if goodToGo.count == indexPaths.count {
                print("All set to report to set!")
            } else {
                print("Not all set to report to set")
            }
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.allowsMultipleSelection = true
        populateCharacterArray()
    }
    
//    
//    override func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        let cell = collectionView.cellForItem(at: indexPath)
//        print(collectionView.indexPathsForSelectedItems)
//    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)!
        
        if !selectedItemsIndex.contains(indexPath) {
            cell.layer.borderColor = UIColor.blue.cgColor
            cell.layer.borderWidth = 2
            selectedItemsIndex.append(indexPath)
        } else {
            cell.layer.borderColor = nil
            cell.layer.borderWidth = 0
            collectionView.deselectItem(at: indexPath, animated: false)
//            let indexPath = indexPath
            let index = selectedItemsIndex.index(of: indexPath)
            selectedItemsIndex.remove(at: index!)
        }
        
        print("\n\nindexPathsForSelectedItems:\n\(collectionView.indexPathsForSelectedItems)\nselectedItemsIndex:\n\(selectedItemsIndex)\n\n")
        
        
    }
    
    func populateCharacterArray() {
        
        let carl = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation,image: UIImage(named: "carl")!)
        let danny = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "danny")!)
        let dj = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "dj")!)
        let eddie = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "eddie")!)
        let jesse = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "jesse")!)
        let joey = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "joey")!)
        let kimmy = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "joey")!)
        let laura = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "kimmy")!)
        let michelle = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "laura")!)
        let rebecca = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "michelle")!)
        let stephanie = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "stephanie")!)
        let steve = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "steve")!)
        let Waldo = Character(name: "Carl", realLifeName: "Carl", tvSeries: .fullHouse, currentLocation: filmLocation, image: UIImage(named: "Waldo")!)
        
        characters = [carl, danny, dj, eddie, jesse, joey, kimmy, laura, michelle, rebecca, stephanie, steve, Waldo]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return characters.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "characterCell", for: indexPath) as! CharacterCollectionViewCell
    
        cell.characterImageView.image = characters[indexPath.item].image
        cell.characterNameLabel.text = String(characters[indexPath.item].name)
    
        return cell
    }

}
