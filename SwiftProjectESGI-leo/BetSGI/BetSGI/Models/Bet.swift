//
//  Bet.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation

class Bet {
    var id: String
    var user_id: String
    var room_id: String
    var matche_id: String
    
    init(id: String, user_id: String, room_id: String, matche_id: String) {
        self.id = id
        self.user_id = user_id
        self.room_id = room_id
        self.matche_id = matche_id
       
    }
}
