//
//  Match.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 28/01/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation

class Match: CustomStringConvertible {
    var date: Date
    var teamOne: Team
    var teamTwo: Team
    
    
    var description: String {
        return "{\(self.date) \(self.teamOne.description) \(self.teamTwo.description)}"
    }
    
    init(date: Date, teamOne: Team, teamTwo: Team) {
        self.date = date
        self.teamOne = teamOne
        self.teamTwo = teamTwo
    }
}
