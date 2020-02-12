//
//  ListTeamsebService.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import Foundation

class ListTeamsWebService {
    
    func getListTeams(completion: @escaping ([ListTeams]) -> Void) -> Void {
        guard let listteamsURL = URL(string: "https://api.football-data.org/v2/competitions/2015/teams") else {
            return;
        }
        var rq = URLRequest(url: listteamsURL)
        rq.addValue("aa9d9f3d5e1b48d698cdd42100aebfed", forHTTPHeaderField: "X-Auth-Token")
        let task = URLSession.shared.dataTask(with: rq) { (data, res, err) in
            guard let bytes = data,
                  err == nil,
                let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments) as? [String: Any] else {
                completion([])
                return
            }
            print(json)
            let listteams = json.compactMap { (obj) -> ListTeams? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return ListTeamsFactory.listteamsFrom(dictionary: dict)
            }
            completion(listteams)
        }
        task.resume()
    }
    
}
