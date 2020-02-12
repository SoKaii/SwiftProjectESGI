//
//  RefereeFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class RefereeFactory {
    
    static func refereeFrom(dictionary: [String: Any]) -> Referee? {
        guard let i = dictionary["id"] as? Int,
              let n = dictionary["name"] as? String,
              let nt = dictionary["nationality"] as? String else {
                return nil
        }
        return Referee(id: i, name: n, nationality: nt)
    }
}
