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
              let sn = dictionary["shortName"] as? String,
              let t = dictionary["tla"] as? String,
              let cu = dictionary["crestUrl"] as? String else {
                return nil
        }
        return Team(id: i, name: n, shortName: sn, tla: t, crestUrl: cu)
    }
}
