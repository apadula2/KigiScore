//
//  ScoreBoardViewController.swift
//  KigiScore
//
//  Created by Alexis Padula on 10/11/16.
//  Copyright © 2016 Alexis Padula. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController {
    
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    @IBOutlet weak var player3Label: UILabel!
    @IBOutlet weak var player4Label: UILabel!
    @IBOutlet weak var player5Label: UILabel!
    @IBOutlet weak var player1Score: UITextField!
    @IBOutlet weak var player2Score: UITextField!
    @IBOutlet weak var player3Score: UITextField!
    @IBOutlet weak var player5Score: UITextField!
    @IBOutlet weak var player4Score: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //a game is made
        game = KigiGame(playersInGame)
        
        //names are put into labels even if empty
        player1Label.text = players[0].name
        player2Label.text = players[1].name
        player3Label.text = players[2].name
        player4Label.text = players[3].name
        player5Label.text = players[4].name
        
        scores = [player1Score, player2Score, player3Score, player4Score, player5Score]
        
        
        // scores are all set to zero
        for i in  0..<playersInGame.count {
            scores[i].text = String(playersInGame[i].score)
        }
    }
    
    var tappedScore = 0
    var playersTurn = 0
    var players: [Player] = []
    var game: KigiGame? = nil
    var scores: [UITextField] = []
    var playersInGame:[Player] = []
    
    
    // when the button is clicked, the score updates and turn updates for next player
    @IBAction func pointsScored(_ sender: UIButton) {
        let tappedScore = Int((sender.titleLabel?.text)!)
        game?.turn(tappedScore!)
        scores[playersTurn].text = String(playersInGame[playersTurn].score)
        if(playersTurn < playersInGame.count-1){
            playersTurn+=1
        }
        else{
            playersTurn=0
        }
        
        
        
        
        
        
        
    }
    
    
}
