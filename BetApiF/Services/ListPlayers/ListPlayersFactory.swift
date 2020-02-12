//
//  ListPlayersFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListPlayersFactory {
    
    static func listplayersFrom(dictionary: [String: Any]) -> ListPlayers? {
        guard let i = dictionary["id"] as? Int,
              let a = dictionary["area"] as? Area,
              let ac = dictionary["activeCompetitions"] as? Competition,
              let n = dictionary["name"] as? String,
              let sn = dictionary["shortName"] as? String,
              let tla = dictionary["tla"] as? String,
              let cu = dictionary["crestUrl"] as? String,
              let ad = dictionary["address"] as? String,
              let p = dictionary["phone"] as? String,
              let w = dictionary["website"] as? String,
              let e = dictionary["email"] as? String,
              let f = dictionary["founded"] as? Int,
              let cc = dictionary["clubColors"] as? String,
              let v = dictionary["venue"] as? String,
              let s = dictionary["squad"] as? [Player],
              let lu = dictionary["lastUpdated"] as? String else {
                return nil
        }
        return ListPlayers(id: i, area: a, activeCompetitions: ac, name: n, shortName: sn, tla: tla, crestUrl: cu, address: ad, phone: p, website: w, email: e, founded: f, clubColors: cc, venue: v, squad: s, lastUpdated: lu)
    }
}
