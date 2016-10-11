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
    @IBOutlet weak var Button0: UIButton!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    @IBOutlet weak var Button10: UIButton!
    @IBOutlet weak var Button11: UIButton!
    @IBOutlet weak var Button12: UIButton!
    @IBOutlet weak var Button13: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var tappedScore = 0
    var game: KigiGame
    
    
    

    
    @IBAction func scoreTap(_ sender: UITapGestureRecognizer) {
        let button = sender.view! as! UIButton
        
        tappedScore = Int((button.titleLabel?.text)!)!
        game.turn(tappedScore)
       UILabel(named:"player \(game.playerTurn) Label") = game.players[game.playerTurn-1].name
        UILabel(named:"player \(game.playerTurn) Score") = game.players[game.playerTurn-1].score


    }
    

}
