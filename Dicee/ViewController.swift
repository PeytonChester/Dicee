//
//  ViewController.swift
//  Dicee
//
//  Created by Peyton Chester on 5/17/19.
//  Copyright © 2019 Peyton Chester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //let is used for making constants
    //constants are data that never change, like this array
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    var randomDiceIndex3: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    
    //only gets triggered when the view initially loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }

    //this will get executed when the roll button is clicked
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        randomDiceIndex3 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        diceImageView3.image = UIImage(named: diceArray[randomDiceIndex3])
    }
    
}

