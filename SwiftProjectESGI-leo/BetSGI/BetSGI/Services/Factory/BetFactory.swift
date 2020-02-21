//
//  MatcheFactory.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation

class BetFactory {
    
    static func betFrom(dictionary: [String: Any]) -> Bet? {
        guard let i = dictionary["id"] as? String,
              let ui = dictionary["user_id"] as? String,
              let ri = dictionary["room_id"] as? String,
              let mi = dictionary["matche_id"] as? String
        else {
                return nil
        }
        return Bet(id: i, user_id: ui, room_id: ri, matche_id: mi)
    }
}
