//
//  Filter.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Filter: CustomStringConvertible {
    var id: Int
    var matchday: Int
    var season: String
    var head2head: Int
    var venue: String
    var league: String
    var timeFrame: String
    var timeFrameStart: Date
    var timeFrameEnd: Date
    
    init(id: Int, matchday: Int, season: String, head2head: Int, venue: String, league: String, timeFrame: String, timeFrameStart: Date, timeFrameEnd: Date) {
        self.id = id
        self.matchday = matchday
        self.season = season
        self.head2head = head2head
        self.venue = venue
        self.league = league
        self.timeFrame = timeFrame
        self.timeFrameStart = timeFrameStart
        self.timeFrameEnd = timeFrameEnd
    }
    
    var description: String {
        return "{\(self.id) \(self.matchday) \(self.season) \(self.head2head) \(self.venue) \(self.league) \(self.timeFrame) \(self.timeFrameStart) \(self.timeFrameEnd)}"
    }
}
