//
//  Room.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 02/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation

class Room: CustomStringConvertible {
    var name: String
    var lastMatch: Match
    var playerCount: Int
    var description: String {return "\(name) \(lastMatch) \(playerCount)"}
    
    init(name: String, lastMatch: Match, playerCount: Int) {
        self.name = name
        self.lastMatch = lastMatch
        self.playerCount = playerCount
    }
}
