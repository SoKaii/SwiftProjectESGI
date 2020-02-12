//
//  CompetitionFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class CompetitionFactory {
    
    static func competitionFrom(dictionary: [String: Any]) -> Competition? {
        guard let i = dictionary["id"] as? Int,
              let a = dictionary["area"] as? Area,
              let n = dictionary["name"] as? String,
              let c = dictionary["code"] as? String,
              let p = dictionary["plan"] as? String,
              let lu = dictionary["lastUpdated"] as? Date else {
                return nil
        }
        return Competition(id: i, area: a, name: n, code: c, plan: p, lastUpdated: lu)
    }
}
