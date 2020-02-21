//
//  Team.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Team {
    var id: Int
    var name: String
    var country: String
    var tla: String
    var last_update: String
    
    init(id: Int, name: String, country: String, tla: String, last_update: String) {
        self.id = id
        self.name = name
        self.country = country
        self.tla = tla
        self.last_update = last_update
    }
}
