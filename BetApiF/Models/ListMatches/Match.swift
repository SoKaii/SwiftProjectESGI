//
//  Match.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Match: CustomStringConvertible {
    var id: Int
    var season: Season
    var utcDate: String
    var status: String
    var matchday: Int
    var stage: String
    var group: String
    var lastUpdated: String
    var score: Score
    var homeTeam: Team
    var awayTeam: Team
    var referees: Referee
    
    init(id: Int, season: Season, utcDate: String, status: String, matchday: Int, stage: String, group: String, lastUpdated: String, score: Score, homeTeam: Team, awayTeam: Team, referees: Referee) {
        self.id = id
        self.season = season
        self.utcDate = utcDate
        self.status = status
        self.matchday = matchday
        self.stage = stage
        self.group = group
        self.lastUpdated = lastUpdated
        self.score = score
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        self.referees = referees
    }
    
    var description: String {
        return "{\(self.id) \(self.season) \(self.utcDate) \(self.status) \(self.matchday) \(self.stage) \(self.group) \(self.lastUpdated) \(self.score) \(self.homeTeam) \(self.awayTeam) \(self.referees)}"
    }
}
