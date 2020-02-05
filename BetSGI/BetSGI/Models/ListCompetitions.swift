//
//  ListCompetitions.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListCompetitions: CustomStringConvertible {
    var count: Int
    var filters: Filter
    var competitions: [Competitions]
    
    init(count: Int, filters: Filter, competitions: [Competitions]){
        self.count = count
        self.filters = filters
        self.competitions = competitions
    }
    
    var description: String {
        return "{\(self.count) \(self.filters) \(self.competitions)}"
    }
    
}
