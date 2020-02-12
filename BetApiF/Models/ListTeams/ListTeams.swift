//
//  ListTeams.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListTeams: CustomStringConvertible {
    var count: Int
    var filters: Filter
    var competition: Competition
    var season: Season
    var teams: [Team]
    
    init(count: Int, filters: Filter, competition: Competition, season: Season, teams: [Team] ){
        self.count = count
        self.filters = filters
        self.competition = competition
        self.season = season
        self.teams = teams
    }
    
    var description: String {
        return "{\(self.count) \(self.filters) \(self.competition) \(self.season) \(self.teams)}"
    }
    
}
