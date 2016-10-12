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
    @IBOutlet weak var player1Score: UILabel!
    @IBOutlet weak var player2Score: UILabel!
    @IBOutlet weak var player3Score: UILabel!
    @IBOutlet weak var player4Score: UILabel!
    @IBOutlet weak var Player5Score: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        game = KigiGame(players)
        print(players)
        player1Label.text = players[0].name
        player2Label.text = players[1].name
        player3Label.text = players[2].name
        player4Label.text = players[3].name
        player5Label.text = players[4].name
        
        scores = [player1Score, player2Score, player3Score, player4Score, Player5Score]
    }
    var tappedScore = 0
    var players: [Player] = []
    var game: KigiGame? = nil
    var scores: [UILabel] = []
    var numberOfPlayers = 0
    
    @IBAction func pointsScored(_ sender: UIButton) {
        
    }
    

}
