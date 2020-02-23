//
//  MatcheFactory.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation

class MatcheFactory {
    
    static func matcheFrom(dictionary: [String: Any]) -> Matche? {
        guard let i = dictionary["id"] as? String,
              let d = dictionary["date"] as? Date,
              let s = dictionary["status"] as? String,
              let lu = dictionary["last_update"] as? Date,
              let hti = dictionary["home_team_id"] as? String,
              let ati = dictionary["away_team_id"] as? String,
              let sht = dictionary["score_home_team"] as? Int,
              let sat = dictionary["score_away_team"] as? Int
        else {
                return nil
        }
        return Matche(id: i, date: d, status: s, lastUpdate: lu, home_team_id: hti, away_team_id: ati, score_home_team: sht, score_away_team: sat)
    }
}
