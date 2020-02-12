//
//  Area.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class Area: CustomStringConvertible {
    var id: Int
    var name: String
    
    init(id: Int, name: String){
        self.id = id
        self.name = name
    }
    
    var description: String {
        return "{\(self.id) \(self.name)}"
    }
    
}
