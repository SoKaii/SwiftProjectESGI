//
//  SeasonFactory.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class SeasonFactory {
    
    static func seasonFrom(dictionary: [String: Any]) -> Season? {
        guard let i = dictionary["id"] as? Int,
              let sd = dictionary["startDate"] as? Date,
              let ed = dictionary["endDate"] as? Date,
              let cmd = dictionary["currentMatchday"] as? Int,
              let w = dictionary["winner"] as? Team else {
                return nil
        }
        return Season(id: i, startDate: sd, endDate: ed, currentMatchday: cmd, winner: w)
    }
}
