//
//  ViewController.swift
//  OurPigGame2.0
//
//  Created by Mishra, Snigdha on 10/3/19.
//  Copyright © 2019 Frisco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var player2ScoreLabel: UILabel!
    
    @IBOutlet weak var player1ScoreLabel: UILabel!
    
    @IBOutlet weak var rollPointsLabel: UILabel!
    
    @IBOutlet weak var playerPlayingLabel: UILabel!
    
    @IBOutlet weak var alternatePlayersButton: UISegmentedControl!
    @IBOutlet weak var numberRolledLabel: UILabel!
    
    @IBOutlet weak var rollDiceButton: UIButton!
    
    var player1Score = 0
    var player2Score = 0
    var playerRollPoints = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollDiceButtonClicked(_ sender: Any) {
        let numberRolled = Int.random(in: 1...6)
        numberRolledLabel.text = "Player rolled a \(numberRolled)"
        if alternatePlayersButton.selectedSegmentIndex == 0{
            if numberRolled == 1{
                playerRollPoints = 0
                rollPointsLabel.text = "\(playerRollPoints)"
            }
            else{
                playerRollPoints = playerRollPoints + numberRolled
                rollPointsLabel.text = "\(playerRollPoints)"
            }
            player1Score = player1Score + playerRollPoints
            playerRollPoints = 0
            player1ScoreLabel.text = "\(player1Score)"
            
        }
        if alternatePlayersButton.selectedSegmentIndex == 1{
            if numberRolled == 1{
                playerRollPoints = 0
                rollPointsLabel.text = "\(playerRollPoints)"
            }
            else{
                playerRollPoints = playerRollPoints + numberRolled
                rollPointsLabel.text = "\(playerRollPoints)"
            }
            player2Score = player2Score + numberRolled
            playerRollPoints = 0
            player2ScoreLabel.text = "\(player2Score)"
            
            
        }
    }
    
    @IBAction func alternatePlayersButtonClicked(_ sender: Any) {
        if alternatePlayersButton.selectedSegmentIndex == 0{
            playerPlayingLabel.text = "Player 1 turn"
            
        }
        if alternatePlayersButton.selectedSegmentIndex == 1{
            playerPlayingLabel.text = "Player 2 turn"
            
        }
            
        }
    }



