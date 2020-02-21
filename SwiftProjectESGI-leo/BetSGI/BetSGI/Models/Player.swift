//
//  Player.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation


class Player {
    let id: String
    var team_id: String
    var nationality: String
    var position: String
    let first_name: String
    let last_name: String
    var last_update: Date
    
    init(id: String, team_id: String, nationality: String, position: String, first_name: String, last_name: String, last_update: Date) {
        self.id = id
        self.team_id = team_id
        self.nationality = nationality
        self.position = position
        self.first_name = first_name
        self.last_name = last_name
        self.last_update = last_update
    }
}
