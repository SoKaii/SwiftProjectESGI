//
//  Team.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Team: CustomStringConvertible {
    var id: Int
    var area: Area
    var name: String
    var shortName: String
    var tla: String
    var crestUrl: String
    var address: String
    var phone: String
    var website: String
    var email: String
    var founded: Int
    var clubColors: String
    var venue: String
    var lastUpdated: String
    
    init(id: Int, area: Area, name: String, shortName: String, tla: String, crestUrl: String, address: String, phone: String, website: String, email: String, founded: Int, clubColors: String, venue: String, lastUpdated: String) {
        self.id = id
        self.area = area
        self.name = name
        self.shortName = shortName
        self.tla = tla
        self.crestUrl = crestUrl
        self.address = address
        self.phone = phone
        self.website = website
        self.email = email
        self.founded = founded
        self.clubColors = clubColors
        self.venue = venue
        self.lastUpdated = lastUpdated
    }
    
    var description: String {
        return "{\(self.id) \(self.area) \(self.name) \(self.shortName) \(self.tla) \(self.crestUrl) \(self.address) \(self.phone) \(self.website) \(self.email) \(self.founded) \(self.clubColors) \(self.venue) \(self.lastUpdated)}"
    }
}
