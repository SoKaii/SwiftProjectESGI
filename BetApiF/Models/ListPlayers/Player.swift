//
//  Player.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Player: CustomStringConvertible {
    var id: Int
    var name: String
    var position: String
    var dateOfBirth: String
    var countryOfBirth: String
    var nationality: String
    var shirtNumber: Int
    var role: String
    
    init(id: Int, name: String, position: String, dateOfBirth: String, countryOfBirth: String, nationality: String, shirtNumber: Int, role: String) {
        self.id = id
        self.name = name
        self.position = position
        self.dateOfBirth = dateOfBirth
        self.countryOfBirth = countryOfBirth
        self.nationality = nationality
        self.shirtNumber = shirtNumber
        self.role = role
    }
    
    var description: String {
        return "{\(self.id) \(self.name) \(self.position) \(self.dateOfBirth) \(self.countryOfBirth) \(self.nationality) \(self.shirtNumber) \(self.role)}"
    }
}
