//
//  ListCompetitionsFactory.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListCompetitionsFactory {
    
    static func listcompetitionsFrom(dictionary: [String: Any]) -> ListCompetitions? {
        guard let c = dictionary["count"] as? Int,
              let f = dictionary["filters"] as? Filter,
              let co = dictionary["competitions"] as? [Competitions] else {
                return nil
        }
        return ListCompetitions(count: c, filters: f, competitions: co)
    }
    
}
