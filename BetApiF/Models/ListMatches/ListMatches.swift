//
//  ListMatches.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListMatches: CustomStringConvertible {
    var count: Int
    var filters: Filter
    var competition: Competition
    var matches: [Match]
    
    init(count: Int, filters: Filter, competition: Competition, matches: [Match]){
        self.count = count
        self.filters = filters
        self.competition = competition
        self.matches = matches
    }
    
    var description: String {
        return "{\(self.count) \(self.filters) \(self.competition) \(self.matches)}"
    }
    
}
