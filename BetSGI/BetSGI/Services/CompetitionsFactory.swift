//
//  CompetitionsFactory.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class CompetitionsFactory {
    
    static func competitionsFrom(dictionary: [String: Any]) -> Competitions? {
        guard let i = dictionary["id"] as? Int,
              let a = dictionary["area"] as? Area,
              let n = dictionary["name"] as? String,
              let c = dictionary["code"] as? String,
              let eu = dictionary["emblemUrl"] as? String,
              let p = dictionary["plan"] as? String,
              let cs = dictionary["currentSeason"] as? Season,
              let noas = dictionary["numberOfAvailableSeasons"] as? Int,
              let lu = dictionary["lastUpdated"] as? Date else {
                return nil
        }
        return Competitions(id: i, area: a, name: n, code: c, emblemUrl: eu, plan: p, currentSeason: cs, numberOfAvailableSeasons: noas, lastUpdated: lu)
    }
    
}
