//
//  ScoreFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ScoreFactory {
    
    static func scoreFrom(dictionary: [String: Any]) -> Score? {
        guard let w = dictionary["winner"] as? String,
              let d = dictionary["duration"] as? String,
              let ft = dictionary["fullTime"] as? Point,
              let ht = dictionary["halfTime"] as? Point,
              let et = dictionary["extraTime"] as? Point,
              let p = dictionary["penalties"] as? Point else {
                return nil
        }
        return Score(winner: w, duration: d, fullTime: ft, halfTime: ht, extraTime: et, penalties: p)
    }
}
