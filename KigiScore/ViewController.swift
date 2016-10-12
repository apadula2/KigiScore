//
//  ViewController.swift
//  KigiScore
//
//  Created by Alexis Padula on 10/9/16.
//  Copyright © 2016 Alexis Padula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var player1: UITextField!
    @IBOutlet weak var player2: UITextField!
    @IBOutlet weak var player3: UITextField!
    @IBOutlet weak var player4: UITextField!
    @IBOutlet weak var player5: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    var players:[Player] = []
    var playersInGame:[Player] = []
    
    //on click all names are put into an array as players with a score of 0 even if empty
    //All active players are put into a seperate array
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let possiblePlayers = [player1,player2,player3,player4, player5]
        for possiblePlayer in possiblePlayers{
            if (possiblePlayer?.hasText)!{
                let player = Player((possiblePlayer?.text)!, 0)
                playersInGame.append(player)
                players.append(player)
            }
            if(!(possiblePlayer?.hasText)!){
                let player = Player("",0)
                players.append(player)
            }
        }
        // both arrays are passed to the second view
        if segue.identifier == "toScoreBoard"{
            let scoreBoardViewController = segue.destination as! ScoreBoardViewController
            scoreBoardViewController.players = players
            scoreBoardViewController.playersInGame = playersInGame
            print(playersInGame.count)
        }
    }
}


