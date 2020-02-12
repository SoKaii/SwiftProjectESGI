//
//  PointFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class PointFactory {
    
    static func PointFrom(dictionary: [String: Any]) -> Point? {
        guard let ht = dictionary["homeTeam"] as? Int,
              let at = dictionary["awayTeam"] as? Int else {
                return nil
        }
        return Point(homeTeam: ht, awayTeam: at)
    }
}
