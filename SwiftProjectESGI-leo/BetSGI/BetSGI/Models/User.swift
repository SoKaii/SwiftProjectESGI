//
//  User.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation


class User {
    let id: String
    let first_name: String
    let last_name: String
    var password: String
    var mail: String
    var win: Int
    var loss: Int
    
    init(id: String, first_name: String, last_name: String, password: String, mail: String, win: Int, loss: Int) {
        self.id = id
        self.first_name = first_name
        self.last_name = last_name
        self.password = password
        self.mail = mail
        self.win = win
        self.loss = loss
    }
}
