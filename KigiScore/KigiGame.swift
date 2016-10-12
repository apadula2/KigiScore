//
//  KigiGame.swift
//  KigiScore
//
//  Created by Alexis Padula on 10/11/16.
//  Copyright © 2016 Alexis Padula. All rights reserved.
//

import Foundation
import UIKit


class KigiGame{
    var playerTurn: Int
    var players: [Player]
    var numberOfPlayers: Int
    
    init(_ players:[Player]){
        playerTurn=0
        self.players = players
        numberOfPlayers = players.count
        
    }
    
    func turn(_ turnScore:Int){
        players[playerTurn].score = players[playerTurn].score + turnScore
        
        if playerTurn < numberOfPlayers{
            playerTurn+=1
        }
        else{
            playerTurn=0
        }
        
        
    }
    
    
}
