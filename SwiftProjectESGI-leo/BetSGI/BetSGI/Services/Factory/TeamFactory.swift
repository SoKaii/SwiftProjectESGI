//
//  TeamFactory.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class TeamFactory {
    
    static func teamFrom(dictionary: [String: Any]) -> Team? {
        guard let i = dictionary["id"] as? Int,
              let n = dictionary["name"] as? String,
              let c = dictionary["country"] as? String,
              let t = dictionary["tla"] as? String,
              let lu = dictionary["last_update"] as? String else {
                return nil
        }
        return Team(id: i, name: n, country: c, tla: t, last_update: lu)
    }
}
