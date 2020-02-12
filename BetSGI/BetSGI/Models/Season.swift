//
//  Season.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Season: CustomStringConvertible {
    var id: Int
    var startDate: Date
    var endDate: Date
    var currentMatchday: Int
    var winner: Team
    
    init(id: Int, startDate: Date, endDate: Date, currentMatchday: Int, winner: Team) {
        self.id = id
        self.startDate = startDate
        self.endDate = endDate
        self.currentMatchday = currentMatchday
        self.winner = winner
    }
    
    var description: String {
        return "{\(self.id) \(self.startDate) \(self.endDate) \(self.currentMatchday) \(self.winner)}"
    }
}
