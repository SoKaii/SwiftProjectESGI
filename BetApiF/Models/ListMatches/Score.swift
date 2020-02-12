//
//  Score.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Score: CustomStringConvertible {
    var winner: String
    var duration: String
    var fullTime: Point
    var halfTime: Point
    var extraTime: Point
    var penalties: Point
    
    init(winner: String, duration: String, fullTime: Point, halfTime: Point, extraTime: Point, penalties: Point) {
        self.winner = winner
        self.duration = duration
        self.fullTime = fullTime
        self.halfTime = halfTime
        self.extraTime = extraTime
        self.penalties = penalties
    }
    
    var description: String {
        return "{\(self.winner) \(self.duration) \(self.fullTime) \(self.halfTime) \(self.extraTime) \(self.penalties)}"
    }
}
