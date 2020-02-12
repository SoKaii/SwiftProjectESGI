//
//  TeamFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class TeamFactory {
    
    static func teamFrom(dictionary: [String: Any]) -> Team? {
        guard let i = dictionary["id"] as? Int,
              let a = dictionary["area"] as? Area,
              let n = dictionary["name"] as? String,
              let sn = dictionary["shortName"] as? String,
              let t = dictionary["tla"] as? String,
              let cu = dictionary["crestUrl"] as? String,
              let ad = dictionary["address"] as? String,
              let p = dictionary["phone"] as? String,
              let w = dictionary["website"] as? String,
              let e = dictionary["email"] as? String,
              let f = dictionary["founded"] as? Int,
              let cc = dictionary["clubColors"] as? String,
              let v = dictionary["venue"] as? String,
              let lu = dictionary["lastUpdated"] as? String else {
                return nil
        }
        return Team(id: i, area: a, name: n, shortName: sn, tla: t, crestUrl: cu, address: ad, phone: p, website: w, email: e, founded: f, clubColors: cc, venue: v, lastUpdated: lu)
    }
}
