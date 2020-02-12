//
//  PlayerFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class PlayerFactory {
    
    static func playerFrom(dictionary: [String: Any]) -> Player? {
        guard let i = dictionary["id"] as? Int,
              let n = dictionary["name"] as? String,
              let p = dictionary["position"] as? String,
              let d = dictionary["dateOfBirth"] as? String,
              let c = dictionary["countryOfBirth"] as? String,
              let nt = dictionary["nationality"] as? String,
              let s = dictionary["shirtNumber"] as? Int,
            let r = dictionary["role"] as? String else {
                return nil
        }
        return Player(id: i, name: n, position: p, dateOfBirth: d, countryOfBirth: c, nationality: nt, shirtNumber: s, role: r)
    }
}
