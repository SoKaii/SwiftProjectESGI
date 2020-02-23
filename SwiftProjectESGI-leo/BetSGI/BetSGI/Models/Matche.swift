//
//  Match.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 28/01/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation

class Matche {
    let id: String
    let date: Date
    var status: String
    var lastUpdate: Date
    let home_team_id: String
    let away_team_id: String
    let winner: String?
    var score_home_team: Int
    var score_away_team: Int
    
    init(id: String, date: Date, status: String, lastUpdate: Date, home_team_id: String,
         away_team_id: String, score_home_team: Int, score_away_team: Int) {
        self.id = id
        self.date = date
        self.status = status
        self.lastUpdate = lastUpdate
        self.home_team_id = home_team_id
        self.away_team_id = away_team_id
        self.score_home_team = score_home_team
        self.score_away_team = score_away_team
        self.winner = nil
    }
}
