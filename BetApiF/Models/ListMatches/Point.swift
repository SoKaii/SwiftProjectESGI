//
//  Point.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Point: CustomStringConvertible {
    var homeTeam: Int
    var awayTeam: Int
    
    init(homeTeam: Int, awayTeam: Int) {
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
    }
    
    var description: String {
        return "{\(self.homeTeam) \(self.awayTeam)}"
    }
}
