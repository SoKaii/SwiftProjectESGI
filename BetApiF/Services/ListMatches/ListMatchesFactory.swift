//
//  ListMatchesFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListMatchesFactory {
    
    static func listmatchesFrom(dictionary: [String: Any]) -> ListMatches? {
        guard let c = dictionary["count"] as? Int,
              let f = dictionary["filters"] as? Filter,
              let co = dictionary["competition"] as? Competition,
              let m = dictionary["matches"] as? [Match] else {
                return nil
        }
        return ListMatches(count: c, filters: f, competition: co, matches: m)
    }
}
