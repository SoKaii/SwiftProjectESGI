//
//  ListTeamsFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListTeamsFactory {
    
    static func listteamsFrom(dictionary: [String: Any]) -> ListTeams? {
        guard let c = dictionary["count"] as? Int,
              let f = dictionary["filters"] as? Filter,
              let co = dictionary["competition"] as? Competition,
              let s = dictionary["season"] as? Season,
              let t = dictionary["teams"] as? [Team] else {
                return nil
        }
        return ListTeams(count: c, filters: f, competition: co, season: s, teams: t)
    }
    
}
