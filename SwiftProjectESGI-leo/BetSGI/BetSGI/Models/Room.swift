//
//  Room.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 02/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation

class Room {
    var id: String
    var name: String
    let privacy: Int
    
    init(id: String, name: String, privacy: Int) {
        self.id = id
        self.name = name
        self.privacy = privacy
    }
}
