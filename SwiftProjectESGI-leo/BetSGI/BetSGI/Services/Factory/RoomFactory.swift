//
//  MatcheFactory.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation

class RoomFactory {
    
    static func roomFrom(dictionary: [String: Any]) -> Room? {
        guard let i = dictionary["id"] as? String,
              let n = dictionary["name"] as? String,
              let p = dictionary["privacy"] as? Int
            
        else {
                return nil
        }
        return Room(id: i, name: n, privacy: p)
    }
}
