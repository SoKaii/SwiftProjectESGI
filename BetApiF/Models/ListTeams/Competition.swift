//
//  Competition.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Competition: CustomStringConvertible {
    var id: Int
    var area: Area
    var name: String
    var code: String
    var plan: String
    var lastUpdated: Date
    
    init(id: Int, area: Area, name: String, code: String, plan: String, lastUpdated: Date){
        self.id = id
        self.area = area
        self.name = name
        self.code = code
        self.plan = plan
        self.lastUpdated = lastUpdated
    }
    
    var description: String {
        return "{\(self.id) \(self.area) \(self.name) \(self.code) \(self.plan) \(self.lastUpdated)}"
    }
    
}
