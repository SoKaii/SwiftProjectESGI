//
//  Competition.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Competitions: CustomStringConvertible {
    var id: Int
    var area: Area
    var name: String
    var code: String
    var emblemUrl: String
    var plan: String
    var currentSeason: Season
    var numberOfAvailableSeasons: Int
    var lastUpdated: Date
    
    init(id: Int, area: Area, name: String, code: String, emblemUrl: String, plan: String, currentSeason: Season, numberOfAvailableSeasons: Int, lastUpdated: Date){
        self.id = id
        self.area = area
        self.name = name
        self.code = code
        self.emblemUrl = emblemUrl
        self.plan = plan
        self.currentSeason = currentSeason
        self.numberOfAvailableSeasons = numberOfAvailableSeasons
        self.lastUpdated = lastUpdated
    }
    
    var description: String {
        return "{\(self.id) \(self.area) \(self.name) \(self.code) \(self.emblemUrl) \(self.plan) \(self.currentSeason) \(self.numberOfAvailableSeasons) \(self.lastUpdated)}"
    }
    
}
