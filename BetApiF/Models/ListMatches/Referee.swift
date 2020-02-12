//
//  Referee.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Referee: CustomStringConvertible {
    var id: Int
    var name: String
    var nationality: String
    
    init(id: Int, name: String, nationality: String) {
        self.id = id
        self.name = name
        self.nationality = nationality
    }
    
    var description: String {
        return "{\(self.id) \(self.name) \(self.nationality)}"
    }
}
