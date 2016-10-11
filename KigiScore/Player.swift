//
//  Player.swift
//  KigiScore
//
//  Created by Alexis Padula on 10/11/16.
//  Copyright © 2016 Alexis Padula. All rights reserved.
//

import Foundation
import UIKit

class Player{
    var name: String
    var score: Int
    var isTurn: Bool
    
    init(_ name: String, _ score:Int){
        self.name = name
        self.score = score
        isTurn = false
    }
    
}
