//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {

    var animalString: String = ""
    
    @IBOutlet weak var AnimalEmojiLabel: UILabel!

    @IBOutlet weak var AnimalNameLabel: UILabel!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AnimalEmojiLabel?.text = animalString
        
        let animalemoji = animalToName(animalString)
        AnimalNameLabel?.text = animalemoji
        
        navigationItem.title = animalemoji
    }
    
    fileprivate func animalToName (_ emoji:String) -> String {
        switch emoji {
        
        case "Dog":
            return "🐶"
        case "Cat":
             return "🐱"
        case "Mouse":
            return  "🐭"
        case "Hamster":
             return "🐹"
        case "Bunny":
             return "🐰"
        case "Panda":
            return  "🐼"
        case "Lion":
             return "🦁"
        case "Pig":
            return  "🐷"
        case "Frog":
            return  "🐸"
        default:
            return ""
        }
        
    }

}
