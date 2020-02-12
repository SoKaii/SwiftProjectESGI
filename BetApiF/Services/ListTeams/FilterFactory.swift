//
//  FilterFactory.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class FilterFactory {
    
    static func filterFrom(dictionary: [String: Any]) -> Filter? {
        guard let i = dictionary["id"] as? Int,
              let m = dictionary["matchday"] as? Int,
              let s = dictionary["season"] as? String,
              let hh = dictionary["head2head"] as? Int,
              let v = dictionary["venue"] as? String,
              let l = dictionary["league"] as? String,
              let tf = dictionary["timeFrame"] as? String,
              let tfs = dictionary["timeFrameStart"] as? Date,
              let tfe = dictionary["timeFrameEnd"] as? Date else {
                return nil
        }
        return Filter(id: i, matchday: m, season: s, head2head: hh, venue: v, league: l, timeFrame: tf, timeFrameStart: tfs, timeFrameEnd: tfe)
    }
    
}
