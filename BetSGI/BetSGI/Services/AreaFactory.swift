//
//  AreaFactory.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class AreaFactory {
    
    static func areaFrom(dictionary: [String: Any]) -> Area? {
        guard let i = dictionary["id"] as? Int,
              let n = dictionary["name"] as? String else {
                return nil
        }
        return Area(id: i, name: n)
    }
}
