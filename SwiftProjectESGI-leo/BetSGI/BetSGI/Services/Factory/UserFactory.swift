//
//  MatcheFactory.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import Foundation

class UserFactory {
    
    static func userFrom(dictionary: [String: Any]) -> User? {
        guard let i = dictionary["id"] as? String,
              let fn = dictionary["first_name"] as? String,
              let ln = dictionary["last_name"] as? String,
              let p = dictionary["password"] as? String,
              let m = dictionary["mail"] as? String,
              let w = dictionary["win"] as? Int,
              let l = dictionary["loss"] as? Int
        else {
                return nil
        }
        return User(id: i, first_name: fn, last_name: ln, password: p, mail: m, win: w, loss: l)
    }
}
