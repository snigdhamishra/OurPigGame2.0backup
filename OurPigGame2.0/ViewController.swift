//
//  ViewController.swift
//  OurPigGame2.0
//
//  Created by Mishra, Snigdha on 10/3/19.
//  Copyright © 2019 Frisco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var alternatePlayersButton: UISegmentedControl!
    @IBOutlet weak var numberRolledLabel: UILabel!
    
    @IBOutlet weak var rollDiceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollDiceButtonClicked(_ sender: Any) {
        let numberRolled = Int.random(in: 1...6)
        numberRolledLabel.text = "Player rolled a \(numberRolled)"
    }
    
    @IBAction func alternatePlayersButtonClicked(_ sender: Any) {
        if alternatePlayersButton == 0{
            
        }
    }

}

