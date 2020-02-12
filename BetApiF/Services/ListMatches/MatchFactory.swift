//
//  MatchFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class MatchFactory {
    
    static func matchFrom(dictionary: [String: Any]) -> Match? {
        guard let i = dictionary["id"] as? Int,
              let s = dictionary["season"] as? Season,
              let utc = dictionary["utcDate"] as? String,
              let st = dictionary["status"] as? String,
              let m = dictionary["matchday"] as? Int,
              let sta = dictionary["stage"] as? String,
              let g = dictionary["group"] as? String,
              let lu = dictionary["lastUpdated"] as? String,
              let sc = dictionary["score"] as? Score,
              let ht = dictionary["homeTeam"] as? Team,
              let at = dictionary["awayTeam"] as? Team,
              let r = dictionary["referees"] as? Referee else {
                return nil
        }
        return Match(id: i, season: s, utcDate: utc, status: st, matchday: m, stage: sta, group: g, lastUpdated: lu, score: sc, homeTeam: ht, awayTeam: at, referees: r)
    }
}
