//
//  Team.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Team: CustomStringConvertible {
    var id: Int
    var name: String
    var shortName: String
    var tla: String
    var crestUrl: String
    
    init(id: Int, name: String, shortName: String, tla: String, crestUrl: String) {
        self.id = id
        self.name = name
        self.shortName = shortName
        self.tla = tla
        self.crestUrl = crestUrl
    }
    
    var description: String {
        return "{\(self.id) \(self.name) \(self.shortName) \(self.tla) \(self.crestUrl)}"
    }
}
