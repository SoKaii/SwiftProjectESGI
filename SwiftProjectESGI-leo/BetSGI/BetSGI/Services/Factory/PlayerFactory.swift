//
//  MatcheFactory.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation

class PlayerFactory {
    
    static func playerFrom(dictionary: [String: Any]) -> Player? {
        guard let i = dictionary["id"] as? String,
              let ti = dictionary["team"] as? String,
              let n = dictionary["nationality"] as? String,
              let p = dictionary["position"] as? String,
              let fn = dictionary["firstName"] as? String,
              let ln = dictionary["lastName"] as? String,
              let lu = dictionary["lastUpdate"] as? Date
        else {
                return nil
        }
        return Player(id: i, team_id: ti, nationality: n, position: p, first_name: fn, last_name: ln, last_update: lu)
    }
}
